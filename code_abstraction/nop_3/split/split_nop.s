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
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0
	je	.label_9
	jmp	.label_8
.label_8:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
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
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20], rsi
	call	gettext
	mov	edx, 2
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	nop	
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 8], eax
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
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
	nop	word ptr [rax + rax]
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
	nop	dword ptr [rax]
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
	nop	word ptr cs:[rax + rax]
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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x20], rax
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_15
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
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
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_11
.label_10:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_13
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
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
	mov	dword ptr [rbp - 8], eax
	call	setlocale
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_12
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.57
	nop	
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x40], eax
.label_12:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.60
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 4], eax
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
	sub	rsp, 0x360
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x17c], 0
	mov	dword ptr [rbp - 0x194], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c4], 0
	mov	qword ptr [rbp - 0x230], 0
	call	getpagesize
	mov	rbp, rbp
	movabs	rsi, 0x7fffffffffffffff
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x250], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x25c], 0
	mov	qword ptr [rbp - 0x190], rsi
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
	mov	qword ptr [rbp - 0x1f8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0x288], rax
	lea	rdi, [rdi]
	call	textdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	call	atexit
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x27c], eax
	call	bad_cast
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.13
	mov	qword ptr [word ptr [infile]],  rax
	mov	rbp, rbp
	call	bad_cast
	mov	rsp, rsp
	mov	qword ptr [word ptr [outbase]],  rax
.label_52:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [optind]],  0
	je	.label_46
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x240], eax
	jmp	.label_53
.label_46:
	mov	eax, 1
	mov	dword ptr [rbp - 0x240], eax
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x240]
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.14
	movabs	rcx, OFFSET FLAT:longopts
	lea	rsi, [rsi]
	xor	esi, esi
	mov	r8d, esi
	mov	dword ptr [rbp - 0x11c], eax
	mov	edi, dword ptr [rbp - 0x194]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x134], eax
	cmp	dword ptr [rbp - 0x134], -1
	jne	.label_72
	jmp	.label_77
.label_72:
	mov	eax, dword ptr [rbp - 0x134]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x100], eax
	mov	dword ptr [rbp - 0x58], ecx
	je	.label_80
	lea	rdi, [rdi]
	jmp	.label_88
.label_88:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x100]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x110], eax
	mov	rbp, rbp
	je	.label_92
	jmp	.label_97
.label_97:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x100]
	add	eax, -0x30
	lea	rdi, [rdi]
	sub	eax, 0xa
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x138], eax
	mov	rbp, rbp
	jb	.label_99
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x100]
	mov	rsp, rsp
	sub	eax, 0x43
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	je	.label_104
	mov	rbp, rbp
	jmp	.label_114
.label_114:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x100]
	nop	
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	je	.label_109
	jmp	.label_112
.label_112:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x100]
	mov	rbp, rbp
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	je	.label_115
	mov	rsp, rsp
	jmp	.label_119
.label_119:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x2cc], eax
	je	.label_57
	jmp	.label_17
.label_17:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	sub	eax, 0x65
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], eax
	nop	
	je	.label_19
	lea	rsi, [rsi]
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x100]
	mov	rsp, rsp
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x23c], eax
	je	.label_26
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x198], eax
	je	.label_33
	mov	rsp, rsp
	jmp	.label_40
.label_40:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x2a4], eax
	je	.label_43
	jmp	.label_48
.label_48:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x2b4], eax
	je	.label_96
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x294], eax
	je	.label_57
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x100]
	mov	rsp, rsp
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x28c], eax
	lea	rdi, [rdi]
	je	.label_63
	mov	rbp, rbp
	jmp	.label_68
.label_68:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x100]
	mov	rsp, rsp
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2b8], eax
	mov	rsp, rsp
	je	.label_36
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_38
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_89
	mov	rsp, rsp
	jmp	.label_93
.label_109:
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rdx, 0x1fffffffffffffff
	movabs	rcx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [suffix_length]],  rax
	mov	rbp, rbp
	jmp	.label_35
.label_89:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	last_component
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_56
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x228], rax
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_56:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [additional_suffix]],  rax
	jmp	.label_35
.label_115:
	cmp	dword ptr [rbp - 0x2c4], 0
	je	.label_27
	mov	rbp, rbp
	jmp	.label_29
.label_29:
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
.label_27:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_0
	nop	
	mov	dword ptr [rbp - 0x2c4], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x208], rax
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
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_35
.label_26:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c4], 0
	lea	rdi, [rdi]
	je	.label_74
	jmp	.label_79
.label_79:
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
.label_74:
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x2c4], 3
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x268], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x268]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_35
.label_104:
	nop	
	cmp	dword ptr [rbp - 0x2c4], 0
	mov	rsp, rsp
	je	.label_107
	mov	rsp, rsp
	jmp	.label_110
.label_110:
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
.label_107:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	dword ptr [rbp - 0x2c4], 2
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
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
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rdi, [rdi]
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_35
.label_33:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c4], 0
	je	.label_41
	lea	rsi, [rsi]
	jmp	.label_45
.label_45:
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
.label_41:
	lea	rsi, [rsi]
	jmp	.label_58
.label_58:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x130], rcx
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x130]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_69
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_58
.label_69:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.20
	mov	eax, 2
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	cmp	eax, 0
	jne	.label_95
	mov	dword ptr [rbp - 0x2c4], 7
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	add	rax, 2
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_65
.label_95:
	movabs	rsi, OFFSET FLAT:.str.21
	mov	eax, 2
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	nop	
	cmp	eax, 0
	jne	.label_106
	nop	
	mov	dword ptr [rbp - 0x2c4], 6
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	add	rax, 2
	nop	
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_98
.label_106:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c4], 5
.label_98:
	jmp	.label_65
.label_65:
	mov	esi, 0x2f
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	strchr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rsp, rsp
	cmp	rax, 0
	nop	
	je	.label_120
	lea	rdi, [rbp - 0x250]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	call	parse_chunk
	mov	rsp, rsp
	jmp	.label_39
.label_120:
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
.label_39:
	jmp	.label_35
.label_96:
	nop	
	mov	byte ptr [byte ptr [unbuffered]],  1
	jmp	.label_35
.label_43:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x11d], cl
	cmp	byte ptr [rbp - 0x11d], 0
	jne	.label_49
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_49:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_66
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
	jne	.label_78
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11d], 0
	mov	rsp, rsp
	jmp	.label_82
.label_78:
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x2a0], rax
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_82:
	lea	rsi, [rsi]
	jmp	.label_66
.label_66:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	jg	.label_84
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 0x11d]
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	je	.label_84
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
.label_84:
	movsx	eax, byte ptr [rbp - 0x11d]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [eolchar]],  eax
	lea	rsi, [rsi]
	jmp	.label_35
.label_99:
	cmp	dword ptr [rbp - 0x2c4], 0
	lea	rdi, [rdi]
	jne	.label_118
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c4], 4
	mov	qword ptr [rbp - 0x38], 0
.label_118:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c4], 0
	lea	rsi, [rsi]
	je	.label_16
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c4], 4
	mov	rsp, rsp
	je	.label_16
	jmp	.label_24
.label_24:
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
.label_16:
	cmp	dword ptr [rbp - 0x25c], 0
	mov	rsp, rsp
	je	.label_42
	mov	eax, dword ptr [rbp - 0x25c]
	cmp	eax, dword ptr [rbp - 0x11c]
	nop	
	je	.label_42
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_42:
	movabs	rax, 0x1999999999999999
	nop	
	mov	ecx, dword ptr [rbp - 0x11c]
	mov	dword ptr [rbp - 0x25c], ecx
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jb	.label_51
	imul	rax, qword ptr [rbp - 0x38], 0xa
	nop	
	mov	ecx, dword ptr [rbp - 0x134]
	mov	rsp, rsp
	sub	ecx, 0x30
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jae	.label_60
.label_51:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x19c], eax
	jmp	.label_70
.label_60:
	mov	eax, 1
	nop	
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	edx, dword ptr [rbp - 0x134]
	nop	
	sub	edx, 0x30
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	add	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x19c], eax
.label_70:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x19c]
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_86
	movabs	rdi, OFFSET FLAT:.str.27
	call	gettext
	lea	rsi, [rbp - 0x170]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x188], rax
	nop	
	call	umaxtostr
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x134]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_86:
	jmp	.label_35
.label_57:
	cmp	dword ptr [rbp - 0x134], 0x64
	jne	.label_101
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
	mov	rbp, rbp
	jmp	.label_108
.label_101:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.29
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
.label_108:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_94
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strlen
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [suffix_alphabet]]
	mov	qword ptr [rbp - 0x108], rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x108]
	cmp	rsi, rax
	mov	rbp, rbp
	je	.label_20
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x134], 0x64
	lea	rsi, [rsi]
	jne	.label_22
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x218], rax
	jmp	.label_31
