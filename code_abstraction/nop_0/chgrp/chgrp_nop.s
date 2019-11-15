	.section	.text
	.align	16
	#Procedure 0x401a50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	mov	rsp, rsp
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_8
.label_7:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	nop	
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	sete	cl
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	test	al, 1
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_14
.label_12:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_15
.label_14:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	nop	
	mov	edi, 5
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_13
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.36
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	nop	
	cmp	eax, 0
	je	.label_13
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	nop	
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.39
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.40
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl main
	.type main, @function
main:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x190
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 0
	mov	dword ptr [rbp - 0x1c], 0x10
	nop	
	mov	dword ptr [rbp - 0x20], 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	call	bindtextdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	call	atexit
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	call	chopt_init
.label_22:
	movabs	rdx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	getopt_long
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_16
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x108], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], ecx
	je	.label_19
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x110], eax
	je	.label_31
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x114], eax
	lea	rsi, [rsi]
	je	.label_35
	jmp	.label_38
.label_38:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x4c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x118], eax
	mov	rsp, rsp
	je	.label_41
	jmp	.label_48
.label_48:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x11c], eax
	nop	
	je	.label_56
	jmp	.label_52
.label_52:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x120], eax
	je	.label_53
	mov	rsp, rsp
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x63
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], eax
	lea	rdi, [rdi]
	je	.label_58
	mov	rsp, rsp
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x128], eax
	je	.label_44
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x68
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_23
	jmp	.label_27
.label_27:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x76
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x130], eax
	lea	rdi, [rdi]
	je	.label_29
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x108]
	mov	rsp, rsp
	sub	eax, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x134], eax
	nop	
	je	.label_34
	nop	
	jmp	.label_40
.label_40:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x138], eax
	je	.label_43
	lea	rdi, [rdi]
	jmp	.label_49
.label_49:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_50
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x108]
	nop	
	sub	eax, 0x83
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x140], eax
	je	.label_51
	lea	rdi, [rdi]
	jmp	.label_59
.label_35:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0x11
	jmp	.label_18
.label_41:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_18
.label_56:
	mov	dword ptr [rbp - 0x1c], 0x10
	lea	rdi, [rdi]
	jmp	.label_18
.label_23:
	nop	
	mov	dword ptr [rbp - 0x20], 0
	jmp	.label_18
.label_34:
	mov	dword ptr [rbp - 0x20], 1
	jmp	.label_18
.label_43:
	nop	
	mov	byte ptr [rbp - 0x11], 0
	mov	rsp, rsp
	jmp	.label_18
.label_50:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_18
.label_51:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [reference_file]],  rax
	jmp	.label_18
.label_53:
	mov	byte ptr [rbp - 0x44], 1
	nop	
	jmp	.label_18
.label_58:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_18
.label_44:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x37], 1
	jmp	.label_18
.label_29:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_18
.label_31:
	xor	edi, edi
	call	usage
.label_19:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.19
	movabs	r9, OFFSET FLAT:.str.20
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x148], rcx
	lea	rdi, [rdi]
	mov	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	mov	al, 0
	mov	rbp, rbp
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_59:
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_18:
	jmp	.label_22
.label_16:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x44], 1
	je	.label_24
	cmp	dword ptr [rbp - 0x1c], 0x10
	jne	.label_26
	nop	
	cmp	dword ptr [rbp - 0x20], 1
	lea	rsi, [rsi]
	jne	.label_28
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_28:
	mov	dword ptr [rbp - 0x20], 0
.label_26:
	nop	
	jmp	.label_39
.label_24:
	mov	dword ptr [rbp - 0x1c], 0x10
.label_39:
	mov	eax, 2
	lea	rsi, [rsi]
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x20], 0
	setne	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	byte ptr [rbp - 0x38], dl
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	sub	esi,  dword ptr [dword ptr [optind]]
	cmp	qword ptr [word ptr [reference_file]],  0
	mov	rsp, rsp
	cmovne	eax, ecx
	cmp	esi, eax
	jge	.label_45
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_55
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	jmp	.label_17
.label_55:
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 8]
	nop	
	sub	ecx, 1
	nop	
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x150], rax
	call	quote
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_17:
	mov	edi, 1
	call	usage
.label_45:
	cmp	qword ptr [word ptr [reference_file]],  0
	lea	rdi, [rdi]
	je	.label_36
	lea	rsi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [reference_file]]
	lea	rsi, [rsi]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_46
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x154], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [reference_file]]
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x154]
	nop	
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_46:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	dword ptr [rbp - 0x18], eax
	mov	edi, dword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	gid_to_name
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_21
.label_36:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	je	.label_25
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], rax
	jmp	.label_37
.label_25:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x168], rcx
	jmp	.label_37
.label_37:
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	parse_group
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_21:
	test	byte ptr [rbp - 0x44], 1
	je	.label_32
	test	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	je	.label_32
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_57
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	nop	
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str_1
	nop	
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_57:
	jmp	.label_32
.label_32:
	mov	eax, 0xffffffff
	nop	
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	or	edx, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	shl	rdi, 3
	add	rsi, rdi
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	mov	qword ptr [rbp - 0x180], rcx
	nop	
	mov	ecx, r8d
	mov	r8d, eax
	mov	rsp, rsp
	mov	r9d, eax
	mov	r10, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r10
	call	chown_files
	mov	rsp, rsp
	mov	ecx, 1
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	cmovne	ecx, edx
	lea	rsi, [rsi]
	mov	eax, ecx
	add	rsp, 0x190
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402700

	.globl parse_group
	.type parse_group, @function
parse_group:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	byte ptr [rdi], 0
	je	.label_61
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	getgrnam
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_64
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	jmp	.label_63
.label_64:
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtoul
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_62
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	jbe	.label_65
.label_62:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_65:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
.label_63:
	mov	rsp, rsp
	call	endgrent
.label_61:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi], 2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x10], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdi + 4], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x11], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x20], 0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402890
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028d0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_67
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_66
.label_67:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x20]
	mov	eax, dword ptr [rbp - 4]
	mov	edi, eax
	mov	rbp, rbp
	call	umaxtostr
	mov	qword ptr [rbp - 0x30], rax
.label_66:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	call	xstrdup
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402950

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	nop	
	call	getpwuid
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_68
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_69
.label_68:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20]
	mov	eax, dword ptr [rbp - 4]
	mov	edi, eax
	mov	rbp, rbp
	call	umaxtostr
	mov	qword ptr [rbp - 0x30], rax
.label_69:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	xstrdup
	mov	rbp, rbp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl chown_files
	.type chown_files, @function
chown_files:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	rax, qword ptr [rbp + 0x10]
	mov	r10b, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	nop	
	mov	dword ptr [rbp - 0x18], r8d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r9d
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], -1
	mov	byte ptr [rbp - 0x41], r10b
	jne	.label_70
	mov	rsp, rsp
	mov	al, 1
	cmp	dword ptr [rbp - 0x1c], -1
	mov	byte ptr [rbp - 0x41], al
	jne	.label_70
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	test	byte ptr [rcx + 0x10], 1
	mov	byte ptr [rbp - 0x41], al
	jne	.label_70
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 2
	nop	
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], cl
.label_70:
	mov	al, byte ptr [rbp - 0x41]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	test	al, 1
	nop	
	cmovne	ecx, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	or	ecx, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	esi, ecx
	call	xfts_open
	mov	qword ptr [rbp - 0x38], rax
.label_73:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	rpl_fts_read
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_76
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_71
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x11], 1
	jne	.label_74
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], esi
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_74:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], 0
.label_71:
	lea	rdi, [rdi]
	jmp	.label_75
.label_76:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x18]
	mov	r9d, dword ptr [rbp - 0x1c]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	call	change_file_owner
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	and	edx, ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	jmp	.label_73
.label_75:
	mov	rdi, qword ptr [rbp - 0x38]
	call	rpl_fts_close
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_72
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
.label_72:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x60
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl change_file_owner
	.type change_file_owner, @function
change_file_owner:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1f0
	nop	
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	dword ptr [rbp - 0x28], r9d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0xd9], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xdb], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	dec	ecx
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	sub	ecx, 9
	mov	qword ptr [rbp - 0x110], rax
	nop	
	mov	dword ptr [rbp - 0x114], ecx
	mov	rsp, rsp
	ja	.label_77
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_115]]
	lea	rdi, [rdi]
	jmp	rcx
.label_1319:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 4], 1
	je	.label_119
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_113
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_113
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jne	.label_113
	jmp	.label_127
.label_127:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_97
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	jmp	.label_122
.label_97:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x130], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rax
	call	quotearg_n_style
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_122:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edx, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	call	rpl_fts_read
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_83
.label_113:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_83
.label_119:
	jmp	.label_96
.label_1322:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rax + 4], 1
	mov	rsp, rsp
	jne	.label_103
	mov	byte ptr [rbp - 1], 1
	jmp	.label_83
.label_103:
	jmp	.label_96
.label_1324:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jne	.label_101
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_101
	mov	edx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	rpl_fts_set
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x140], eax
	mov	rsp, rsp
	jmp	.label_83
.label_101:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x11], 1
	nop	
	jne	.label_89
	movabs	rdi, OFFSET FLAT:.str.6_0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x150], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x144]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_89:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_96
.label_1323:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	mov	rbp, rbp
	jne	.label_117
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 3
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rax + 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x154], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0x154]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_117:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	lea	rsi, [rsi]
	jmp	.label_96
.label_1321:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	jne	.label_100
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0x158], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x158]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_100:
	nop	
	mov	byte ptr [rbp - 0xd9], 0
	lea	rdi, [rdi]
	jmp	.label_96
.label_1320:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	cycle_warning_required
	nop	
	test	al, 1
	jne	.label_110
	jmp	.label_82
.label_110:
	jmp	.label_114
.label_114:
	movabs	rdi, OFFSET FLAT:.str.9_0
	nop	
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x168], rax
	mov	rbp, rbp
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_83
.label_82:
	mov	rbp, rbp
	jmp	.label_96
.label_77:
	mov	rsp, rsp
	jmp	.label_96
.label_96:
	test	byte ptr [rbp - 0xd9], 1
	nop	
	jne	.label_132
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xda], 0
	mov	qword ptr [rbp - 0x48], 0
	jmp	.label_79
.label_132:
	cmp	dword ptr [rbp - 0x24], -1
	lea	rdi, [rdi]
	jne	.label_88
	cmp	dword ptr [rbp - 0x28], -1
	jne	.label_88
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	jne	.label_88
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_88
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x10], 1
	jne	.label_88
	mov	byte ptr [rbp - 0xda], 1
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x78
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_104
.label_88:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x78
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	mov	rbp, rbp
	je	.label_109
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0xa000
	lea	rdi, [rdi]
	jne	.label_109
	lea	rdx, [rbp - 0xd8]
	nop	
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	fstatat
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_128
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rax + 0x11], 1
	jne	.label_131
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.10_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x178], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_131:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], 0
.label_128:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_109:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [rbp - 0xd9], 1
	nop	
	mov	byte ptr [rbp - 0x179], cl
	lea	rsi, [rsi]
	je	.label_107
	cmp	dword ptr [rbp - 0x24], -1
	lea	rsi, [rsi]
	je	.label_120
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rdx + 0x1c]
	mov	byte ptr [rbp - 0x179], cl
	mov	rbp, rbp
	jne	.label_107