.label_22:
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x218], rax
.label_31:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2b0], rax
	call	quote
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x2b0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_20:
	mov	rsp, rsp
	jmp	.label_61
.label_61:
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
	mov	byte ptr [rbp - 0x209], cl
	lea	rsi, [rsi]
	jne	.label_64
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	dl
	mov	byte ptr [rbp - 0x209], dl
.label_64:
	mov	al, byte ptr [rbp - 0x209]
	test	al, 1
	nop	
	jne	.label_83
	jmp	.label_85
.label_83:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_61
.label_85:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [numeric_suffix_start]],  rax
	nop	
	jmp	.label_94
.label_94:
	jmp	.label_35
.label_19:
	nop	
	mov	byte ptr [byte ptr [elide_empty_files]],  1
	jmp	.label_35
.label_36:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [filter_command]],  rax
	mov	rsp, rsp
	jmp	.label_35
.label_38:
	movabs	rdi, OFFSET FLAT:.str.32
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [optarg]]
	sub	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x248], rcx
	lea	rdi, [rdi]
	call	gettext
	mov	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	movabs	rcx, OFFSET FLAT:main.multipliers
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	r8, rax
	lea	rsi, [rsi]
	call	xdectoumax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x230], rax
	jmp	.label_35
.label_63:
	mov	byte ptr [byte ptr [verbose]],  1
	nop	
	jmp	.label_35
.label_92:
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_80:
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
	mov	qword ptr [rbp - 0x2c0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_93:
	mov	edi, 1
	call	usage
.label_35:
	lea	rsi, [rsi]
	jmp	.label_52
.label_77:
	cmp	qword ptr [rbp - 0x250], 0
	mov	rsp, rsp
	je	.label_54
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [filter_command]],  0
	je	.label_54
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
.label_54:
	cmp	dword ptr [rbp - 0x2c4], 0
	nop	
	jne	.label_76
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c4], 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0x3e8
.label_76:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_87
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x278], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x278]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_87:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [eolchar]],  0
	lea	rsi, [rsi]
	jge	.label_111
	mov	dword ptr [dword ptr [eolchar]],  0xa
.label_111:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x2c4]
	mov	rsp, rsp
	call	set_suffix_length
	mov	esi,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	cmp	esi, dword ptr [rbp - 0x194]
	jge	.label_32
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
.label_32:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x194]
	lea	rdi, [rdi]
	jge	.label_21
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
.label_21:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x194]
	mov	rbp, rbp
	jge	.label_37
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x150], rax
	call	quote
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, edx
	mov	rbp, rbp
	mov	esi, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_37:
	nop	
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	lea	rdi, [rdi]
	je	.label_67
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	lea	rdi, [rdi]
	call	strlen
	nop	
	cmp	rax,  qword ptr [word ptr [suffix_length]]
	jbe	.label_67
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
.label_67:
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
	je	.label_100
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
	jge	.label_100
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.41
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], esi
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [infile]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_100:
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
	je	.label_50
	nop	
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10c]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_50:
	cmp	qword ptr [rbp - 0x230], 0
	setne	al
	xor	al, 0xff
	mov	rbp, rbp
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2cd], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x2cd], 1
	lea	rsi, [rsi]
	jne	.label_47
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
	mov	qword ptr [rbp - 0x1c0], rax
	call	io_blksize
	mov	qword ptr [rbp - 0x230], rax
.label_47:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x230]
	nop	
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x1a8]
	sub	rax, 1
	mov	rdi, rax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1a8]
	nop	
	call	ptr_align
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], -1
	nop	
	cmp	dword ptr [rbp - 0x2c4], 5
	je	.label_91
	cmp	dword ptr [rbp - 0x2c4], 6
	mov	rbp, rbp
	jne	.label_117
.label_91:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:in_stat_buf
	mov	rdx, qword ptr [rbp - 0x1b8]
	nop	
	mov	rcx, qword ptr [rbp - 0x230]
	call	input_file_size
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x190], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x190], 0
	nop	
	jge	.label_105
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	nop	
	mov	qword ptr [rbp - 0x258], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_105:
	nop	
	mov	rax, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x230]
	lea	rdi, [rdi]
	jae	.label_44
	nop	
	mov	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x238], rax
	jmp	.label_25
.label_44:
	mov	rax, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x238], rax
.label_25:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x238]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x38]
	jae	.label_121
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rax
	mov	rbp, rbp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	quote
	mov	edi, 1
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_121:
	mov	rax, qword ptr [rbp - 0x190]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_71
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_75
.label_71:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
.label_75:
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x190], rax
.label_117:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [filter_command]],  0
	nop	
	je	.label_90
	movabs	rdi, OFFSET FLAT:newblocked
	call	sigemptyset
	mov	edi, 0xd
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0xf8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2a8], eax
	call	sigaction
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xf8], rdx
	mov	dword ptr [rbp - 0x270], eax
	je	.label_102
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:newblocked
	lea	rsi, [rsi]
	mov	esi, 0xd
	call	sigaddset
	mov	dword ptr [rbp - 0x124], eax
.label_102:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:newblocked
	movabs	rdx, OFFSET FLAT:oldblocked
	call	sigprocmask
	nop	
	mov	dword ptr [rbp - 0x26c], eax
.label_90:
	nop	
	mov	eax, dword ptr [rbp - 0x2c4]
	nop	
	dec	eax
	mov	ecx, eax
	mov	rsp, rsp
	sub	eax, 6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x290], eax
	mov	rbp, rbp
	ja	.label_116
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_18]]
	jmp	rcx
.label_1068:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x1b8]
	nop	
	mov	rdx, qword ptr [rbp - 0x230]
	call	lines_split
	jmp	.label_34
.label_1066:
	nop	
	mov	rcx, -1
	xor	eax, eax
	mov	r8d, eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1b8]
	mov	rdx, qword ptr [rbp - 0x230]
	call	bytes_split
	nop	
	jmp	.label_34
.label_1067:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1b8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x230]
	call	line_bytes_split
	jmp	.label_34
.label_1069:
	cmp	qword ptr [rbp - 0x250], 0
	mov	rsp, rsp
	jne	.label_81
	mov	rax, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1b8]
	nop	
	mov	rdi, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x200], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x200]
	mov	rsp, rsp
	mov	rdx, rax
	call	bytes_split
	jmp	.label_73
.label_81:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x1b8]
	mov	rcx, qword ptr [rbp - 0x230]
	mov	r8, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x190]
	nop	
	call	bytes_chunk_extract
.label_73:
	jmp	.label_34
.label_1070:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x230]
	mov	r8, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	call	lines_chunk_split
	jmp	.label_34
.label_1071:
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x1b8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x230]
	nop	
	call	lines_rr
	lea	rdi, [rdi]
	jmp	.label_34
.label_116:
	lea	rdi, [rdi]
	call	abort
.label_34:
	xor	edi, edi
	call	close
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_59
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x2c8], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	nop	
	mov	esi, dword ptr [rbp - 0x2c8]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_59:
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
	add	rsp, 0x360
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 1
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_122
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	gettext
	mov	esi, 1
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r8, rax
	mov	rsp, rsp
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_122:
	lea	rdi, [rdi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	mov	rbp, rbp
	je	.label_129
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_129:
	cmp	dword ptr [rbp - 0x14], 5
	nop	
	je	.label_131
	cmp	dword ptr [rbp - 0x14], 6
	je	.label_131
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 7
	mov	rsp, rsp
	jne	.label_133
.label_131:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_123
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
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	lea	rsi, [rsi]
	jne	.label_124
	mov	rsp, rsp
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, rax
	ja	.label_124
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_135
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_135:
	jmp	.label_124
.label_124:
	mov	rsp, rsp
	jmp	.label_123
.label_123:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [suffix_alphabet]]
	call	strlen
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x48]
	nop	
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	and	sil, 1
	nop	
	mov	byte ptr [rbp - 0x35], sil
.label_127:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_130
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_127
.label_130:
	mov	al, byte ptr [rbp - 0x35]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_133:
	cmp	qword ptr [word ptr [suffix_length]],  0
	mov	rsp, rsp
	je	.label_126
	mov	rax,  qword ptr [word ptr [suffix_length]]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_128
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_128:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [suffix_auto]],  0
	mov	rsp, rsp
	jmp	.label_132
.label_126:
	mov	eax, 2
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	jbe	.label_134
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_125
.label_134:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_125:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_132:
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10

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
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jge	.label_138
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_138
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_137
.label_138:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_137
.label_137:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
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
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_139
	movabs	rax, 0x2000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x38], rax
	lea	rdi, [rdi]
	ja	.label_139
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_136
.label_139:
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_136
.label_136:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fa0

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
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, r8
	lea	rdi, [rdi]
	mov	edx, eax
	call	lseek
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	jge	.label_150
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x1d
	jne	.label_156
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
.label_156:
	nop	
	mov	qword ptr [rbp - 0x38], -1
	jmp	.label_142