.label_120:
	mov	al, 1
	cmp	dword ptr [rbp - 0x28], -1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17a], al
	mov	rsp, rsp
	je	.label_124
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx + 0x20]
	nop	
	sete	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x17a], dl
.label_124:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x17a]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x179], al
.label_107:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x179]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xda], al
.label_104:
	jmp	.label_79
.label_79:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xd9], 1
	mov	rsp, rsp
	je	.label_92
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_95
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 2
	je	.label_95
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 6
	mov	rsp, rsp
	je	.label_95
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_92
.label_95:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	je	.label_92
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jne	.label_92
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jne	.label_92
	jmp	.label_129
.label_129:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_106
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18c], edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_102
.label_106:
	nop	
	movabs	rdi, OFFSET FLAT:.str.4_0
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_n_style
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	movabs	rdx, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x1a0], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_102:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_83
.label_92:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xda], 1
	mov	rsp, rsp
	je	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	jne	.label_94
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	call	lchownat
	cmp	eax, 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0xd9], r8b
	test	byte ptr [rbp - 0xd9], 1
	lea	rdi, [rdi]
	jne	.label_85
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x5f
	jne	.label_85
	mov	byte ptr [rbp - 0xd9], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xdb], 0
.label_85:
	jmp	.label_112
.label_94:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, rsp
	mov	dword ptr [rax], r10d
	call	restricted_chown
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xec], eax
	lea	rsi, [rsi]
	add	eax, -2
	mov	edx, eax
	sub	eax, 4
	nop	
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	dword ptr [rbp - 0x1ac], eax
	mov	rbp, rbp
	ja	.label_130
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1a8]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_86]]
	jmp	rcx
.label_1327:
	lea	rsi, [rsi]
	jmp	.label_91
.label_1329:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	call	chownat
	mov	rbp, rbp
	cmp	eax, 0
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0xd9], r8b
	jmp	.label_91
.label_1330:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], 0
	mov	rsp, rsp
	jmp	.label_91
.label_1328:
	mov	byte ptr [rbp - 0xda], 0
	mov	byte ptr [rbp - 0xd9], 0
	mov	rbp, rbp
	jmp	.label_91
.label_130:
	call	abort
.label_91:
	mov	rbp, rbp
	jmp	.label_112
.label_112:
	test	byte ptr [rbp - 0xda], 1
	je	.label_116
	test	byte ptr [rbp - 0xd9], 1
	mov	rsp, rsp
	jne	.label_116
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	mov	rbp, rbp
	jne	.label_116
	lea	rdi, [rdi]
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b0], esi
	je	.label_125
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.11_0
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b8], rax
	jmp	.label_134
.label_125:
	movabs	rdi, OFFSET FLAT:.str.12_0
	call	gettext
	mov	qword ptr [rbp - 0x1b8], rax
.label_134:
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_116:
	lea	rdi, [rdi]
	jmp	.label_90
.label_90:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_81
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 0xda], 1
	mov	byte ptr [rbp - 0x1c1], cl
	je	.label_108
	xor	eax, eax
	nop	
	mov	cl, al
	test	byte ptr [rbp - 0xd9], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c1], cl
	je	.label_108
	nop	
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xdb], 1
	mov	byte ptr [rbp - 0x1c1], cl
	je	.label_108
	cmp	dword ptr [rbp - 0x1c], -1
	mov	rbp, rbp
	je	.label_123
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 0x1c]
	nop	
	mov	byte ptr [rbp - 0x1c2], cl
	jne	.label_126
.label_123:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x20], -1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c3], al
	je	.label_133
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c3], dl
.label_133:
	nop	
	mov	al, byte ptr [rbp - 0x1c3]
	mov	byte ptr [rbp - 0x1c2], al
.label_126:
	mov	al, byte ptr [rbp - 0x1c2]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1c1], al
.label_108:
	mov	al, byte ptr [rbp - 0x1c1]
	and	al, 1
	mov	byte ptr [rbp - 0xed], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0xed], 1
	jne	.label_98
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_105
.label_98:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xd9], 1
	mov	rbp, rbp
	jne	.label_80
	lea	rdi, [rdi]
	mov	eax, 3
	mov	dword ptr [rbp - 0x1c8], eax
	mov	rsp, rsp
	jmp	.label_111
.label_80:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xdb], 1
	jne	.label_118
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x1cc], eax
	jmp	.label_121
.label_118:
	mov	eax, 2
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0xed]
	xor	dl, 0xff
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1cc], eax
.label_121:
	nop	
	mov	eax, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c8], eax
.label_111:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], eax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_78
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x1c]
	nop	
	call	uid_to_name
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rdi, [rdi]
	jmp	.label_93
.label_78:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d8], rcx
	lea	rdi, [rdi]
	jmp	.label_93
.label_93:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_99
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x20]
	call	gid_to_name
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_87
.label_99:
	xor	eax, eax
	nop	
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x1e0], rcx
	jmp	.label_87
.label_87:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0xf4]
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9, qword ptr [rax + 0x20]
	nop	
	call	describe_change
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0x108]
	call	free
.label_105:
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 4], 1
	nop	
	jne	.label_84
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	rpl_fts_set
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], eax
.label_84:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
.label_83:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1f0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl restricted_chown
	.type restricted_chown, @function
restricted_chown:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xe0
	mov	eax, dword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], r8d
	mov	dword ptr [rbp - 0x24], r9d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 2
	nop	
	mov	dword ptr [rbp - 0xc4], 0x900
	cmp	dword ptr [rbp - 0x24], -1
	lea	rdi, [rdi]
	jne	.label_141
	cmp	dword ptr [rbp - 0x28], -1
	nop	
	jne	.label_141
	nop	
	mov	dword ptr [rbp - 4], 5
	jmp	.label_139
.label_141:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_136
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_135
	mov	eax, dword ptr [rbp - 0xc4]
	or	eax, 0x10000
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_146
.label_135:
	mov	dword ptr [rbp - 4], 5
	jmp	.label_139
.label_146:
	nop	
	jmp	.label_136
.label_136:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc4]
	or	eax, 0
	nop	
	mov	edx, eax
	mov	al, 0
	call	openat
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0xc8], eax
	cmp	edx, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	jle	.label_138
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xd
	jne	.label_140
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x8000
	lea	rdi, [rdi]
	jne	.label_140
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc4]
	nop	
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	lea	rsi, [rsi]
	call	openat
	xor	edx, edx
	mov	dword ptr [rbp - 0xc8], eax
	cmp	edx, eax
	jle	.label_138
.label_140:
	call	__errno_location
	nop	
	mov	ecx, 6
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xd
	mov	rbp, rbp
	cmove	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_139
.label_138:
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0xc8]
	call	__fstat
	nop	
	cmp	eax, 0
	je	.label_147
	mov	dword ptr [rbp - 0x2c], 6
	jmp	.label_148
.label_147:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xb8]
	jne	.label_150
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_144
.label_150:
	mov	dword ptr [rbp - 0x2c], 4
	jmp	.label_143
.label_144:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], -1
	je	.label_149
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	jne	.label_142
.label_149:
	cmp	dword ptr [rbp - 0x28], -1
	mov	rsp, rsp
	je	.label_145
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0xa0]
	nop	
	jne	.label_142
.label_145:
	nop	
	mov	edi, dword ptr [rbp - 0xc8]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	call	fchown
	cmp	eax, 0
	jne	.label_137
	mov	edi, dword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	call	close
	mov	edi, 6
	mov	ecx, 2
	cmp	eax, 0
	lea	rdi, [rdi]
	cmove	edi, ecx
	mov	dword ptr [rbp - 0x2c], edi
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_139
.label_137:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 6
	mov	rbp, rbp
	jmp	.label_142
.label_142:
	lea	rdi, [rdi]
	jmp	.label_143
.label_143:
	lea	rsi, [rsi]
	jmp	.label_148
.label_148:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], ecx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc8]
	call	close
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	mov	dword ptr [rbp - 0xd4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_139:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0xe0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl describe_change
	.type describe_change, @function
describe_change:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xd0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	qword ptr [rbp - 0x30], r9
	cmp	dword ptr [rbp - 0xc], 1
	lea	rdi, [rdi]
	jne	.label_161
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_162
.label_161:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	user_group_str
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_163
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_169
.label_163:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	je	.label_178
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_155
.label_178:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_155
.label_155:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, rax
	call	user_group_str
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, ecx
	sub	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], ecx
	mov	dword ptr [rbp - 0x78], edx
	nop	
	je	.label_165
	jmp	.label_174
.label_174:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	je	.label_175
	lea	rsi, [rsi]
	jmp	.label_180
.label_180:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 4
	mov	dword ptr [rbp - 0x80], eax
	je	.label_152
	lea	rdi, [rdi]
	jmp	.label_158
.label_165:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_160
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x88], rax
	nop	
	jmp	.label_166
.label_160:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_170
	movabs	rdi, OFFSET FLAT:.str.15_0
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	nop	
	jmp	.label_176
.label_170:
	nop	
	movabs	rdi, OFFSET FLAT:.str.16_0
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
.label_176:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_166:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_156
.label_175:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_181
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_164
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.17_1
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	jmp	.label_173
.label_164:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_177
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_171
.label_177:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
.label_171:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
.label_173:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_181:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_172
	nop	
	movabs	rdi, OFFSET FLAT:.str.20_0
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	jmp	.label_179
.label_172:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_153
	nop	
	movabs	rdi, OFFSET FLAT:.str.21_0
	nop	
	call	gettext
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	jmp	.label_159
.label_153:
	movabs	rdi, OFFSET FLAT:.str.19_0
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0xb0], rax
.label_159:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xa8], rax
.label_179:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_154:
	lea	rsi, [rsi]
	jmp	.label_156
.label_152:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_157
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.22_0
	call	gettext
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_168
.label_157:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_167
	movabs	rdi, OFFSET FLAT:.str.23_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	jmp	.label_151
.label_167:
	movabs	rdi, OFFSET FLAT:.str.24_0
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
.label_151:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
.label_168:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_156
.label_158:
	call	abort
.label_156:
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0xcc], eax
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_162:
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404220

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_182
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_185
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	strlen
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdi, rax
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	stpcpy
	mov	ecx, OFFSET FLAT:.str.25
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	stpcpy
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_184
.label_185:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_184:
	jmp	.label_186