.label_150:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
.label_153:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_149
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_142
.label_149:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], -1
	lea	rsi, [rsi]
	jne	.label_147
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], -1
	lea	rsi, [rsi]
	jmp	.label_142
.label_147:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jb	.label_153
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_144
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 0x38], -1
	jmp	.label_142
.label_144:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	usable_st_size
	mov	rsp, rsp
	test	al, 1
	jne	.label_145
	jmp	.label_148
.label_145:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jg	.label_148
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_146
.label_148:
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	edx, 2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x3c]
	call	lseek
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_152
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], -1
	mov	rbp, rbp
	jmp	.label_142
.label_152:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	je	.label_151
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x3c]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	call	lseek
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_154
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], -1
	mov	rsp, rsp
	jmp	.label_142
.label_154:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jge	.label_155
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_155:
	lea	rsi, [rsi]
	jmp	.label_151
.label_151:
	jmp	.label_146
.label_146:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jne	.label_143
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	nop	
	mov	qword ptr [rbp - 0x38], -1
	jmp	.label_142
.label_143:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_142:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl lines_split
	.type lines_split, @function
lines_split:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x70
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 1], 1
	mov	qword ptr [rbp - 0x10], 0
.label_164:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	call	safe_read
	nop	
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -1
	lea	rdi, [rdi]
	jne	.label_159
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
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_159:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	ecx,  dword ptr [dword ptr [eolchar]]
	mov	dl, cl
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], dl
.label_157:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memchr
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x58]
	nop	
	jne	.label_158
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_163
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	dl, byte ptr [rbp - 1]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	edi, dl
	mov	rdx, rax
	mov	rbp, rbp
	call	cwrite
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	mov	byte ptr [rbp - 0x61], al
.label_163:
	mov	rsp, rsp
	jmp	.label_160
.label_158:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_162
	mov	al, byte ptr [rbp - 1]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	and	al, 1
	movzx	edi, al
	mov	rdx, rcx
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rbp - 1], 1
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
.label_162:
	jmp	.label_157
.label_160:
	mov	rbp, rbp
	jmp	.label_161
.label_161:
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	jne	.label_164
	mov	rbp, rbp
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	byte ptr [rbp - 1], 1
	mov	byte ptr [rbp - 0x59], 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x28], 0
.label_174:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	je	.label_177
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	jmp	.label_183
.label_177:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x59], 1
	jne	.label_170
	xor	edi, edi
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	call	lseek
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_170
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
.label_170:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_165
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x2c], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_165:
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1a], al
.label_183:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_180:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_175
	test	byte ptr [rbp - 0x59], 1
	jne	.label_169
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_173
.label_169:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x70]
	and	al, 1
	movzx	edi, al
	mov	rbp, rbp
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
.label_173:
	mov	al, 1
	mov	cl, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, edx
	add	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x49], al
	mov	rsp, rsp
	je	.label_166
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	setb	cl
	mov	byte ptr [rbp - 0x49], cl
.label_166:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x59], 1
	mov	rsp, rsp
	jne	.label_171
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	jne	.label_171
	nop	
	mov	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x1a], 1
	nop	
	jmp	.label_175
.label_171:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_180
.label_175:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_181
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x59], 1
	lea	rdi, [rdi]
	jne	.label_167
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_182
.label_167:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	and	al, 1
	movzx	edi, al
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
.label_182:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x59], 1
	jne	.label_176
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_176
	jmp	.label_179
.label_176:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rcx
.label_181:
	jmp	.label_172
.label_172:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1a]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_174
.label_179:
	nop	
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jae	.label_168
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_178
.label_168:
	lea	rdi, [rdi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0xa0], 0
	nop	
	mov	qword ptr [rbp - 0xa8], 0
	mov	byte ptr [rbp - 0x29], 0
.label_203:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	safe_read
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], -1
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
	mov	dword ptr [rbp - 0xbc], ecx
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_204:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
.label_186:
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	je	.label_197
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	sub	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x48]
	ja	.label_200
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	memrchr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_202
.label_200:
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	memrchr
	mov	qword ptr [rbp - 0x20], rax
.label_202:
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	je	.label_192
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_187
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_192
.label_187:
	cmp	qword ptr [rbp - 8], 0
	sete	al
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x60]
	and	al, 1
	nop	
	movzx	edi, al
	call	cwrite
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x49], al
	lea	rsi, [rsi]
	jbe	.label_198
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	xrealloc
	mov	qword ptr [rbp - 0xa0], rax
.label_198:
	nop	
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
.label_192:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_196
	mov	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	sete	dl
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	and	dl, 1
	movzx	edi, dl
	mov	rdx, rax
	mov	rbp, rbp
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	je	.label_189
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
.label_189:
	jmp	.label_196
.label_196:
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_184
	test	byte ptr [rbp - 0x29], 1
	jne	.label_184
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_190
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_193
.label_190:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x90], rax
.label_193:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	sete	cl
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edi, cl
	lea	rdi, [rdi]
	call	cwrite
	mov	rdx, qword ptr [rbp - 0x68]
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	add	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdx
	cmp	qword ptr [rbp - 0x88], 0
	nop	
	mov	byte ptr [rbp - 0x69], al
	je	.label_209
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x10], rcx
.label_209:
	mov	rsp, rsp
	jmp	.label_184
.label_184:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_205
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_207
.label_205:
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	jne	.label_185
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_185
.label_207:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	nop	
	je	.label_191
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_195
.label_191:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_195:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_199
	nop	
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0xa8]
	sub	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rcx, rax
	ja	.label_208
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	jmp	.label_188
.label_208:
	call	xalloc_die
.label_188:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_199:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xb8], rax
.label_185:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_194
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
.label_194:
	jmp	.label_186
.label_197:
	mov	rbp, rbp
	jmp	.label_201
.label_201:
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_203
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_206
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	sete	al
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0x91], al
.label_206:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	call	free
	nop	
	add	rsp, 0xc0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404db0

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
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x20], r9
	cmp	qword ptr [rbp - 8], 0
	je	.label_213
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_213
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_213
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	ja	.label_213
	mov	rbp, rbp
	jmp	.label_221
.label_213:
	movabs	rdi, OFFSET FLAT:.str.102
	movabs	rsi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	mov	edx, 0x3e0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.bytes_chunk_extract
	call	__assert_fail
.label_221:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rcx, rax
	mov	qword ptr [rbp - 0x68], rcx
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_217
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_216
.label_217:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	imul	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rcx
.label_216:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_218
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memmove
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_220
.label_218:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	call	lseek
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_211
	call	__errno_location
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_211:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], -1
.label_220:
	lea	rdi, [rdi]
	jmp	.label_219
.label_219:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_223
	nop	
	cmp	qword ptr [rbp - 0x30], -1
	je	.label_210
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	jmp	.label_222
.label_210:
	nop	
	xor	edi, edi
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	call	safe_read
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], -1
	nop	
	jne	.label_225
	call	__errno_location
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x7c]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_225:
	jmp	.label_222
.label_222:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_214
	jmp	.label_223
.label_214:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x68]
	cmp	rax, rcx
	nop	
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_212
.label_224:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x10], rax
.label_212:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x38]
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	je	.label_215
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	lea	rsi, [rsi]
	call	ignorable
	test	al, 1
	jne	.label_215
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	movabs	rdx, OFFSET FLAT:.str.12
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	nop	
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_215:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_219
.label_223:
	mov	rsp, rsp
	add	rsp, 0x80
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0xd0], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	qword ptr [rbp - 0x80], r9
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	je	.label_250
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0xd0]
	ja	.label_250
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x80]
	ja	.label_250
	mov	rsp, rsp
	jmp	.label_257
.label_250:
	movabs	rdi, OFFSET FLAT:.str.103
	movabs	rsi, OFFSET FLAT:.str.82
	mov	edx, 0x362
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.lines_chunk_split
	call	__assert_fail
.label_257:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0xb8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	sub	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf1], 1
	mov	byte ptr [rbp - 0xd1], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 1
	nop	
	jbe	.label_254
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_251
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	jmp	.label_264
.label_251:
	mov	rbp, rbp
	xor	edi, edi
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	call	lseek
	mov	rbp, rbp
	cmp	rax, 0
	jge	.label_233
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	nop	
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_233:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], -1
.label_264:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x90]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_254:
	nop	
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x80]
	jge	.label_249
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0x38], -1
	je	.label_263
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x38], -1
	jmp	.label_243
.label_263:
	nop	
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x100]
	call	safe_read
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], -1
	nop	
	jne	.label_231
	nop	
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x2c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_231:
	lea	rsi, [rsi]
	jmp	.label_243
.label_243:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_246
	lea	rsi, [rsi]
	jmp	.label_249
.label_246:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_260
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_258
.label_260:
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_258:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd1], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
.label_255:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	je	.label_268
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	byte ptr [rbp - 0x91], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xa0]
	sub	rsi, qword ptr [rbp - 0x70]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	jle	.label_227
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_236
.label_227:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
.label_236:
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, rax
	jae	.label_242
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	jmp	.label_248
.label_242:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	sub	rdx, qword ptr [rbp - 0x70]
	cmp	rcx, rdx
	nop	
	jle	.label_253
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_259
.label_253:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xc8], rax
.label_259:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc0], rax
.label_248:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [eolchar]]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	call	memchr
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_235
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_239
.label_235:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_239:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rbp - 0xb8]
	jne	.label_244
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	full_write
	cmp	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	je	.label_262
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_262:
	nop	
	jmp	.label_229
.label_244:
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_232
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xf1]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xa8]
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0x59], al
.label_232:
	jmp	.label_229
.label_229:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	and	dl, 1
	mov	byte ptr [rbp - 0xf1], dl
.label_230:
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	mov	byte ptr [rbp - 1], al
	jne	.label_261
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	sub	rcx, 1
	cmp	rax, rcx
	lea	rdi, [rdi]
	setle	dl
	mov	byte ptr [rbp - 1], dl
.label_261:
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	test	al, 1
	jne	.label_267
	nop	
	jmp	.label_266
.label_267:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x91], 1
	lea	rsi, [rsi]
	jne	.label_228
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0xb0]
	nop	
	jne	.label_228
	mov	byte ptr [rbp - 0xd1], 1
	lea	rdi, [rdi]
	jmp	.label_266
.label_228:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_237
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_237
	lea	rdi, [rdi]
	jmp	.label_245
.label_237:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_247
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	jmp	.label_252
.label_247:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
.label_252:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	sub	rcx, 1
	cmp	rax, rcx
	jg	.label_238
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jne	.label_269
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
	mov	byte ptr [rbp - 0x39], al
.label_269:
	jmp	.label_226
.label_238:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x91], 0
.label_226:
	jmp	.label_230
.label_266:
	mov	rbp, rbp
	jmp	.label_255
.label_268:
	jmp	.label_234
.label_249:
	test	byte ptr [rbp - 0xd1], 1
	mov	rsp, rsp
	je	.label_265
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
.label_265:
	jmp	.label_240
.label_240:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	jne	.label_241
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rcx
	cmp	rax, qword ptr [rbp - 0xd0]
	setbe	dl
	mov	byte ptr [rbp - 0x11], dl
.label_241:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_256
	mov	rbp, rbp
	jmp	.label_245
.label_256:
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
	mov	byte ptr [rbp - 0x3a], al
	mov	rsp, rsp
	jmp	.label_240
.label_245:
	lea	rsi, [rsi]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xb0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdx
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x71], 0
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_307
	mov	qword ptr [rbp - 0x98], 1
	jmp	.label_281
.label_307:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xa0]
	jae	.label_283
	call	xalloc_die
.label_283:
	mov	rsp, rsp
	mov	eax, 0x20
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	call	xnmalloc
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	qword ptr [rbp - 0x48], 0
.label_275:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	jae	.label_292
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [outfile]]
	nop	
	call	xstrdup
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	shl	rdi, 5
	add	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], 0xffffffff
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_275
.label_292:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x72], 0
.label_281:
	lea	rsi, [rsi]
	jmp	.label_277
.label_277:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], -1
	mov	rbp, rbp
	jne	.label_286
	call	__errno_location
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x4c], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_286:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_296
	jmp	.label_301
.label_296:
	jmp	.label_302
.label_302:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_273:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rbp - 8]
	je	.label_304
	mov	byte ptr [rbp - 0x51], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	rax, rcx
	mov	rdx, rax
	mov	rsp, rsp
	call	memchr
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_276
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 1
	jmp	.label_294
.label_276:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_294:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_285
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_287
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_287
	mov	edi, 1
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	full_write
	cmp	rax, qword ptr [rbp - 0x88]
	nop	
	je	.label_295
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_295:
	jmp	.label_271
.label_287:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_272
	mov	eax, 1
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, 1
	nop	
	je	.label_272
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_272:
	jmp	.label_271
.label_271:
	test	byte ptr [rbp - 0x51], 1
	je	.label_299
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0xa0]
	jne	.label_308
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rcx
	mov	rbp, rbp
	jmp	.label_300
.label_308:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x90], rax
.label_300:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
.label_299:
	jmp	.label_270
.label_285:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	call	ofile_open
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x72]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	or	r8d, ecx
	lea	rsi, [rsi]
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x72], al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_279
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	edi, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x88]
	je	.label_291
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_291
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	nop	
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_291:
	jmp	.label_274
.label_279:
	mov	eax, 1
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_284
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_284
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_284:
	lea	rsi, [rsi]
	jmp	.label_274
.label_274:
	call	__errno_location
	mov	edi, dword ptr [rax]
	nop	
	call	ignorable
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_305
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 1
.label_305:
	test	byte ptr [rbp - 0x72], 1
	lea	rdi, [rdi]
	je	.label_306
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_298
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_298:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	nop	
	add	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	mov	dword ptr [rax + 8], 0xfffffffe
.label_306:
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_297
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	jne	.label_297
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jne	.label_303
	mov	rsp, rsp
	jmp	.label_278
.label_303:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
.label_297:
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	jmp	.label_273
.label_304:
	jmp	.label_277
.label_301:
	jmp	.label_278
.label_278:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_280
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_282
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_290
.label_282:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_290:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
.label_289:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xa0]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_293
	nop	
	test	byte ptr [byte ptr [elide_empty_files]],  1
	jne	.label_293
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	ofile_open
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x72]
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
	mov	byte ptr [rbp - 0x72], al
.label_293:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 8], 0
	nop	
	jl	.label_309
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	call	closeout
.label_309:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	dword ptr [rax + 8], 0xfffffffe
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_289
.label_288:
	mov	rsp, rsp
	jmp	.label_280
.label_280:
	add	rsp, 0xb0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0

	.globl closeout
	.type closeout, @function
closeout:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0x2c], esi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_311
	mov	rdi, qword ptr [rbp - 0x88]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_311
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_311
	call	__errno_location
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 8], ecx
	nop	
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_311:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jl	.label_322
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	jne	.label_315
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	call	close
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_315
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	nop	
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_315:
	mov	dword ptr [rbp - 0x5c], 0
.label_324:
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	nop	
	jae	.label_317
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	cmp	edx, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	jne	.label_314
	mov	rax,  qword ptr [word ptr [n_open_pipes]]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [word ptr [n_open_pipes]],  rcx
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4 - 4]
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rcx + rax*4], edx
	mov	rsp, rsp
	jmp	.label_317
.label_314:
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	jmp	.label_324
.label_317:
	jmp	.label_322
.label_322:
	cmp	dword ptr [rbp - 0x14], 0
	jle	.label_312
	lea	rsi, [rbp - 0xc]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	call	waitpid
	cmp	eax, -1
	jne	.label_319
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xa
	je	.label_319
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.106
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_319:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x68], eax
	nop	
	mov	eax, dword ptr [rbp - 0x68]
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
	jle	.label_310
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x7f
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x7c], 0xd
	je	.label_318
	lea	rsi, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	call	sig2str
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_321
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.107
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7c]
	mov	al, 0
	call	sprintf
	nop	
	mov	dword ptr [rbp - 0x8c], eax
.label_321:
	movabs	rdi, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_n_style_colon
	nop	
	xor	esi, esi
	mov	rsp, rsp
	lea	r8, [rbp - 0x50]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_318:
	jmp	.label_320
.label_310:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], eax
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x7f
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_325
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0xff00
	sar	eax, 8
	mov	dword ptr [rbp - 4], eax
	nop	
	cmp	dword ptr [rbp - 4], 0
	je	.label_316
	movabs	rdi, OFFSET FLAT:.str.109
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_316:
	lea	rsi, [rsi]
	jmp	.label_313
.label_325:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc]
	nop	
	add	ecx, 0
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_313:
	lea	rsi, [rsi]
	jmp	.label_320
.label_320:
	jmp	.label_312
.label_312:
	nop	
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rdi + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	je	.label_326
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 1], al
	je	.label_326
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jne	.label_326
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	jmp	.label_326
.label_326:
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl cwrite
	.type cwrite, @function
cwrite:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	al, dil
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	je	.label_331
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_329
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jne	.label_329
	test	byte ptr [byte ptr [elide_empty_files]],  1
	je	.label_329
	mov	byte ptr [rbp - 0x25], 1
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
	jge	.label_327
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
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_327:
	nop	
	jmp	.label_331
.label_331:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [output_desc]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_330
	nop	
	mov	byte ptr [rbp - 0x25], 1
	mov	rbp, rbp
	jmp	.label_328
.label_330:
	mov	rsp, rsp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable
	test	al, 1
	jne	.label_332
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [outfile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_332:
	mov	byte ptr [rbp - 0x25], 0
.label_328:
	mov	al, byte ptr [rbp - 0x25]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x30
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406980

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
	jne	.label_333
	jmp	.label_342
.label_342:
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
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_348
	mov	rdi,  qword ptr [word ptr [outbase]]
	call	strlen
	nop	
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_350
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [additional_suffix]]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_335
.label_350:
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
	jmp	.label_343