.label_182:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_183
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
.label_183:
	jmp	.label_186
.label_186:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404320
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
	#Procedure 0x404350
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
	#Procedure 0x404380

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
	je	.label_187
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_190
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_187
.label_190:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_191
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
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_189
.label_191:
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
.label_189:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_187:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_188
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_188:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl chownat
	.type chownat, @function
chownat:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	r8d, r8d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	fchownat
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404500

	.globl lchownat
	.type lchownat, @function
lchownat:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8d, 0x100
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	fchownat
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404550

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
	jae	.label_192
	jmp	.label_195
.label_195:
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
	jne	.label_195
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_194
.label_192:
	jmp	.label_193
.label_193:
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
	jne	.label_193
	jmp	.label_194
.label_194:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404690

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
	jne	.label_198
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_198:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_196
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_200
.label_196:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_200:
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
	jl	.label_199
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
	jne	.label_199
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
	jne	.label_197
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_197:
	jmp	.label_199
.label_199:
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
	#Procedure 0x404810
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
	je	.label_201
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_202
.label_201:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
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
	#Procedure 0x4048c0
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
	je	.label_203
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_204
.label_203:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_204
.label_204:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404920
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
	je	.label_205
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_206
.label_205:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404980

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
	je	.label_207
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_208
.label_207:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_208
.label_208:
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
	#Procedure 0x404a80
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
	jne	.label_209
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_209:
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
	#Procedure 0x404ae0

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
	jne	.label_210
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_210:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_212
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_211
.label_212:
	call	abort
.label_211:
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
	#Procedure 0x404b80
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
	je	.label_213
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_214
.label_213:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_214
.label_214:
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
	#Procedure 0x404c80

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
.label_222:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_286
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_290]]
	jmp	rcx
.label_1341:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1340:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_299
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_306
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_306:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_299
.label_299:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_314
.label_1342:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_314
.label_1343:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_325
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_1
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
.label_325:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_336
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_355:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_341
	jmp	.label_343
.label_343:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_346
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_346:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_355
.label_341:
	mov	rbp, rbp
	jmp	.label_336
.label_336:
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
	jmp	.label_314
.label_1338:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1337:
	mov	byte ptr [rbp - 0x7b], 1
.label_1339:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_369
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_369:
	jmp	.label_372
.label_372:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_374
	jmp	.label_378
.label_378:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_379
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_379:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_374
.label_374:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_314
.label_1336:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_314
.label_286:
	call	abort
.label_314:
	mov	qword ptr [rbp - 0x58], 0
.label_282:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_402
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
	jmp	.label_344
.label_402:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_344:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_216
	mov	rbp, rbp
	jmp	.label_226
.label_216:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_230
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_230
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_230
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_251
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_251
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_257
.label_251:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_257:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_230
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
	jne	.label_230
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_278
	jmp	.label_217
.label_278:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_230:
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
	ja	.label_280
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_291]]
	nop	
	jmp	rcx
.label_1255:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_297
	mov	rsp, rsp
	jmp	.label_302
.label_302:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_364
	jmp	.label_217
.label_364:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_311
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_311
	nop	
	jmp	.label_316
.label_316:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_317
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_324
.label_324:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_328
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_328:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_340
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_340:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_311:
	lea	rsi, [rsi]
	jmp	.label_347
.label_347:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_348:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_351
.label_351:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_287
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_287
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_287
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_287
	nop	
	jmp	.label_371
.label_371:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_373
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_380
.label_380:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_229
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_229:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_287
.label_287:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_396
.label_297:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_398
	mov	rbp, rbp
	jmp	.label_349
.label_398:
	jmp	.label_396
.label_396:
	jmp	.label_241
.label_1266:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_404
	mov	rbp, rbp
	jmp	.label_410
.label_410:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_395
	jmp	.label_218
.label_404:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_221
	jmp	.label_217
.label_221:
	jmp	.label_224
.label_395:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_227
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_227
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_227
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
	je	.label_246
	nop	
	jmp	.label_403
.label_403:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_246
	jmp	.label_259
.label_259:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_246
	jmp	.label_262
.label_262:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_246
	jmp	.label_270
.label_270:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_272
	jmp	.label_246
.label_246:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_365
	jmp	.label_217
.label_365:
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
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_284:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_298
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_305
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_305:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_309
.label_309:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_315
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_233:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_332
.label_272:
	jmp	.label_332
.label_332:
	jmp	.label_227
.label_227:
	jmp	.label_224
.label_218:
	jmp	.label_224
.label_224:
	jmp	.label_241
.label_1256:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_338
.label_1257:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_338
.label_1261:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_338
.label_1259:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_330
.label_1262:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_330
.label_1258:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_330
.label_1260:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_338
.label_1267:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_412
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_354
	nop	
	jmp	.label_217
.label_354:
	lea	rsi, [rsi]
	jmp	.label_240
.label_412:
	test	byte ptr [rbp - 0x79], 1
	je	.label_360
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_360
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_360
	jmp	.label_240
.label_360:
	jmp	.label_330
.label_330:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_368
	test	byte ptr [rbp - 0x7b], 1
	je	.label_368
	jmp	.label_217
.label_368:
	mov	rsp, rsp
	jmp	.label_338
.label_338:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_376
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_265
.label_376:
	jmp	.label_241
.label_1268:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_382
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_385
	jmp	.label_388
.label_382:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_385
.label_388:
	nop	
	jmp	.label_241
.label_385:
	jmp	.label_394
.label_394:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_295
	lea	rsi, [rsi]
	jmp	.label_241
.label_295:
	nop	
	jmp	.label_401
.label_401:
	mov	byte ptr [rbp - 0x83], 1
.label_1263:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_353
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_353
	jmp	.label_217
.label_353:
	lea	rsi, [rsi]
	jmp	.label_241
.label_1265:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_409
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_415
	jmp	.label_217
.label_415:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_220
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_220
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_220:
	jmp	.label_234
.label_234:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_235
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_235:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_243
.label_243:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_313
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_255
.label_255:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_258
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_409:
	lea	rsi, [rsi]
	jmp	.label_241
.label_1264:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_241
.label_280:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_274
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
	jmp	.label_248
.label_274:
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
	jne	.label_300
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_300:
	jmp	.label_310
.label_310:
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
	jne	.label_326
	jmp	.label_292
.label_326:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_333
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_292
.label_333:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_337
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_253:
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
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_342:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_352
	jmp	.label_356
.label_352:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_253
.label_356:
	jmp	.label_292
.label_337:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_361
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_361
	mov	qword ptr [rbp - 0xb8], 1
.label_406:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_367
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
	jb	.label_370
	jmp	.label_386
.label_386:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_370
	jmp	.label_391
.label_391:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_370
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_400
	mov	rsp, rsp
	jmp	.label_370
.label_370:
	mov	rsp, rsp
	jmp	.label_217
.label_400:
	jmp	.label_405
.label_405:
	mov	rsp, rsp
	jmp	.label_366
.label_366:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_406
.label_367:
	mov	rbp, rbp
	jmp	.label_361
.label_361:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_219
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_219:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_223
.label_223:
	lea	rsi, [rsi]
	jmp	.label_296
.label_296:
	jmp	.label_236
.label_236:
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
	jne	.label_310
.label_292:
	jmp	.label_248
.label_248:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_249
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_256
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_256
.label_249:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_225:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_263
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_263
	jmp	.label_269
.label_269:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_271
	jmp	.label_217
.label_271:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_277
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_277
	lea	rdi, [rdi]
	jmp	.label_281
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_285
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_288
.label_288:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_294
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_294:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_307
.label_307:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_331
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_277:
	jmp	.label_319
.label_319:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_321
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_321:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_238
.label_238:
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_264
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
.label_264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_260
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
.label_260:
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
	jmp	.label_301
.label_263:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_359
	lea	rdi, [rdi]
	jmp	.label_362
.label_362:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_359:
	nop	
	jmp	.label_301
.label_301:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_375
	jmp	.label_381
.label_375:
	lea	rsi, [rsi]
	jmp	.label_407
.label_407:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_384
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_384
	lea	rsi, [rsi]
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_389
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_389:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_397
.label_397:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_384:
	nop	
	jmp	.label_411
.label_411:
	mov	rsp, rsp
	jmp	.label_413
.label_413:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_414
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_414:
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
	jmp	.label_225
.label_381:
	mov	rsp, rsp
	jmp	.label_240
.label_256:
	lea	rsi, [rsi]
	jmp	.label_241
.label_241:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_244
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_247
.label_244:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_250
.label_247:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_250
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
	jne	.label_252
.label_250:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_252
	mov	rsp, rsp
	jmp	.label_240
.label_252:
	nop	
	jmp	.label_265
.label_265:
	jmp	.label_267
.label_267:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_268
	jmp	.label_217
.label_268:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_276
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_276
	lea	rdi, [rdi]
	jmp	.label_279
.label_279:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_293
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_293:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_304
.label_304:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_308
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_276:
	jmp	.label_320
.label_320:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_392
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_392:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_327
.label_327:
	nop	
	jmp	.label_240
.label_240:
	jmp	.label_273
.label_273:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_334
	test	byte ptr [rbp - 0x82], 1
	jne	.label_334
	lea	rdi, [rdi]
	jmp	.label_408
.label_408:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_322
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_334:
	jmp	.label_357
.label_357:
	nop	
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_390
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_390:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_266
	mov	byte ptr [rbp - 0x7e], 0
.label_266:
	mov	rbp, rbp
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_282
.label_226:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_377
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_377
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_377
	nop	
	jmp	.label_217
.label_377:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_231
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_231
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_231
	test	byte ptr [rbp - 0x7e], 1
	je	.label_393
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
	jmp	.label_312
.label_393:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_215
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_215
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_222
.label_215:
	jmp	.label_228
.label_228:
	mov	rbp, rbp
	jmp	.label_231
.label_231:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_232
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_232
	mov	rbp, rbp
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_239
	lea	rdi, [rdi]
	jmp	.label_242
.label_242:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_245
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_245:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_237
.label_239:
	jmp	.label_232
.label_232:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_261
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_261:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_312
.label_217:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_275
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_275
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_275:
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
.label_312:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065a0
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
	#Procedure 0x406610

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
	je	.label_416
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_417
.label_416:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_417
.label_417:
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
	je	.label_418
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_418:
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
	#Procedure 0x4067e0
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
.label_423:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_422
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
	jmp	.label_423
.label_422:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_421
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_419]],  rax
.label_421:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_420
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_420:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068f0

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
	#Procedure 0x406940

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
	jge	.label_429
	call	abort
.label_429:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_424
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
	jge	.label_425
	call	xalloc_die
.label_425:
	test	byte ptr [rbp - 0x31], 1
	je	.label_426
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_430
.label_426:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_430:
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
	je	.label_428
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_419]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_428:
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
.label_424:
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
	ja	.label_427
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
	je	.label_431
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_431:
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
.label_427:
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
	#Procedure 0x406c70

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
	#Procedure 0x406cb0
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
	#Procedure 0x406ce0
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
	#Procedure 0x406d20

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
	#Procedure 0x406d80

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
	jne	.label_432
	call	abort
.label_432:
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
	#Procedure 0x406e20

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
	#Procedure 0x406e90

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
	#Procedure 0x406ed0
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
	#Procedure 0x406f10

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
	#Procedure 0x406fc0

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
	#Procedure 0x407000

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
	#Procedure 0x407030
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
	#Procedure 0x407070

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
	#Procedure 0x407160

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
	#Procedure 0x4071b0

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
	#Procedure 0x407250
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
	#Procedure 0x4072a0
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
	#Procedure 0x407300

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
	#Procedure 0x407340
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
	#Procedure 0x407380

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
	#Procedure 0x4073c0

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
	#Procedure 0x407400

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
	je	.label_436
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_434
.label_436:
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
	jne	.label_435
	movabs	rax, OFFSET FLAT:.str.15_1
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_434
.label_435:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_433
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_2
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_434
.label_433:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_434:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407540

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_1
	lea	rsi, [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_438
	mov	qword ptr [rbp - 8], 0
	jmp	.label_437
.label_438:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_437:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075d0

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
	je	.label_441
	movabs	rsi, OFFSET FLAT:.str_6
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
	jmp	.label_443
.label_441:
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
.label_443:
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_442
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_440]]
	jmp	rcx
.label_1345:
	jmp	.label_439
.label_1346:
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
	jmp	.label_439
.label_1347:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_439
.label_1348:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_439
.label_1349:
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
	jmp	.label_439
.label_1350:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_439
.label_1351:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_439
.label_1352:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_2
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
	jmp	.label_439
.label_1353:
	movabs	rdi, OFFSET FLAT:.str.11_2
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
	jmp	.label_439
.label_1354:
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
	jmp	.label_439
.label_442:
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
.label_439:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d40
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
.label_444:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_445
	mov	rbp, rbp
	jmp	.label_446
.label_446:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_444
.label_445:
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
	#Procedure 0x407df0

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
.label_449:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_448
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_451
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
	jmp	.label_452
.label_451:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_452:
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
.label_448:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_447
	mov	rsp, rsp
	jmp	.label_450
.label_447:
	jmp	.label_453
.label_453:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_449
.label_450:
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
	#Procedure 0x407f50

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
	je	.label_454
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
.label_454:
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
	#Procedure 0x408100
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
	movabs	rsi, OFFSET FLAT:.str.15_2
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_2
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
	#Procedure 0x4081b0
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
	jae	.label_455
	mov	rbp, rbp
	call	xalloc_die
.label_455:
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
	#Procedure 0x408210

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
	jne	.label_456
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_456
	lea	rdi, [rdi]
	call	xalloc_die
.label_456:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408270
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
	jae	.label_457
	mov	rsp, rsp
	call	xalloc_die
.label_457:
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
	#Procedure 0x4082f0

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
	jne	.label_458
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_458
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_460
.label_458:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_459
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_459
	lea	rsi, [rsi]
	call	xalloc_die
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_460:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083a0

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
	jne	.label_461
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_463
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
.label_463:
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
	jae	.label_465
	call	xalloc_die
.label_465:
	lea	rsi, [rsi]
	jmp	.label_464
.label_461:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_462
	call	xalloc_die
.label_462:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_464:
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
	#Procedure 0x4084d0

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
	#Procedure 0x408500
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
	#Procedure 0x408540
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
	#Procedure 0x408590
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
	jb	.label_466
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_467
.label_466:
	lea	rsi, [rsi]
	call	xalloc_die
.label_467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408600

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
	#Procedure 0x408650

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
	#Procedure 0x4086b0

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
	#Procedure 0x408710

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	or	esi, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	rpl_fts_open
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_470
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_469
	lea	rdi, [rdi]
	jmp	.label_468
.label_469:
	nop	
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_468:
	lea	rdi, [rdi]
	call	xalloc_die
.label_470:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087c0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_471
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	je	.label_473
.label_471:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	nop	
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0x12], cl
	lea	rdi, [rdi]
	je	.label_472
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_472
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_472:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_473:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408890

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_516
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0x24
	mov	rsp, rsp
	jg	.label_516
	nop	
	jmp	.label_534
.label_516:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_534:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_505
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_484
.label_505:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_484
.label_484:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_526:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x59]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_515
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_526
.label_515:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x59]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_531
	mov	dword ptr [rbp - 4], 4
	nop	
	jmp	.label_495
.label_531:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jne	.label_477
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_486
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_486
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_486
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 1
	nop	
	jmp	.label_507
.label_486:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 4
	jmp	.label_495
.label_507:
	jmp	.label_503
.label_477:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_519
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_525
	mov	dword ptr [rbp - 4], 4
	jmp	.label_495
.label_525:
	mov	dword ptr [rbp - 0x4c], 1
.label_519:
	mov	rbp, rbp
	jmp	.label_503
.label_503:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_530
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	nop	
	jmp	.label_495
.label_530:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_518
	mov	dword ptr [rbp - 0x60], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_495
.label_492:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	lea	rdi, [rdi]
	je	.label_474
	lea	rdi, [rdi]
	jmp	.label_513
.label_513:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	je	.label_474
	nop	
	jmp	.label_522
.label_522:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	je	.label_474
	lea	rsi, [rsi]
	jmp	.label_511
.label_511:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_474
	jmp	.label_535
.label_535:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	je	.label_474
	jmp	.label_539
.label_539:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	je	.label_474
	jmp	.label_483
.label_483:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_474
	mov	rsp, rsp
	jmp	.label_494
.label_494:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_474
	lea	rsi, [rsi]
	jmp	.label_504
.label_504:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_474
	nop	
	jmp	.label_476
.label_476:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_474
	jmp	.label_521
.label_521:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_523
	jmp	.label_474
.label_474:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_520
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], ecx
	nop	
	mov	dword ptr [rbp - 0xb0], edx
	mov	rbp, rbp
	je	.label_480
	mov	rsp, rsp
	jmp	.label_478
.label_478:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_480
	jmp	.label_489
.label_489:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_491
	lea	rsi, [rsi]
	jmp	.label_497
.label_497:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_500
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_500:
	jmp	.label_491
.label_480:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_491:
	lea	rsi, [rsi]
	jmp	.label_520
.label_520:
	nop	
	jmp	.label_523
.label_523:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	nop	
	je	.label_524
	mov	rbp, rbp
	jmp	.label_529
.label_529:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	je	.label_533
	lea	rdi, [rdi]
	jmp	.label_537
.label_537:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_482
	jmp	.label_479
.label_479:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_481
	lea	rsi, [rsi]
	jmp	.label_490
.label_490:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_493
	mov	rsp, rsp
	jmp	.label_498
.label_498:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_485
	jmp	.label_508
.label_508:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_509
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_487
	nop	
	jmp	.label_488
.label_488:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_528
	jmp	.label_532
.label_532:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_536
	jmp	.label_527
.label_527:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_538
	nop	
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	lea	rdi, [rdi]
	je	.label_482
	mov	rbp, rbp
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	lea	rdi, [rdi]
	je	.label_481
	lea	rsi, [rsi]
	jmp	.label_501
.label_501:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	lea	rsi, [rsi]
	je	.label_493
	nop	
	jmp	.label_510
.label_510:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_509
	mov	rbp, rbp
	jmp	.label_514
.label_514:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_506
	jmp	.label_502
.label_536:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_475
.label_524:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_475
.label_538:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_475
.label_533:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_482:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_475
.label_481:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	jmp	.label_475
.label_493:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_485:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_509:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_506:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_487:
	lea	rdi, [rbp - 0x48]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_528:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_475
.label_502:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_495
.label_475:
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_499
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_499:
	lea	rsi, [rsi]
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
.label_495:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091d0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_541
.label_540:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_541:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409250

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_543:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_542
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_543
.label_542:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092c0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x90
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_574
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_545
.label_574:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_552
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x200
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_552
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_545
.label_552:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x12
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_563
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_545
.label_563:
	mov	rsp, rsp
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_570
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_545
.label_570:
	xor	esi, esi
	mov	eax, 0x80
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x48], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	eax, 2
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_567
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_567:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_559
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_559
	jmp	.label_550
.label_550:
	movabs	rdi, OFFSET FLAT:.str_9
	xor	esi, esi
	mov	al, 0
	nop	
	call	open_safer
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jge	.label_568
	mov	rsp, rsp
	jmp	.label_569
.label_568:
	mov	edi, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0x74], eax
.label_569:
	jmp	.label_559
.label_559:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_maxarglen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	jbe	.label_547
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_548
.label_547:
	mov	rsp, rsp
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	rsp, rsp
	call	fts_palloc
	test	al, 1
	jne	.label_555
	jmp	.label_558
.label_555:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_560
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	fts_alloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_579
	mov	rsp, rsp
	jmp	.label_565
.label_579:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x68], -1
.label_560:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x89], al
	mov	rbp, rbp
	je	.label_572
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], dl
.label_572:
	mov	al, byte ptr [rbp - 0x89]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_575:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_557
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	ecx, 0x800
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_551
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_549
	nop	
	jmp	.label_544
.label_544:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x8a], cl
	jae	.label_571
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 2
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2f
	mov	rsp, rsp
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8a], sil
.label_571:
	nop	
	mov	al, byte ptr [rbp - 0x8a]
	test	al, 1
	jne	.label_580
	mov	rbp, rbp
	jmp	.label_582
.label_580:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_544
.label_582:
	lea	rdi, [rdi]
	jmp	.label_549
.label_549:
	jmp	.label_551
.label_551:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	call	fts_alloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jne	.label_578
	jmp	.label_554
.label_578:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 0x108
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x51], 1
	je	.label_566
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_566
	nop	
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x30]
	call	fts_set_stat_required
	jmp	.label_573
.label_566:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	word ptr [rsi + 0x70], ax
.label_573:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_577
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_561
.label_577:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_546
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_581
.label_546:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_581:
	lea	rsi, [rsi]
	jmp	.label_561
.label_561:
	lea	rsi, [rsi]
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_575
.label_557:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_564
	cmp	qword ptr [rbp - 0x40], 1
	nop	
	jbe	.label_564
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	fts_sort
	mov	qword ptr [rbp - 0x38], rax
.label_564:
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_576
	jmp	.label_554
.label_576:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	word ptr [rax + 0x70], 9
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x58], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	setup_dir
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_553
	lea	rsi, [rsi]
	jmp	.label_554