.label_348:
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
.label_343:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	nop	
	jae	.label_338
	call	xalloc_die
.label_338:
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
	test	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	jne	.label_336
	mov	rdi,  qword ptr [word ptr [outfile]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [outbase]]
	mov	rdx,  qword ptr [word ptr [next_file_name.outbase_length]]
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_339
.label_336:
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
.label_339:
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
	je	.label_345
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rsi,  qword ptr [word ptr [additional_suffix]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [next_file_name.addsuf_length]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcpy
.label_345:
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
	je	.label_346
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	jne	.label_349
	lea	rdi, [rdi]
	jmp	.label_351
.label_349:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.82
	mov	edx, 0x198
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.next_file_name
	call	__assert_fail
.label_351:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	qword ptr [rbp - 0x30], rcx
	call	strlen
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 8]
	add	rax, rcx
	mov	rsi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
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
.label_347:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 8], rcx
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_341
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
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
	jmp	.label_347
.label_341:
	jmp	.label_346
.label_346:
	mov	rbp, rbp
	jmp	.label_352
.label_333:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [suffix_length]]
	mov	qword ptr [rbp - 0x20], rax
.label_337:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_340
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
	jmp	.label_342
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
	je	.label_344
	jmp	.label_352
.label_344:
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
	jmp	.label_337
.label_340:
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
.label_352:
	add	rsp, 0x30
	nop	
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f10

	.globl create
	.type create, @function
create:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	cmp	qword ptr [word ptr [filter_command]],  0
	jne	.label_358
	nop	
	test	byte ptr [byte ptr [verbose]],  1
	lea	rsi, [rsi]
	je	.label_362
	nop	
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x140], eax
.label_362:
	mov	esi, 0x41
	mov	rbp, rbp
	mov	edx, 0x1b6
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	open_safer
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0
	lea	rsi, [rsi]
	jge	.label_372
	mov	eax, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	jmp	.label_364
.label_372:
	lea	rsi, [rbp - 0x138]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_356
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.85
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_356:
	mov	rax,  qword ptr [word ptr [label_365]]
	cmp	rax, qword ptr [rbp - 0x130]
	jne	.label_366
	mov	rax,  qword ptr [word ptr [in_stat_buf]]
	cmp	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	jne	.label_366
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_366:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	mov	edi, dword ptr [rbp - 0x8c]
	nop	
	call	ftruncate
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_360
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x120]
	nop	
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	je	.label_357
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, dword ptr [rbp - 0x120]
	cmp	eax, 0
	je	.label_360
.label_357:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.87
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	mov	rbp, rbp
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x150], rax
	nop	
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_360:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_364
.label_358:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.88
	mov	rsp, rsp
	call	getenv
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_373
	movabs	rax, OFFSET FLAT:.str.89
	mov	qword ptr [rbp - 8], rax
.label_373:
	movabs	rdi, OFFSET FLAT:.str.90
	mov	rbp, rbp
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x38]
	call	setenv
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_353
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.91
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xa0], esi
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_353:
	test	byte ptr [byte ptr [verbose]],  1
	mov	rbp, rbp
	je	.label_375
	movabs	rdi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_n_style_colon
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_375:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xa8]
	call	pipe
	cmp	eax, 0
	je	.label_371
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.93
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_371:
	call	fork
	mov	dword ptr [rbp - 0x78], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x78], 0
	nop	
	jne	.label_355
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_369:
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	nop	
	jae	.label_359
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_363
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x20], esi
	nop	
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_363:
	lea	rdi, [rdi]
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_369
.label_359:
	nop	
	mov	edi, dword ptr [rbp - 0xa4]
	call	close
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_370
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.95
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x13c], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_370:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa8], 0
	je	.label_354
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	edi, dword ptr [rbp - 0xa8]
	call	dup2
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_377
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.96
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x144]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_377:
	mov	edi, dword ptr [rbp - 0xa8]
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_374
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.97
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_374:
	nop	
	jmp	.label_354
.label_354:
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:oldblocked
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	last_component
	nop	
	movabs	rdx, OFFSET FLAT:.str.98
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8d, ecx
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [filter_command]]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	execl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.99
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [filter_command]]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_355:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x78], -1
	jne	.label_367
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.100
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_367:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xa8]
	call	close
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_376
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.101
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_376:
	mov	eax, dword ptr [rbp - 0x78]
	mov	dword ptr [dword ptr [filter_pid]],  eax
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	cmp	rcx,  qword ptr [word ptr [open_pipes_alloc]]
	mov	rbp, rbp
	jne	.label_361
	movabs	rsi, OFFSET FLAT:open_pipes_alloc
	mov	eax, 4
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	nop	
	mov	rdi, rcx
	call	x2nrealloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [open_pipes]],  rax
.label_361:
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [word ptr [n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0x18], eax
.label_364:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x150
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076d0

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
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [filter_command]],  0
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	je	.label_378
	cmp	dword ptr [rbp - 8], 0x20
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 1], al
.label_378:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407720

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x35], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	dword ptr [rdx + 8], -1
	mov	rsp, rsp
	jg	.label_384
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_387
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_393
.label_387:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_393:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_389:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 8], -1
	nop	
	jne	.label_385
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax]
	call	create
	nop	
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_379
.label_385:
	nop	
	mov	esi, 0xc01
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, qword ptr [rax]
	mov	al, 0
	mov	rsp, rsp
	call	open_safer
	mov	dword ptr [rbp - 0x24], eax
.label_379:
	mov	eax, 0xffffffff
	cmp	eax, dword ptr [rbp - 0x24]
	jge	.label_390
	mov	rbp, rbp
	jmp	.label_380
.label_390:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x18
	lea	rdi, [rdi]
	je	.label_386
	call	__errno_location
	cmp	dword ptr [rax], 0x17
	lea	rsi, [rsi]
	je	.label_386
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_386:
	mov	byte ptr [rbp - 0x35], 1
.label_394:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 8], 0
	nop	
	jge	.label_382
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_388
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_383
.label_388:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_383:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jne	.label_391
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_391:
	jmp	.label_394
.label_382:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_392
	mov	rbp, rbp
	call	__errno_location
	nop	
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_392:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 5
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rax, 5
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x50]
	mov	dword ptr [rax + 8], 0xfffffffe
	mov	rsp, rsp
	jmp	.label_389
.label_380:
	movabs	rsi, OFFSET FLAT:.str.105
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x50]
	mov	dword ptr [rcx + 8], eax
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	fdopen
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_381
	mov	rbp, rbp
	call	__errno_location
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_381:
	mov	eax,  dword ptr [dword ptr [filter_pid]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 5
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x50]
	mov	dword ptr [rcx + 0x18], eax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [filter_pid]],  0
.label_384:
	mov	al, byte ptr [rbp - 0x35]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b10
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
	#Procedure 0x407b40
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
	#Procedure 0x407b70

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
	je	.label_399
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_395
.label_399:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_398
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
	jmp	.label_396
.label_398:
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
.label_396:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_395:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_397
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_397:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ca0

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
.label_402:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_406
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_402
.label_406:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_401:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_404
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_400
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_405
.label_400:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_403
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_403:
	jmp	.label_405
.label_405:
	jmp	.label_407
.label_407:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_401
.label_404:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d70
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
.label_409:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_408
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
.label_408:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30

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
	je	.label_413
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
.label_413:
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
	je	.label_414
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
	ja	.label_415
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
	jmp	.label_416
.label_415:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_416:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_414:
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
	#Procedure 0x4080b0

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x18], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 0x2c], edx
	nop	
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	nop	
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	je	.label_419
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_418
.label_419:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_417
.label_418:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x18]
	call	dup2
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x20], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
.label_417:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rdx
.label_421:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_422
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_write
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], -1
	lea	rdi, [rdi]
	jne	.label_423
	jmp	.label_422
.label_423:
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_420
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	lea	rdi, [rdi]
	jmp	.label_422
.label_420:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_421
.label_422:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408240

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
	jae	.label_424
	jmp	.label_427
.label_427:
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
	jne	.label_427
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_426
.label_424:
	jmp	.label_425
.label_425:
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
	jne	.label_425
	jmp	.label_426
.label_426:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408380

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
	jne	.label_428
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_428:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_430
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_431
.label_430:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_431:
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
	jl	.label_429
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
	jne	.label_429
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
	jne	.label_432
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_432:
	jmp	.label_429
.label_429:
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
	#Procedure 0x408500
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
	je	.label_433
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_434
.label_433:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_434
.label_434:
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
	#Procedure 0x4085b0
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
	je	.label_435
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_436
.label_435:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408610
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
	je	.label_437
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_438
.label_437:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408670

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
	je	.label_439
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_440
.label_439:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_440
.label_440:
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
	#Procedure 0x408770
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
	jne	.label_441
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_441:
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
	#Procedure 0x4087d0

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
	jne	.label_442
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_442:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	#Procedure 0x408870
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
	je	.label_445
	mov	rax, qword ptr [rbp - 0x50]
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
	#Procedure 0x408970

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
.label_565:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_568
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_576]]
	jmp	rcx
.label_1029:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1028:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_584
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_589
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_589:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_584
.label_584:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_464
.label_1030:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_464
.label_1031:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_614
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
.label_614:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_454
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_646:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_630
	jmp	.label_631
.label_631:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_632
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_632:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_646
.label_630:
	mov	rbp, rbp
	jmp	.label_454
.label_454:
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
	jmp	.label_464
.label_1026:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1025:
	mov	byte ptr [rbp - 0x3e], 1
.label_1027:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_470
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_470:
	jmp	.label_474
.label_474:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_475
	jmp	.label_480
.label_480:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_482
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_482:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_475
.label_475:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_464
.label_1024:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_464
.label_568:
	call	abort
.label_464:
	mov	qword ptr [rbp - 0xd8], 0
.label_468:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_501
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
	jmp	.label_504
.label_501:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_504:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_522
	mov	rbp, rbp
	jmp	.label_531
.label_522:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_534
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_534
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_534
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_552
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_552
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_562
.label_552:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_562:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_534
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
	jne	.label_534
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_581
	jmp	.label_481
.label_581:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_534:
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
	ja	.label_587
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_599]]
	nop	
	jmp	rcx
.label_1035:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_602
	mov	rsp, rsp
	jmp	.label_606
.label_606:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_608
	jmp	.label_481
.label_608:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_610
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_610
	nop	
	jmp	.label_617
.label_617:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_619
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_619:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_626
.label_626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_629
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_629:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_634
.label_634:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_638
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_638:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_610:
	lea	rsi, [rsi]
	jmp	.label_449
.label_449:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_451
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_451:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_508
.label_508:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_469
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_469
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_469
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_469
	nop	
	jmp	.label_486
.label_486:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_487:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_494
.label_494:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_542
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_542:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_469
.label_469:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_509
.label_602:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_512
	mov	rbp, rbp
	jmp	.label_506
.label_512:
	jmp	.label_509
.label_509:
	jmp	.label_450
.label_1046:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_520
	mov	rbp, rbp
	jmp	.label_527
.label_527:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_529
	jmp	.label_537
.label_520:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_539
	jmp	.label_481
.label_539:
	jmp	.label_447
.label_529:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_476
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_476
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_476
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
	je	.label_472
	nop	
	jmp	.label_536
.label_536:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_472
	jmp	.label_570
.label_570:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_472
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_472
	jmp	.label_583
.label_583:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_471
	jmp	.label_472
.label_472:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_593
	jmp	.label_481
.label_593:
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
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_596:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_616
.label_616:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_637
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_637:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_623
.label_623:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_628
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_628:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_505
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_505:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_640
.label_471:
	jmp	.label_640
.label_640:
	jmp	.label_476
.label_476:
	jmp	.label_447
.label_537:
	jmp	.label_447
.label_447:
	jmp	.label_450
.label_1036:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_453
.label_1037:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_453
.label_1041:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_453
.label_1039:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_463
.label_1042:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_463
.label_1038:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_463
.label_1040:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_453
.label_1047:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_591
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_478
	nop	
	jmp	.label_481
.label_478:
	lea	rsi, [rsi]
	jmp	.label_456
.label_591:
	test	byte ptr [rbp - 0x89], 1
	je	.label_483
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_483
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_483
	jmp	.label_456
.label_483:
	jmp	.label_463
.label_463:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_495
	test	byte ptr [rbp - 0x3e], 1
	je	.label_495
	jmp	.label_481
.label_495:
	mov	rsp, rsp
	jmp	.label_453
.label_453:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_499
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_502
.label_499:
	jmp	.label_450
.label_1048:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_609
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_513
	jmp	.label_519
.label_609:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_513
.label_519:
	nop	
	jmp	.label_450
.label_513:
	jmp	.label_523
.label_523:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_590
	lea	rsi, [rsi]
	jmp	.label_450
.label_590:
	nop	
	jmp	.label_533
.label_533:
	mov	byte ptr [rbp - 0x91], 1
.label_1043:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_541
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_541
	jmp	.label_481
.label_541:
	lea	rsi, [rsi]
	jmp	.label_450
.label_1045:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_544
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_621
	jmp	.label_481
.label_621:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_553
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_553
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_553:
	jmp	.label_563
.label_563:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_564
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_564:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_567
.label_567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_573
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_573:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_582
.label_582:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_586
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_586:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_544:
	lea	rsi, [rsi]
	jmp	.label_450
.label_1044:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_450
.label_587:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_603
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
	jmp	.label_473
.label_603:
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
	jne	.label_627
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_627:
	jmp	.label_503
.label_503:
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
	jne	.label_448
	jmp	.label_459
.label_448:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_455
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_459
.label_455:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_462
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_484:
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
	jae	.label_545
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_545:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_633
	jmp	.label_644
.label_633:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_484
.label_644:
	jmp	.label_459
.label_462:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_488
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_488
	mov	qword ptr [rbp - 0xe8], 1
.label_543:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_496
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
	jb	.label_498
	jmp	.label_515
.label_515:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_498
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_498
	jmp	.label_528
.label_528:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_530
	mov	rsp, rsp
	jmp	.label_498
.label_498:
	mov	rsp, rsp
	jmp	.label_481
.label_530:
	jmp	.label_540
.label_540:
	mov	rsp, rsp
	jmp	.label_560
.label_560:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_543
.label_496:
	mov	rbp, rbp
	jmp	.label_488
.label_488:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_550
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_550:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_551
.label_551:
	lea	rsi, [rsi]
	jmp	.label_556
.label_556:
	jmp	.label_558
.label_558:
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
	jne	.label_503
.label_459:
	jmp	.label_473
.label_473:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_566
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_575
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_575
.label_566:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_555:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_588
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_588
	jmp	.label_594
.label_594:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_595
	jmp	.label_481
.label_595:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_548
	test	byte ptr [rbp - 0x42], 1
	jne	.label_548
	lea	rdi, [rdi]
	jmp	.label_604
.label_604:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_605
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_605:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_615
.label_615:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_618
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_618:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_624
.label_624:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_559
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_559:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_548:
	jmp	.label_635
.label_635:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_636
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_636:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_642
.label_642:
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_647
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
.label_647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_466
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
.label_466:
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
	jmp	.label_477
.label_588:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_485
	lea	rdi, [rdi]
	jmp	.label_489
.label_489:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_491:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_485:
	nop	
	jmp	.label_477
.label_477:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_500
	jmp	.label_507
.label_500:
	lea	rsi, [rsi]
	jmp	.label_510
.label_510:
	test	byte ptr [rbp - 0x42], 1
	je	.label_514
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_514
	lea	rsi, [rsi]
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_518
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_518:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_526
.label_526:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_535
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_535:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_514:
	nop	
	jmp	.label_546
.label_546:
	mov	rsp, rsp
	jmp	.label_547
.label_547:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_549
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_549:
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
	jmp	.label_555
.label_507:
	mov	rsp, rsp
	jmp	.label_456
.label_575:
	lea	rsi, [rsi]
	jmp	.label_450
.label_450:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_641
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_571
.label_641:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_574
.label_571:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_574
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
	jne	.label_579
.label_574:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_579
	mov	rsp, rsp
	jmp	.label_456
.label_579:
	nop	
	jmp	.label_502
.label_502:
	jmp	.label_600
.label_600:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_601
	jmp	.label_481
.label_601:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_532
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_532
	lea	rdi, [rdi]
	jmp	.label_612
.label_612:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_611
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_611:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_620
.label_620:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_625
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_625:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_525
.label_525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_613
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_613:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_532:
	jmp	.label_622
.label_622:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_643
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_643:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_452
.label_452:
	nop	
	jmp	.label_456
.label_456:
	jmp	.label_457
.label_457:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_460
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_460
	lea	rdi, [rdi]
	jmp	.label_465
.label_465:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_467
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_467:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_479
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_479:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_460:
	jmp	.label_490
.label_490:
	nop	
	jmp	.label_493
.label_493:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_492
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_492:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_497
	mov	byte ptr [rbp - 0xb7], 0
.label_497:
	mov	rbp, rbp
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_468
.label_531:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_517
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_517
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_517
	nop	
	jmp	.label_481
.label_517:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_524
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_524
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_524
	test	byte ptr [rbp - 0xb7], 1
	je	.label_538
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
	jmp	.label_557
.label_538:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_561
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_561
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_565
.label_561:
	jmp	.label_569
.label_569:
	mov	rbp, rbp
	jmp	.label_524
.label_524:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_572
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_572
	mov	rbp, rbp
	jmp	.label_578
.label_578:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_580
	lea	rdi, [rdi]
	jmp	.label_639