.label_553:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_556
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_556
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_9
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	diropen
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_556
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_556:
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_545
.label_554:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	free
.label_565:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a50

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_585:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_584
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_586
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_586:
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_585
.label_584:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ad0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsi, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_587
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_589
.label_587:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_588
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_589
.label_588:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_589:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409be0

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_590
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_591
.label_590:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	byte ptr [rdx + rax + 0x108], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x28], 0
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_591:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d20

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	je	.label_592
	lea	rdi, [rdi]
	call	abort
.label_592:
	nop	
	jmp	.label_593
.label_593:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, 2
	nop	
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa8], rsi
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409da0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	add	rsi, 0x78
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_605
	mov	byte ptr [rbp - 0x19], 1
.label_605:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_595
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_602
.label_595:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_597
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_603
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_603
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp - 2], 0xd
	jmp	.label_596
.label_603:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_609
.label_597:
	jmp	.label_606
.label_602:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	fstatat
	cmp	eax, 0
	je	.label_607
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], ecx
.label_609:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	mov	word ptr [rbp - 2], 0xa
	jmp	.label_596
.label_607:
	lea	rdi, [rdi]
	jmp	.label_606
.label_606:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_598
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_594
.label_598:
	mov	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_604
.label_594:
	mov	rsp, rsp
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	and	edi, 0x20
	cmp	edi, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	movsxd	rsi, eax
	nop	
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
.label_604:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax + 0x108]
	lea	rdi, [rdi]
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	jne	.label_599
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_608
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x109]
	nop	
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_599
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_599
.label_608:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	nop	
	mov	word ptr [rbp - 2], si
	mov	rbp, rbp
	jmp	.label_596
.label_599:
	mov	word ptr [rbp - 2], 1
	jmp	.label_596
.label_610:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	nop	
	jne	.label_600
	mov	rsp, rsp
	mov	word ptr [rbp - 2], 0xc
	jmp	.label_596
.label_600:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_601
	lea	rsi, [rsi]
	mov	word ptr [rbp - 2], 8
	jmp	.label_596
.label_601:
	mov	rbp, rbp
	mov	word ptr [rbp - 2], 3
.label_596:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 2]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0d0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	rsp, rsp
	lea	rax, [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rax
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_614
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_612
.label_614:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	jbe	.label_616
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, 0x28
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_619
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_617
.label_619:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_620
.label_617:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_616:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_615:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_618
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_615
.label_618:
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	qsort
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
.label_611:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_613
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_611
.label_613:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_620:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a330

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x48]
	mov	rbp, rbp
	and	eax, 0x102
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_621
	mov	eax, 0x1f
	lea	rsi, [rsi]
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:AD_hash
	movabs	rcx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	jne	.label_624
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_622
.label_624:
	jmp	.label_625
.label_621:
	mov	eax, 0x20
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_623
	mov	byte ptr [rbp - 1], 0
	jmp	.label_622
.label_623:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_625:
	mov	byte ptr [rbp - 1], 1
.label_622:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a430

	.globl diropen
	.type diropen, @function
diropen:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x48]
	nop	
	and	edx, 0x10
	mov	rbp, rbp
	cmp	edx, 0
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 0x90900
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_626
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, 0
	nop	
	call	openat_safer
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_627
.label_626:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	al, 0
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_627:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4e0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
.label_629:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_630
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_628
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_628:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	jmp	.label_629
.label_630:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a550

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_644
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_631:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jl	.label_632
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_647
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_642
.label_647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_642:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_631
.label_632:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_644:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_634
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_634:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_645
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x2c]
	mov	rsp, rsp
	jg	.label_639
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	nop	
	cmp	eax, 0
	nop	
	je	.label_635
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
.label_635:
	lea	rsi, [rsi]
	jmp	.label_639
.label_639:
	jmp	.label_640
.label_645:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_637
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_637:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rax + 0x28]
	nop	
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_633
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	jne	.label_636
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
.label_636:
	jmp	.label_633
.label_633:
	lea	rdi, [rdi]
	jmp	.label_641
.label_641:
	jmp	.label_640
.label_640:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	je	.label_646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	call	hash_free
.label_646:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	je	.label_638
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_643
.label_638:
	mov	dword ptr [rbp - 4], 0
.label_643:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a800

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_648:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_650
	nop	
	jmp	.label_651
.label_650:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc], eax
	cmp	ecx, dword ptr [rbp - 0xc]
	jg	.label_649
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_649:
	jmp	.label_648
.label_651:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a870

	.globl free_dir
	.type free_dir, @function
free_dir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x102
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_652
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_654
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	call	hash_free
.label_654:
	lea	rdi, [rdi]
	jmp	.label_653
.label_652:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
.label_653:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8f0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi], 0
	mov	rbp, rbp
	je	.label_722
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_665
.label_722:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_659
.label_665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	cx, word ptr [rax + 0x74]
	nop	
	mov	word ptr [rbp - 0x22], cx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	movzx	edx, word ptr [rbp - 0x22]
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_678
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	jmp	.label_659
.label_678:
	movzx	eax, word ptr [rbp - 0x22]
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_706
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	nop	
	je	.label_712
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rsp, rsp
	cmp	ecx, 0xd
	jne	.label_706
.label_712:
	nop	
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_663
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_663
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_719
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 7
	jmp	.label_688
.label_719:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	nop	
	or	ecx, 2
	mov	dx, cx
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x72], dx
.label_688:
	jmp	.label_663
.label_663:
	jmp	.label_664
.label_706:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_704
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_711
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_715
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_715
.label_711:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	and	ecx, 2
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_655
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x3c], eax
.label_655:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_671
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
.label_671:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_659
.label_715:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_698
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x1000
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_698
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_698:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_723
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_703
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_691:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_689
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_691
.label_689:
	jmp	.label_703
.label_703:
	lea	rdi, [rdi]
	jmp	.label_683
.label_723:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_713
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_717
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_659
.label_717:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x40], 0
	je	.label_660
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_660
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
.label_660:
	nop	
	jmp	.label_694
.label_694:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_659
.label_713:
	lea	rdi, [rdi]
	jmp	.label_683
.label_683:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	jmp	.label_684
.label_704:
	mov	rsp, rsp
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	jne	.label_697
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_697
	mov	rbp, rbp
	mov	esi, 3
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	fts_build
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_658
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x2000
	nop	
	cmp	ecx, 0
	je	.label_669
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_659
.label_669:
	jmp	.label_657
.label_658:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	jmp	.label_684
.label_697:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_687
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_702
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	restore_initial_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_710
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x48], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_659
.label_710:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free_dir
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_load
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	setup_dir
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_664
.label_702:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_668
	lea	rdi, [rdi]
	jmp	.label_674
.label_668:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + 0x74]
	nop	
	cmp	ecx, 2
	nop	
	jne	.label_676
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	fts_stat
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rsi + 0x70]
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_670
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_670
	movabs	rsi, OFFSET FLAT:.str_9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_705
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	mov	rbp, rbp
	jmp	.label_718
.label_705:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_718:
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
.label_676:
	mov	rbp, rbp
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jne	.label_720
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_724
.label_720:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x50], rax
.label_724:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0x2f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_664:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_709
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 2
	mov	rsp, rsp
	jne	.label_666
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	nop	
	jne	.label_672
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_672
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_672
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_672
	nop	
	jmp	.label_675
.label_672:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsi + 0x90]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	nop	
	jne	.label_661
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	je	.label_661
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	jae	.label_661
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_661
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x68]
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x68], rcx
.label_661:
	mov	rbp, rbp
	jmp	.label_675
.label_675:
	jmp	.label_677
.label_666:
	nop	
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_682
	nop	
	call	abort
.label_682:
	jmp	.label_686
.label_686:
	mov	rsp, rsp
	jmp	.label_677
.label_677:
	mov	rsp, rsp
	jmp	.label_709
.label_709:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_695
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_699
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_699:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	enter_dir
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_701
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_659
.label_701:
	mov	rbp, rbp
	jmp	.label_695
.label_695:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_659
.label_687:
	jmp	.label_657
.label_657:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x58], -1
	mov	rbp, rbp
	jne	.label_690
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_659
.label_690:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rsp, rsp
	jne	.label_700
	call	abort
.label_700:
	jmp	.label_708
.label_708:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_721
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_693
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rbp, rbp
	mov	dword ptr [rax + 0x48], ecx
.label_693:
	jmp	.label_667
.label_721:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	je	.label_681
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_673
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_707
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x44]
	nop	
	call	cwd_advance_fd
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	cl, dl
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_696
	jmp	.label_673
.label_707:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	fchdir
	cmp	eax, 0
	je	.label_673
.label_696:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_673:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_656
.label_681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_662
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	nop	
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_662
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_662:
	jmp	.label_656
.label_656:
	nop	
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rbp, rbp
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_692
	nop	
	mov	eax, 6
	mov	rbp, rbp
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	si, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	nop	
	jne	.label_680
	lea	rdi, [rdi]
	jmp	.label_716
.label_716:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	leave_dir
	jmp	.label_680
.label_680:
	mov	rsp, rsp
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_725
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	jmp	.label_714
.label_725:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_714:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_659:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b650

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x102
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_730
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	rsi, rax
	call	hash_delete
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jne	.label_728
	call	abort
.label_728:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	lea	rdi, [rdi]
	jmp	.label_727
.label_730:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_732
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_732
	mov	rsp, rsp
	jmp	.label_731
.label_731:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_733
	lea	rsi, [rsi]
	call	abort
.label_733:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_729
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_729
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_729:
	mov	rsp, rsp
	jmp	.label_726
.label_726:
	mov	rsp, rsp
	jmp	.label_732
.label_732:
	jmp	.label_727
.label_727:
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7f0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_749
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xcd], cl
.label_749:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	edx, 4
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_747
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_735
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_735
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
.label_735:
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_741
.label_747:
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jge	.label_745
	mov	rsp, rsp
	test	byte ptr [rbp - 0x2d], 1
	je	.label_745
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_745
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_738
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	i_ring_pop
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	byte ptr [rbp - 0x2d], 1
	cmp	ecx, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	jg	.label_743
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_743:
	jmp	.label_738
.label_738:
	jmp	.label_745
.label_745:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	jge	.label_748
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	call	diropen
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_748
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_741
.label_748:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 2
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_744
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_734
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_2
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_734
.label_744:
	lea	rsi, [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x34]
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_737
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_739
.label_737:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_742
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc0]
	nop	
	je	.label_740
.label_742:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	mov	rbp, rbp
	jmp	.label_739
.label_740:
	jmp	.label_734
.label_734:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_736
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x34]
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_741
.label_736:
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_739:
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_746
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	mov	edi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_746:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_741:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb40

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xf0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdi + 0x18], 0
	lea	rsi, [rsi]
	setne	al
	nop	
	xor	al, 0xff
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], al
	mov	byte ptr [rbp - 0x82], 0
	test	byte ptr [rbp - 0x81], 1
	mov	rbp, rbp
	je	.label_798
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	call	dirfd
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jge	.label_810
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xb0], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_818
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
.label_818:
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_756
.label_810:
	mov	rbp, rbp
	jmp	.label_760
.label_798:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_761
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_761
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	dword ptr [rbp - 0xb4], ecx
	mov	rsp, rsp
	jmp	.label_772
.label_761:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_772
.label_772:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rdi + 0x48]
	mov	rsp, rsp
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xb8], eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rbp - 0xc1], dl
	je	.label_775
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc2], cl
	nop	
	je	.label_789
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0xc2], cl
.label_789:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc2]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc1], al
.label_775:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x74]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	esi, 0x20000
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc0]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_803
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	nop	
	jne	.label_805
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 4
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_805:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_756
.label_803:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rbp, rbp
	jne	.label_811
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_807
.label_811:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_762
	jmp	.label_755
.label_755:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	fts_stat
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rbp - 0xc4], ax
	nop	
	call	enter_dir
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_770
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_756
.label_770:
	jmp	.label_762
.label_762:
	jmp	.label_807
.label_807:
	jmp	.label_760
.label_760:
	nop	
	mov	eax, 0x186a0
	nop	
	mov	ecx, eax
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rcx
	test	byte ptr [rbp - 0x81], 1
	mov	rsp, rsp
	je	.label_773
	mov	byte ptr [rbp - 0x45], 1
	lea	rsi, [rsi]
	jmp	.label_786
.label_773:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc5], cl
	lea	rdi, [rdi]
	je	.label_788
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc6], cl
	lea	rdi, [rdi]
	je	.label_792
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	lea	rdi, [rdi]
	je	.label_792
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_792
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdx + 0x88], 2
	nop	
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_792
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	leaf_optimization
	mov	rbp, rbp
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc6], cl
.label_792:
	mov	al, byte ptr [rbp - 0xc6]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc5], al
.label_788:
	mov	al, byte ptr [rbp - 0xc5]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], al
	test	byte ptr [rbp - 0x45], 1
	mov	rsp, rsp
	jne	.label_812
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_797
.label_812:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_819
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x74], eax
.label_819:
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_758
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	call	fts_safe_changedir
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_767
.label_758:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x45], 1
	je	.label_769
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_769
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], ecx
.label_769:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0x45], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	closedir
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_782
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x74]
	jg	.label_782
	mov	edi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	call	close
	nop	
	mov	dword ptr [rbp - 0xd0], eax
.label_782:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_796
.label_767:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], 1
.label_796:
	nop	
	jmp	.label_797
.label_797:
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_808
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	jmp	.label_801
.label_808:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
.label_801:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_757
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], 0x2f
	mov	rsp, rsp
	jmp	.label_814
.label_757:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
.label_814:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x46], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
.label_778:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	je	.label_771
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	jne	.label_776
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_783
	call	__errno_location
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], edx
	nop	
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd9], cl
	mov	rbp, rbp
	jne	.label_787
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_787:
	mov	al, byte ptr [rbp - 0xd9]
	mov	rsp, rsp
	mov	ecx, 4
	mov	rsp, rsp
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x80]
	mov	word ptr [rdi + 0x70], si
.label_783:
	jmp	.label_771
.label_776:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_765
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_765
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x14], 0
	mov	rsp, rsp
	je	.label_802
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_765
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_765
.label_802:
	mov	rsp, rsp
	jmp	.label_778
.label_765:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	nop	
	mov	rdi, rax
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_821
	jmp	.label_751
.label_821:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_752
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 1
	mov	rsi, rax
	mov	rbp, rbp
	call	fts_palloc
	test	al, 1
	mov	rbp, rbp
	jne	.label_766
	jmp	.label_751
.label_751:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	fts_lfree
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe0], eax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x70], 7
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xe4], ecx
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_756
.label_766:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	je	.label_791
	nop	
	mov	byte ptr [rbp - 0x46], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 4
	cmp	ecx, 0
	je	.label_795
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
.label_795:
	jmp	.label_791
.label_791:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_752:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	fts_lfree
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	nop	
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe8], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 8], 0
	jmp	.label_756
.label_799:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	edx, 4
	cmp	edx, 0
	je	.label_820
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x60]
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	rsi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_774
.label_820:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
.label_774:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_781
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	nop	
	je	.label_784
.label_781:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe9], cl
	je	.label_790
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xe9], cl
	je	.label_790
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0xe9], cl
	nop	
	je	.label_790
	mov	rax, qword ptr [rbp - 0xa8]
	movzx	ecx, byte ptr [rax + 0x12]
	nop	
	cmp	ecx, 4
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe9], dl
.label_790:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xe9]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xa9], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x78
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	movzx	esi, byte ptr [rdx + 0x12]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rbp - 0xa9]
	xor	al, 0xff
	nop	
	and	al, 1
	nop	
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_816
.label_784:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	word ptr [rsi + 0x70], ax
.label_816:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_750
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_754
.label_750:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_754:
	cmp	qword ptr [rbp - 0x30], 0x2710
	jne	.label_759
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_759
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	call	dirent_inode_sort_may_be_useful
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x82], al
.label_759:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_804
	mov	rsp, rsp
	jmp	.label_777
.label_804:
	nop	
	jmp	.label_778
.label_771:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_780
	jmp	.label_793
.label_793:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_780
.label_780:
	lea	rdi, [rdi]
	jmp	.label_777
.label_777:
	test	byte ptr [rbp - 0x46], 1
	mov	rsp, rsp
	je	.label_794
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	fts_padjust
.label_794:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_785
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_817
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_800
.label_817:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
.label_800:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_785:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x81], 1
	jne	.label_753
	nop	
	test	byte ptr [rbp - 0x45], 1
	lea	rsi, [rsi]
	je	.label_753
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_806
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_753
.label_806:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_809
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	restore_initial_cwd
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_815
	jmp	.label_753
.label_809:
	mov	edx, 0xffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	fts_safe_changedir
	nop	
	cmp	eax, 0
	je	.label_753
.label_815:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_756
.label_753:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_764
	cmp	dword ptr [rbp - 0x14], 3
	mov	rsp, rsp
	jne	.label_768
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_768
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	lea	rdi, [rdi]
	je	.label_768
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 6
.label_768:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_756
.label_764:
	test	byte ptr [rbp - 0x82], 1
	je	.label_779
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	fts_sort
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
.label_779:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_763
	cmp	qword ptr [rbp - 0x30], 1
	mov	rsp, rsp
	jbe	.label_763
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
.label_763:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_756:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0xf0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb70

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], cl
	mov	rbp, rbp
	jne	.label_827
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_825
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	je	.label_823
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_826
.label_823:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
.label_826:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	jmp	.label_824
.label_825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_822
	mov	eax, 0xffffff9c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_828
.label_822:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_828:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x20], eax
.label_824:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], cl
.label_827:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	ecx, al
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccd0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x2f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x108
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 0x108
	mov	rdi, rcx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_829
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x108
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_830
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_829
.label_830:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x108
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	add	rdi, 1
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x30]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
.label_829:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce30

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	mov	rsp, rsp
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	je	.label_838
	jmp	.label_841
.label_841:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	je	.label_836
	lea	rdi, [rdi]
	jmp	.label_831
.label_831:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	je	.label_834
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	je	.label_843
	mov	rsp, rsp
	jmp	.label_832
.label_832:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x40], rax
	je	.label_835
	jmp	.label_840
.label_840:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x48], rax
	je	.label_843
	lea	rsi, [rsi]
	jmp	.label_844
.label_844:
	mov	eax, 0xff534d42
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	je	.label_833
	lea	rdi, [rdi]
	jmp	.label_839
.label_843:
	mov	dword ptr [rbp - 4], 2
	lea	rsi, [rsi]
	jmp	.label_837
.label_838:
	lea	rdi, [rdi]
	jmp	.label_835
.label_835:
	lea	rsi, [rsi]
	jmp	.label_833
.label_833:
	jmp	.label_836
.label_836:
	mov	rbp, rbp
	jmp	.label_834
.label_834:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_837
.label_839:
	mov	dword ptr [rbp - 4], 1
.label_837:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf80

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_845
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, 0x78
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	jne	.label_851
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_846
.label_851:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	je	.label_850
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_852
	mov	byte ptr [rbp - 1], 0
	jmp	.label_846
.label_852:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 2
.label_850:
	mov	rbp, rbp
	jmp	.label_848
.label_845:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_847
	jmp	.label_849
.label_847:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_849:
	jmp	.label_848
.label_848:
	mov	byte ptr [rbp - 1], 1
.label_846:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d110

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	al, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	edx, dword ptr [rdi + 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	jne	.label_856
	cmp	dword ptr [rbp - 0x14], -0x64
	mov	rsp, rsp
	je	.label_856
	call	abort
.label_856:
	mov	rsp, rsp
	jmp	.label_854
.label_854:
	nop	
	test	byte ptr [rbp - 0xd], 1
	je	.label_853
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x60
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	esi, dword ptr [rbp - 0x18]
	jg	.label_859
	mov	edi, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
.label_859:
	mov	rsp, rsp
	jmp	.label_857
.label_853:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_855
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_858
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
.label_858:
	jmp	.label_855
.label_855:
	lea	rdi, [rdi]
	jmp	.label_857
.label_857:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x2c], eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d220

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_860
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_860
	cmp	dword ptr [rbp - 0x1c], 2
	lea	rsi, [rsi]
	je	.label_860
	cmp	dword ptr [rbp - 0x1c], 3
	nop	
	je	.label_860
	nop	
	cmp	dword ptr [rbp - 0x1c], 4
	mov	rsp, rsp
	je	.label_860
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_861
.label_860:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x74], cx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_861:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2c0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	je	.label_862
	nop	
	cmp	dword ptr [rbp - 0x14], 0x1000
	mov	rbp, rbp
	je	.label_862
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_868
.label_862:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_873
	mov	qword ptr [rbp - 8], 0
	jmp	.label_868
.label_873:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_871
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_868
.label_871:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_863
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_868
.label_863:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_872
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
.label_872:
	cmp	dword ptr [rbp - 0x14], 0x1000
	jne	.label_865
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 2
	nop	
	jmp	.label_875
.label_865:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 1
.label_875:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_864
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_864
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_874
.label_864:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_868
.label_874:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_9
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	nop	
	jge	.label_866
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_868
.label_866:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	lea	rsi, [rsi]
	cmp	esi, 0
	mov	rsp, rsp
	je	.label_870
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x24]
	call	cwd_advance_fd
	jmp	.label_869