.label_639:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_585
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_585:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_578
.label_580:
	jmp	.label_572
.label_572:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_607
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_607:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_557
.label_481:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_458
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_458
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_458:
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
.label_557:
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
	#Procedure 0x40a410
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
	#Procedure 0x40a480

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
	je	.label_648
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_649
.label_648:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_649
.label_649:
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
	je	.label_650
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_650:
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
	#Procedure 0x40a650
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a760

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
	#Procedure 0x40a7b0

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
	jge	.label_660
	call	abort
.label_660:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_663
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
	jge	.label_656
	call	xalloc_die
.label_656:
	test	byte ptr [rbp - 0x51], 1
	je	.label_657
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_661
.label_657:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_661:
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
	je	.label_659
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_651]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_659:
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
.label_663:
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
	ja	.label_658
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
	je	.label_662
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_662:
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
.label_658:
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
	#Procedure 0x40aae0

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
	#Procedure 0x40ab20
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
	#Procedure 0x40ab50
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
	#Procedure 0x40ab90

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
	#Procedure 0x40abf0

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
	jne	.label_664
	call	abort
.label_664:
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
	#Procedure 0x40ac90

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
	#Procedure 0x40ad00

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
	#Procedure 0x40ad40
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
	#Procedure 0x40ad80

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
	#Procedure 0x40ae30

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
	#Procedure 0x40ae70

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
	#Procedure 0x40aea0
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
	#Procedure 0x40aee0

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
	#Procedure 0x40afc0

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
	#Procedure 0x40b010

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
	#Procedure 0x40b0b0
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
	#Procedure 0x40b100
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
	#Procedure 0x40b160

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
	#Procedure 0x40b1a0
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
	#Procedure 0x40b1e0

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
	#Procedure 0x40b220

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
	#Procedure 0x40b260

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
	je	.label_668
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_666
.label_668:
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
	jne	.label_667
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
	jmp	.label_666
.label_667:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_666
.label_665:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_666:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3a0

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
.label_674:
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
	jg	.label_675
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_673
.label_675:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_669
	lea	rdi, [rdi]
	jmp	.label_674
.label_669:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_672
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jae	.label_672
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_676
.label_672:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_673
.label_676:
	jmp	.label_671
.label_671:
	jmp	.label_670
.label_670:
	mov	rsp, rsp
	jmp	.label_674
.label_673:
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
	#Procedure 0x40b490

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
.label_683:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jg	.label_684
	mov	rax, qword ptr [rbp - 0x18]
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
	cmp	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_677
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0x7ff00000
	jmp	.label_678
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b570

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
.label_685:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b600

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
	je	.label_686
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
	jmp	.label_689
.label_686:
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
.label_689:
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
	ja	.label_690
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_688]]
	jmp	rcx
.label_975:
	jmp	.label_687
.label_976:
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
	jmp	.label_687
.label_977:
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
	jmp	.label_687
.label_978:
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
	jmp	.label_687
.label_979:
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
	jmp	.label_687
.label_980:
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
	jmp	.label_687
.label_981:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_687
.label_982:
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
	jmp	.label_687
.label_983:
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
	jmp	.label_687
.label_984:
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
	jmp	.label_687
.label_690:
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
.label_687:
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
	#Procedure 0x40be40
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
.label_691:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_692
	mov	rbp, rbp
	jmp	.label_693
.label_693:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_691
.label_692:
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
	#Procedure 0x40bef0

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
.label_698:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_694
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_700
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
	jmp	.label_699
.label_700:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_699:
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
.label_694:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_697
	mov	rsp, rsp
	jmp	.label_695
.label_697:
	jmp	.label_696
.label_696:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_698
.label_695:
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
	#Procedure 0x40c050

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
	je	.label_701
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
.label_701:
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
	#Procedure 0x40c210
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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c2c0

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c320

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
	jne	.label_703
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_703
	lea	rdi, [rdi]
	call	xalloc_die
.label_703:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c380
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
	jae	.label_704
	mov	rsp, rsp
	call	xalloc_die
.label_704:
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
	#Procedure 0x40c400

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
	jne	.label_705
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_705
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_707
.label_705:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_706
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_706
	lea	rsi, [rsi]
	call	xalloc_die
.label_706:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_707:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4b0

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
	jne	.label_708
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_710
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
.label_710:
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_709
	call	xalloc_die
.label_709:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_711:
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
	#Procedure 0x40c5e0

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
	#Procedure 0x40c610
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
	#Procedure 0x40c650
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
	#Procedure 0x40c6a0

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
	jb	.label_713
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_714
.label_713:
	lea	rsi, [rsi]
	call	xalloc_die
.label_714:
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
	#Procedure 0x40c710

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
	#Procedure 0x40c760

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
	#Procedure 0x40c7c0

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
	movabs	rdx, OFFSET FLAT:.str_1
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
	#Procedure 0x40c820

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
	#Procedure 0x40c830

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
	jge	.label_715
	call	xset_binary_mode_error
.label_715:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c870

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
	jne	.label_719
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_726
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
.label_726:
	mov	dword ptr [rbp - 0x50], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0x3fffffff
	jbe	.label_716
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_727
.label_716:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_727:
	jmp	.label_722
.label_722:
	nop	
	jmp	.label_717
.label_719:
	cmp	dword ptr [rbp - 0x50], 1
	jne	.label_718
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_724
.label_718:
	cmp	dword ptr [rbp - 0x50], 3
	jne	.label_729
	call	__errno_location
	mov	dword ptr [rax], 0
.label_729:
	jmp	.label_724
.label_724:
	jmp	.label_717
.label_717:
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_723
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_720
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_725
.label_720:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_725
.label_725:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_721
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_728
.label_721:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
.label_728:
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
.label_723:
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
	#Procedure 0x40ca60

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
	#Procedure 0x40cad0

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
	jg	.label_738
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_738
	jmp	.label_742
.label_738:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_742:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_756
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_762
.label_756:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_762
.label_762:
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
.label_793:
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
	je	.label_786
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_793
.label_786:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_739
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_732
.label_739:
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
	jne	.label_760
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_769
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_769
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_769
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_741
.label_769:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_732
.label_741:
	lea	rdi, [rdi]
	jmp	.label_750
.label_760:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_735
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_782
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_732
.label_782:
	mov	dword ptr [rbp - 0x60], 1
.label_735:
	jmp	.label_750
.label_750:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_752
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_732
.label_752:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_740
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
	jne	.label_784
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
	jmp	.label_732
.label_784:
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
	je	.label_730
	jmp	.label_737
.label_737:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_730
	nop	
	jmp	.label_754
.label_754:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_730
	nop	
	jmp	.label_766
.label_766:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_730
	lea	rsi, [rsi]
	jmp	.label_774
.label_774:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_730
	jmp	.label_779
.label_779:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_730
	jmp	.label_783
.label_783:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_730
	mov	rsp, rsp
	jmp	.label_789
.label_789:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_730
	jmp	.label_757
.label_757:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_730
	mov	rsp, rsp
	jmp	.label_743
.label_743:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_730
	jmp	.label_755
.label_755:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_792
	jmp	.label_730
.label_730:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_771
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
	je	.label_775
	lea	rsi, [rsi]
	jmp	.label_781
.label_781:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_775
	jmp	.label_787
.label_787:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_744
	lea	rsi, [rsi]
	jmp	.label_794
.label_794:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_736
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_736:
	jmp	.label_744
.label_775:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_744:
	jmp	.label_771
.label_771:
	nop	
	jmp	.label_792
.label_792:
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
	je	.label_759
	jmp	.label_795
.label_795:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_772
	jmp	.label_776
.label_776:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_777
	jmp	.label_780
.label_780:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_745
	nop	
	jmp	.label_785
.label_785:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_747
	nop	
	jmp	.label_790
.label_790:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_763
	mov	rsp, rsp
	jmp	.label_734
.label_734:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_767
	jmp	.label_791
.label_791:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_758
	mov	rbp, rbp
	jmp	.label_770
.label_770:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_751
	jmp	.label_761
.label_761:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_764
	jmp	.label_773
.label_773:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_768
	jmp	.label_746
.label_746:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_777
	jmp	.label_731
.label_731:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_745
	jmp	.label_753
.label_753:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_747
	jmp	.label_748
.label_748:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_767
	jmp	.label_765
.label_765:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_788
	jmp	.label_749
.label_764:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_759:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_768:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_733
.label_772:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_777:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_745:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_747:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_763:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_733
.label_767:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_733
.label_788:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_758:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_751:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_733
.label_749:
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
	jmp	.label_732
.label_733:
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
	je	.label_778
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_778:
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_732:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d460

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
	jae	.label_796
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_797
.label_796:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_797:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4e0

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
.label_798:
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
	je	.label_799
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
	jmp	.label_798
.label_799:
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
	#Procedure 0x40d560

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
	jge	.label_803
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_801
.label_803:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_800
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
	je	.label_802
.label_800:
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_804
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
.label_804:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_801:
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
	#Procedure 0x40d680

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
	je	.label_805
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_806
.label_805:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_807
.label_806:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_807:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6f0

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
	je	.label_808
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
.label_808:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d750

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
	jne	.label_809
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_809
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_809
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
	jne	.label_810
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_811
.label_810:
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
	jmp	.label_811
.label_809:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_811:
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
	#Procedure 0x40d860

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
	jne	.label_812
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_812:
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
	ja	.label_813
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	jmp	.label_814
.label_813:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_814:
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
	#Procedure 0x40d950
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d9a0

	.globl str2signum
	.type str2signum, @function
str2signum:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x40], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	nop	
	ja	.label_822
	lea	rsi, [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x40]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_823
	cmp	qword ptr [rbp - 0x28], 0x40
	jg	.label_823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_820
.label_823:
	lea	rdi, [rdi]
	jmp	.label_819
.label_822:
	mov	dword ptr [rbp - 0x18], 0
.label_826:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	rcx, 0x23
	lea	rsi, [rsi]
	jae	.label_824
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:numname_table
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_827
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:numname_table
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	jmp	.label_820
.label_827:
	jmp	.label_825
.label_825:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_826
.label_824:
	mov	rbp, rbp
	call	__libc_current_sigrtmin
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	__libc_current_sigrtmax
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jge	.label_818
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_7
	nop	
	mov	eax, 5
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
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
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_816
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jg	.label_816
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 4]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_816
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_820
.label_816:
	jmp	.label_821
.label_818:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jge	.label_817
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_4
	nop	
	mov	eax, 5
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_817
	mov	rbp, rbp
	lea	rsi, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_815
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x38]
	jg	.label_815
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jg	.label_815
	movsxd	rax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	jmp	.label_820
.label_815:
	lea	rdi, [rdi]
	jmp	.label_817
.label_817:
	jmp	.label_821
.label_821:
	jmp	.label_819
.label_819:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_820:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc90

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], edi
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0
.label_837:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x23
	lea	rdi, [rdi]
	jae	.label_835
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	mov	rbp, rbp
	add	rax, rdx
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x20]
	jne	.label_828
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	lea	rsi, [rsi]
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	lea	rsi, [rsi]
	call	strcpy
	mov	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_832
.label_828:
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_837
.label_835:
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x20]
	jg	.label_831
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x2c]
	jle	.label_829
.label_831:
	mov	dword ptr [rbp - 0xc], 0xffffffff
	jmp	.label_832
.label_829:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x2c]
	sub	esi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], edx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	idiv	esi
	mov	edi, dword ptr [rbp - 0x28]
	add	edi, eax
	cmp	ecx, edi
	lea	rdi, [rdi]
	jg	.label_830
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax, OFFSET FLAT:.str_7
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcpy
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_833
.label_830:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_833:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	mov	rsp, rsp
	je	.label_834
	movabs	rsi, OFFSET FLAT:.str.2_2
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	nop	
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_834:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0
.label_832:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de90

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
	#Procedure 0x40deb0

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
	#Procedure 0x40ded0

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
	je	.label_838
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_839
.label_838:
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_839:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df30

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
	jne	.label_840
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_841
.label_840:
	mov	rbp, rbp
	jmp	.label_843
.label_843:
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
	jne	.label_842
	jmp	.label_844
.label_842:
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
	je	.label_843
.label_844:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
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
	#Procedure 0x40e020

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
	jne	.label_847
	test	byte ptr [rbp - 0x15], 1
	je	.label_846
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_847
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_846
.label_847:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_845
	call	__errno_location
	mov	dword ptr [rax], 0
.label_845:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_848
.label_846:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_848:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e100

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
	je	.label_850
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_851
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_849
.label_851:
	mov	byte ptr [rbp - 0xd], 0
.label_849:
	jmp	.label_850
.label_850:
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
	#Procedure 0x40e1a0

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e220

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
	#Procedure 0x40e260

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
	je	.label_876
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
.label_876:
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
	je	.label_879
	nop	
	jmp	.label_859
.label_859:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_860
	jmp	.label_864
.label_879:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_869
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
	jmp	.label_875
.label_869:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_875:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_861
.label_860:
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
	ja	.label_874
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
	jmp	.label_855
.label_874:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_855:
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
	jmp	.label_861
.label_864:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_856
	nop	
	jmp	.label_858
.label_858:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_857
	jmp	.label_866
.label_866:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_856
	nop	
	jmp	.label_872
.label_872:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_857
	nop	
	jmp	.label_878
.label_878:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_856
	lea	rsi, [rsi]
	jmp	.label_854
.label_854:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_856
	lea	rsi, [rsi]
	jmp	.label_862
.label_862:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_857
	mov	rsp, rsp
	jmp	.label_871
.label_871:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_856
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_857
	lea	rsi, [rsi]
	jmp	.label_881
.label_881:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_856
	jmp	.label_884
.label_884:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_857
	mov	rsp, rsp
	jmp	.label_867
.label_867:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_856
	lea	rsi, [rsi]
	jmp	.label_883
.label_883:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_856
	nop	
	jmp	.label_863
.label_863:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_882
	lea	rdi, [rdi]
	jmp	.label_857
.label_857:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_865
.label_856:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_870
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
	jmp	.label_877
.label_870:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_877:
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
	jmp	.label_865
.label_882:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_880
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
	jmp	.label_868
.label_880:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_868:
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
.label_865:
	jmp	.label_861
.label_861:
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
	#Procedure 0x40e8c0

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
	#Procedure 0x40e910

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
	jg	.label_887
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
	jle	.label_886
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_889
.label_886:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_891
.label_889:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_888
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_888:
	mov	rbp, rbp
	jmp	.label_891
.label_891:
	jmp	.label_892
.label_887:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_892:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_885
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_885
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_893
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
	jne	.label_890
.label_893:
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
.label_890:
	jmp	.label_885
.label_885:
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
	#Procedure 0x40ea90

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
	jmp	.label_896
.label_896:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_895
.label_894:
	lea	rsi, [rsi]
	jmp	.label_895
.label_895:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eaf0
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
	jb	.label_897
	jmp	.label_898
.label_898:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_897
	nop	
	jmp	.label_901
.label_901:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_900
	jmp	.label_897
.label_897:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_899
.label_900:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_899:
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
	#Procedure 0x40eb80
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
	jb	.label_902
	nop	
	jmp	.label_903
.label_903:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_904
	lea	rdi, [rdi]
	jmp	.label_902
.label_902:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_905
.label_904:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_905:
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
	#Procedure 0x40ec00
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
	ja	.label_906
	mov	rsp, rsp
	jmp	.label_908
.label_908:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_907
.label_906:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_907:
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
	#Procedure 0x40ec50
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
	je	.label_909
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_909:
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
	#Procedure 0x40eca0
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
	jb	.label_910
	nop	
	jmp	.label_911
.label_911:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_912
	lea	rsi, [rsi]
	jmp	.label_910
.label_910:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_913
.label_912:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_913:
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
	#Procedure 0x40ed10
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
	ja	.label_915
	jmp	.label_914
.label_914:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_916
.label_915:
	mov	byte ptr [rbp - 5], 0
.label_916:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed60
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
	ja	.label_917
	lea	rsi, [rsi]
	jmp	.label_919
.label_919:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_918
.label_917:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_918:
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
	#Procedure 0x40edb0
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
	ja	.label_920
	jmp	.label_921
.label_921:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_922
.label_920:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_922:
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
	#Procedure 0x40ee00
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
	ja	.label_923
	jmp	.label_925
.label_925:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_924
.label_923:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_924:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee50
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
	jb	.label_927
	jmp	.label_928
.label_928:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_927
	nop	
	jmp	.label_931
.label_931:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_927
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_926
	mov	rsp, rsp
	jmp	.label_927
.label_927:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_930
.label_926:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_930:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef00
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
	jb	.label_932
	mov	rbp, rbp
	jmp	.label_933
.label_933:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_935
	mov	rsp, rsp
	jmp	.label_932
.label_932:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_934
.label_935:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_934:
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
	#Procedure 0x40ef70
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
	ja	.label_936
	jmp	.label_938
.label_938:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_937
.label_936:
	mov	byte ptr [rbp - 5], 0
.label_937:
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
	#Procedure 0x40efc0
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
	jb	.label_939
	lea	rdi, [rdi]
	jmp	.label_943
.label_943:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_939
	jmp	.label_940
.label_940:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_942
	jmp	.label_939
.label_939:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_941
.label_942:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_941:
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
	#Procedure 0x40f050

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
	ja	.label_944
	jmp	.label_945
.label_945:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_946
.label_944:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_946:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0a0
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
	ja	.label_947
	mov	rbp, rbp
	jmp	.label_948
.label_948:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_949
.label_947:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_949:
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
	.section .text
	.align	16
	#Procedure 0x40f1b0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