.label_870:
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	call	fchdir
	cmp	eax, 0
	je	.label_867
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	call	close
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], ecx
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_868
.label_867:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_869:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_868:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5a0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5e0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	jne	.label_876
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
.label_876:
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d660

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	mov	rbp, rbp
	cmp	esi, 0
	jne	.label_884
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_878
.label_884:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_877
	mov	eax, 0xd
	mov	edi, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_type_hash
	movabs	rcx, OFFSET FLAT:dev_type_compare
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:free
	mov	rbp, rbp
	call	hash_initialize
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_877:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_882
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_lookup
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_881
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_878
.label_881:
	nop	
	jmp	.label_882
.label_882:
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jl	.label_890
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	call	fstatfs
	cmp	eax, 0
	nop	
	je	.label_883
.label_890:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_878
.label_883:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_880
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	lea	rsi, [rsi]
	je	.label_879
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_888
	mov	rsp, rsp
	jmp	.label_889
.label_889:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_885
	call	abort
.label_885:
	nop	
	jmp	.label_886
.label_886:
	jmp	.label_887
.label_888:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_887:
	jmp	.label_879
.label_879:
	jmp	.label_880
.label_880:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_878:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8b0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d900

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d960

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	dec	esi
	lea	rdi, [rdi]
	mov	edi, esi
	sub	esi, 0xb
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], esi
	mov	rsp, rsp
	ja	.label_891
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_892]]
	jmp	rcx
.label_1290:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0x6000
	jmp	.label_893
.label_1288:
	mov	dword ptr [rbp - 0x10], 0x2000
	mov	rsp, rsp
	jmp	.label_893
.label_1289:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0x4000
	mov	rbp, rbp
	jmp	.label_893
.label_1287:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0x1000
	mov	rbp, rbp
	jmp	.label_893
.label_1292:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0xa000
	mov	rsp, rsp
	jmp	.label_893
.label_1291:
	mov	dword ptr [rbp - 0x10], 0x8000
	jmp	.label_893
.label_1293:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0xc000
	jmp	.label_893
.label_891:
	mov	dword ptr [rbp - 0x10], 0
.label_893:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da30

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	je	.label_898
	lea	rdi, [rdi]
	jmp	.label_896
.label_896:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x1021994
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	je	.label_898
	jmp	.label_897
.label_897:
	lea	rsi, [rsi]
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	jne	.label_894
	jmp	.label_898
.label_898:
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_895
.label_894:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
.label_895:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dae0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_903:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_904
	nop	
	jmp	.label_899
.label_899:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 0x108
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_901
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	mov	rbp, rbp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_901:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_907
.label_907:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_903
.label_904:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_900:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_902
	lea	rdi, [rdi]
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_909
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	mov	rbp, rbp
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
.label_909:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_906
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_905
.label_906:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_905:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_900
.label_902:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc70

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_910
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_911
.label_910:
	xor	eax, eax
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x80]
	nop	
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_911:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd00

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x28]
	call	rax
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd70

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
	jne	.label_912
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_912:
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
	ja	.label_913
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_913
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_913
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
	jmp	.label_914
.label_913:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_914:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de60

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
	jne	.label_915
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_919
.label_915:
	mov	rbp, rbp
	jmp	.label_916
.label_916:
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
	jne	.label_917
	jmp	.label_918
.label_917:
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
	je	.label_916
.label_918:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_919:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df50

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
	jne	.label_922
	test	byte ptr [rbp - 0x13], 1
	je	.label_921
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_922
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_921
.label_922:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_920
	call	__errno_location
	mov	dword ptr [rax], 0
.label_920:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_923
.label_921:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_923:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e030

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e060

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x18], 0x95f616
	nop	
	jne	.label_924
	mov	rsp, rsp
	jmp	.label_925
.label_924:
	movabs	rdi, OFFSET FLAT:.str_10
	movabs	rsi, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	edx, 0x3c
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	mov	rbp, rbp
	call	__assert_fail
.label_925:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_927
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_927
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_927
	mov	byte ptr [rbp - 1], 1
	jmp	.label_929
.label_927:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	mov	rdi, rcx
	call	is_zero_or_power_of_two
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_928
	mov	rsp, rsp
	jmp	.label_930
.label_928:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_926
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_929
.label_926:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_930:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_929:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1b0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	and	rdi, rax
	mov	rbp, rbp
	cmp	rdi, 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1f0

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
	je	.label_931
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
.label_931:
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
	je	.label_933
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
	ja	.label_934
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
	jmp	.label_932
.label_934:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdx
.label_932:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_933:
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
	#Procedure 0x40e470

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
	je	.label_936
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_11
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_937
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_935
.label_937:
	mov	byte ptr [rbp - 5], 0
.label_935:
	jmp	.label_936
.label_936:
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
	#Procedure 0x40e510

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
	#Procedure 0x40e530

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
	#Procedure 0x40e550

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
	#Procedure 0x40e570

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
.label_942:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_938
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_941
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_943:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_944
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_943
.label_944:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_939
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_939:
	jmp	.label_941
.label_941:
	mov	rbp, rbp
	jmp	.label_940
.label_940:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_942
.label_938:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e650
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
.label_949:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_945
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_947
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
.label_950:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_951
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_950
.label_951:
	jmp	.label_947
.label_947:
	jmp	.label_948
.label_948:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_949
.label_945:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_946
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_946
	mov	byte ptr [rbp - 1], 1
	jmp	.label_952
.label_946:
	mov	byte ptr [rbp - 1], 0
.label_952:
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
	#Procedure 0x40e780
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
	movabs	rax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str_12
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
	mov	ecx, OFFSET FLAT:.str.1_9
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_953]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_954]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_955]]
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
	movabs	rsi, OFFSET FLAT:.str.3_2
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
	#Procedure 0x40e900

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
	jne	.label_959
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_956
.label_959:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_961:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_960
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_957
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
	jne	.label_957
	mov	rsp, rsp
	jmp	.label_962
.label_957:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_956
.label_962:
	nop	
	jmp	.label_958
.label_958:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_961
.label_960:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_956:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9f0

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
	jb	.label_963
	call	abort
.label_963:
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
	#Procedure 0x40ea80
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
	jne	.label_964
	mov	qword ptr [rbp - 8], 0
	jmp	.label_968
.label_964:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_966:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_965
	lea	rsi, [rsi]
	call	abort
.label_965:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_969
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_968
.label_969:
	jmp	.label_970
.label_970:
	nop	
	jmp	.label_967
.label_967:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_966
.label_968:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb40
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
.label_975:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_971
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_971
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_972
.label_971:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_975
	jmp	.label_973
.label_973:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_976
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_974
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_972
.label_974:
	jmp	.label_973
.label_976:
	mov	qword ptr [rbp - 8], 0
.label_972:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec40
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
.label_978:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_981
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_979
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_982:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_980
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_983
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_977
.label_983:
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
	jmp	.label_982
.label_980:
	lea	rsi, [rsi]
	jmp	.label_979
.label_979:
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_978
.label_981:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_977:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed50
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
.label_986:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_985
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_988
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_991:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_992
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
	jne	.label_990
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_987
.label_990:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_991
.label_992:
	mov	rbp, rbp
	jmp	.label_988
.label_988:
	nop	
	jmp	.label_989
.label_989:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_986
.label_985:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_987:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee60
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
.label_993:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_994
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
	jmp	.label_993
.label_994:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eed0
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
	mov	rax,  qword ptr [word ptr [label_995]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_996]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef20

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
	jne	.label_1000
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1000:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1001
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1001:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_997
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1003
.label_997:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1004
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1004:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1005
	jmp	.label_1002
.label_1005:
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
	jne	.label_998
	mov	rsp, rsp
	jmp	.label_1002
.label_998:
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
	jne	.label_999
	jmp	.label_1002
.label_999:
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
	jmp	.label_1003
.label_1002:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1003:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f140

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
	#Procedure 0x40f190

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
	#Procedure 0x40f1c0

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
	jne	.label_1006
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1009
.label_1006:
	movss	xmm0,  dword ptr [dword ptr [label_1010]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1008
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1007]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1008
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1007]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1008
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1008
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1008
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1007]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1008
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
	jbe	.label_1008
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1009
.label_1008:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1009:
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
	#Procedure 0x40f330

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
	jne	.label_1011
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1012]]
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
	js	.label_1013
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1013:
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
	jb	.label_1017
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1015
.label_1017:
	nop	
	movss	xmm0, dword ptr [rbp - 0x1c]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1016]]
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
.label_1011:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1014
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1015
.label_1014:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1015:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f4a0
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
.label_1022:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1021
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1025
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1024:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1020
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1023
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1023:
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
	jmp	.label_1024
.label_1020:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1019
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1019:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1025:
	jmp	.label_1018
.label_1018:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1022
.label_1021:
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
	#Procedure 0x40f610

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
	je	.label_1028
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1028
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1036
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1027
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1026:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1030
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
	jmp	.label_1026
.label_1030:
	jmp	.label_1027
.label_1027:
	jmp	.label_1029
.label_1029:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1033
.label_1036:
	jmp	.label_1028
.label_1028:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1035:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1039
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1032:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_1034
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
	jmp	.label_1032
.label_1034:
	jmp	.label_1037
.label_1037:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1035
.label_1039:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_1038:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1031
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
	jmp	.label_1038
.label_1031:
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
	#Procedure 0x40f800

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
	jne	.label_1046
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1040
.label_1046:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1042
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1040
.label_1042:
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
	jne	.label_1047
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1040
.label_1047:
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
	jne	.label_1041
	lea	rsi, [rsi]
	jmp	.label_1045
.label_1041:
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
	jmp	.label_1040
.label_1045:
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
	jne	.label_1043
	mov	rbp, rbp
	jmp	.label_1044
.label_1043:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1048
.label_1044:
	call	abort
.label_1048:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 1], 0
.label_1040:
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
	#Procedure 0x40fad0

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
.label_1056:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1062
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1054
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1059:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1061
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
	je	.label_1057
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
	jmp	.label_1058
.label_1057:
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
.label_1058:
	mov	rbp, rbp
	jmp	.label_1060
.label_1060:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1059
.label_1061:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_1053
	jmp	.label_1055
.label_1053:
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
	je	.label_1050
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1051
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1049
.label_1051:
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
	jmp	.label_1052
.label_1050:
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
.label_1052:
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
.label_1054:
	jmp	.label_1055
.label_1055:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1056
.label_1062:
	mov	byte ptr [rbp - 1], 1
.label_1049:
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
	#Procedure 0x40fd60

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
	jne	.label_1073
	lea	rsi, [rsi]
	call	abort
.label_1073:
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
	je	.label_1075
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1066
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1066:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1067
.label_1075:
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
	js	.label_1076
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1076:
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
	js	.label_1070
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x70], xmm0
.label_1070:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1069
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
	js	.label_1080
	movss	xmm0, dword ptr [rbp - 0x8c]
	nop	
	movss	dword ptr [rbp - 0x90], xmm0
.label_1080:
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
	js	.label_1081
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x9c]
.label_1308:
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1081:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1065
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1078
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
	js	.label_1063
	movss	xmm0, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1063:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	mov	rbp, rbp
	jmp	.label_1071
.label_1078:
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
	js	.label_1072
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1072:
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
.label_1071:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1012]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1077
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1067
.label_1077:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1016]]
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
	jne	.label_1064
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1067
.label_1064:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1079
	call	abort
.label_1079:
	jmp	.label_1065
.label_1065:
	lea	rdi, [rdi]
	jmp	.label_1069
.label_1069:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1068
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_1074
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1067
.label_1074:
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
	jmp	.label_1067
.label_1068:
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
.label_1067:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410330

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
	jne	.label_1088
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1083
.label_1088:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1089
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
	jne	.label_1089
	jmp	.label_1084
.label_1089:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1086
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1091
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
	jmp	.label_1082
.label_1091:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1082:
	jmp	.label_1086
.label_1086:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1083
.label_1084:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1092:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1090
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1094
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
	jne	.label_1094
	lea	rsi, [rsi]
	jmp	.label_1085
.label_1094:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1087
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
.label_1087:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1083
.label_1085:
	mov	rbp, rbp
	jmp	.label_1093
.label_1093:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1092
.label_1090:
	mov	qword ptr [rbp - 8], 0
.label_1083:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410570

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
	je	.label_1095
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
	jmp	.label_1096
.label_1095:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1096:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4105f0

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
	jne	.label_1099
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_1097
.label_1099:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1100
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1098
.label_1100:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1098:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1097:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410690

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
	jne	.label_1103
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1107
.label_1103:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1102
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
	js	.label_1104
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1104:
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
	js	.label_1116
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1116:
	movss	xmm0, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1114
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
	js	.label_1108
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1108:
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
	js	.label_1110
	movss	xmm0, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1110:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1111
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1105
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
	js	.label_1113
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1113:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1101
.label_1105:
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
	js	.label_1109
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1109:
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
.label_1101:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1016]]
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
	jne	.label_1106
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1112:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1115
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
	jmp	.label_1112
.label_1115:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1106:
	lea	rsi, [rsi]
	jmp	.label_1111
.label_1111:
	jmp	.label_1114
.label_1114:
	nop	
	jmp	.label_1102
.label_1102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1107:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b60

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
	jae	.label_1117
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0xa
.label_1117:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1121:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1119
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
.label_1119:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1120
	jmp	.label_1118
.label_1120:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1121
.label_1118:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c10

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
.label_1123:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	jae	.label_1122
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
.label_1122:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1125
	jmp	.label_1124
.label_1125:
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
	jmp	.label_1123
.label_1124:
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
	#Procedure 0x410d10

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
	#Procedure 0x410d60

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1c], 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x18], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0
.label_1127:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 4
	mov	rbp, rbp
	jge	.label_1126
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1127
.label_1126:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410df0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e10

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	add	esi, ecx
	and	esi, 3
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], esi
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rdi*4]
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	edx, esi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x14], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_1128
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x1c]
	lea	rsi, [rsi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
	and	ecx, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
.label_1128:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x1c], 0
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ee0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1130
	mov	rsp, rsp
	jmp	.label_1131
.label_1130:
	lea	rsi, [rsi]
	call	abort
.label_1131:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x14]
	mov	rbp, rbp
	mov	eax, esi
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rax*4], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	jne	.label_1129
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_1132
.label_1129:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 4
	mov	rbp, rbp
	sub	ecx, 1
	lea	rdi, [rdi]
	and	ecx, 3
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax + 0x14], ecx
.label_1132:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fc0

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
	jne	.label_1134
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1134:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1133
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1133:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411040

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x110], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x120], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x130], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	dword ptr [rbp - 0x184], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], rsi
	mov	rbp, rbp
	je	.label_1135
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	nop	
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	lea	rsi, [rsi]
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x50], xmm6
	lea	rdi, [rdi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1135:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdi, qword ptr [rbp - 0x190]
	nop	
	mov	r8d, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0x40
	lea	rsi, [rsi]
	cmp	esi, 0
	je	.label_1136
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rsp, rsp
	lea	rdx, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 4], 0x30
	nop	
	mov	dword ptr [rcx], 0x18
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x19c], esi
	lea	rsi, [rsi]
	ja	.label_1137
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x19c]
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	rsp, rsp
	jmp	.label_1138
.label_1137:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1138:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1136:
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112c0

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	or	edx, 0x90900
	mov	dword ptr [rbp - 0x2c], edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	lea	rsi, [rsi]
	call	openat_safer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jge	.label_1139
	nop	
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1141
.label_1139:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	je	.label_1142
	nop	
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1140
.label_1142:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], ecx
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rax], ecx
.label_1140:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1141:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4113c0

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
	jg	.label_1143
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1143
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
.label_1143:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411450

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
	jge	.label_1148
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1146
.label_1148:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1145
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
	je	.label_1144
.label_1145:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1144
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1144:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1147
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
.label_1147:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1146:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411570

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
	je	.label_1158
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
.label_1158:
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
	je	.label_1152
	nop	
	jmp	.label_1162
.label_1162:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1163
	jmp	.label_1167
.label_1152:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1169
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
	jmp	.label_1155
.label_1169:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1155:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1171
.label_1163:
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
	ja	.label_1178
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
	jmp	.label_1154
.label_1178:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1154:
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
	jmp	.label_1171
.label_1167:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_1151
	nop	
	jmp	.label_1156
.label_1156:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_1153
	jmp	.label_1177
.label_1177:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_1151
	nop	
	jmp	.label_1172
.label_1172:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_1153
	nop	
	jmp	.label_1149
.label_1149:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_1151
	lea	rsi, [rsi]
	jmp	.label_1159
.label_1159:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_1151
	lea	rsi, [rsi]
	jmp	.label_1166
.label_1166:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1153
	mov	rsp, rsp
	jmp	.label_1173
.label_1173:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1151
	jmp	.label_1150
.label_1150:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_1153
	lea	rsi, [rsi]
	jmp	.label_1164
.label_1164:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_1151
	jmp	.label_1168
.label_1168:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1153
	mov	rsp, rsp
	jmp	.label_1174
.label_1174:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_1151
	lea	rsi, [rsi]
	jmp	.label_1176
.label_1176:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1151
	nop	
	jmp	.label_1161
.label_1161:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_1165
	lea	rdi, [rdi]
	jmp	.label_1153
.label_1153:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_1157
.label_1151:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_1179
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
	jmp	.label_1160
.label_1179:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_1160:
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
	jmp	.label_1157
.label_1165:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_1175
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
	jmp	.label_1170
.label_1175:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_1170:
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
.label_1157:
	jmp	.label_1171
.label_1171:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411bf0

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
	#Procedure 0x411c40

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
	jg	.label_1180
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
	jle	.label_1187
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1182
.label_1187:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1184
.label_1182:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_1188
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1188:
	mov	rbp, rbp
	jmp	.label_1184
.label_1184:
	jmp	.label_1185
.label_1180:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1185:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1181
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1181
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1186
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
	jne	.label_1183
.label_1186:
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
.label_1183:
	jmp	.label_1181
.label_1181:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x411dc0

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
	je	.label_1189
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1190
.label_1189:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1191
.label_1190:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1191:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e30

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
	je	.label_1192
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
.label_1192:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e90

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
	jne	.label_1193
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1193
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1193
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
	jne	.label_1194
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1195
.label_1194:
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
	jmp	.label_1195
.label_1193:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1195:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411fa0

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
	ja	.label_1196
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1197
.label_1196:
	lea	rsi, [rsi]
	jmp	.label_1197
.label_1197:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412000
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
	#Procedure 0x412050
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
	#Procedure 0x4120a0
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
	#Procedure 0x4120f0
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
	#Procedure 0x412130
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
	#Procedure 0x412190

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
	#Procedure 0x4121f0
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
	#Procedure 0x412240
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
	#Procedure 0x412290
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
	#Procedure 0x4122f0
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
	#Procedure 0x412340
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
	jb	.label_1199
	jmp	.label_1202
.label_1202:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1199
	jmp	.label_1200
.label_1200:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1201
	jmp	.label_1199
.label_1199:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1203
.label_1201:
	mov	byte ptr [rbp - 1], 0
.label_1203:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4123b0
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
	jb	.label_1204
	jmp	.label_1207
.label_1207:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1205
	jmp	.label_1204
.label_1204:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1206
.label_1205:
	mov	byte ptr [rbp - 1], 0
.label_1206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412400
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1208
	jmp	.label_1209
.label_1209:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1210
.label_1208:
	mov	byte ptr [rbp - 1], 0
.label_1210:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412430
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1211
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1211:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412460
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
	jb	.label_1212
	jmp	.label_1214
.label_1214:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1215
	jmp	.label_1212
.label_1212:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1213
.label_1215:
	mov	byte ptr [rbp - 1], 0
.label_1213:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1216
	jmp	.label_1218
.label_1218:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1217
.label_1216:
	mov	byte ptr [rbp - 1], 0
.label_1217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1219
	jmp	.label_1221
.label_1221:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1220
.label_1219:
	mov	byte ptr [rbp - 1], 0
.label_1220:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412530
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1222
	jmp	.label_1224
.label_1224:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1223
.label_1222:
	mov	byte ptr [rbp - 1], 0
.label_1223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412570
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1225
	jmp	.label_1227
.label_1227:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1226
.label_1225:
	mov	byte ptr [rbp - 1], 0
.label_1226:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4125b0
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
	jb	.label_1228
	jmp	.label_1231
.label_1231:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1228
	jmp	.label_1232
.label_1232:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1228
	jmp	.label_1230
.label_1230:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1233
	jmp	.label_1228
.label_1228:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1229
.label_1233:
	mov	byte ptr [rbp - 1], 0
.label_1229:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412630
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
	jb	.label_1234
	jmp	.label_1237
.label_1237:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1236
	jmp	.label_1234
.label_1234:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1235
.label_1236:
	mov	byte ptr [rbp - 1], 0
.label_1235:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412680
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1238
	jmp	.label_1240
.label_1240:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1239
.label_1238:
	mov	byte ptr [rbp - 1], 0
.label_1239:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4126c0
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
	jb	.label_1241
	jmp	.label_1243
.label_1243:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1241
	jmp	.label_1242
.label_1242:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1244
	jmp	.label_1241
.label_1241:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1245
.label_1244:
	mov	byte ptr [rbp - 1], 0
.label_1245:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412730

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1246
	jmp	.label_1248
.label_1248:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1247
.label_1246:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1247:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412770
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1249
	jmp	.label_1251
.label_1251:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1250
.label_1249:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1250:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4127b0

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
	#Procedure 0x4128a0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4128b0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x4128c0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x4128d0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat