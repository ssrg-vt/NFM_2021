	.section	.text
	.align	16
	#Procedure 0x401a90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x34], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	je	.label_9
	jmp	.label_8
.label_8:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_7
.label_9:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_7:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rax
.label_15:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 0x45], cl
	je	.label_13
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	nop	
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x45], cl
.label_13:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_11
	jmp	.label_14
.label_11:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_15
.label_14:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rsp, rsp
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_10
	nop	
	movabs	rsi, OFFSET FLAT:.str.46
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	cmp	eax, 0
	je	.label_10
	nop	
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.48
	nop	
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.49
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x44], eax
	nop	
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x120
	mov	dword ptr [rbp - 0x7c], 0
	mov	dword ptr [rbp - 0xc0], edi
	mov	qword ptr [rbp - 0xb8], rsi
	mov	byte ptr [rbp - 0x5d], 1
	mov	byte ptr [rbp - 0x99], 0
	mov	rsi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.15
	nop	
	mov	qword ptr [rbp - 0x40], rax
	call	bindtextdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	call	atexit
	lea	rdi, [rbp - 0xe8]
	mov	dword ptr [rbp - 0x104], eax
	call	rm_option_init
	lea	rsi, [rsi]
	call	priv_set_remove_linkdir
	mov	dword ptr [rbp - 0x20], eax
.label_36:
	movabs	rdx, OFFSET FLAT:.str.16
	nop	
	movabs	rcx, OFFSET FLAT:long_opts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	call	getopt_long
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_69
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], ecx
	je	.label_20
	jmp	.label_27
.label_27:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	je	.label_29
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	je	.label_37
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	je	.label_41
	jmp	.label_47
.label_47:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_49
	lea	rsi, [rsi]
	jmp	.label_51
.label_51:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x38], eax
	je	.label_53
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	je	.label_59
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_41
	nop	
	jmp	.label_43
.label_43:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_67
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	je	.label_28
	nop	
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	nop	
	je	.label_25
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x82
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	je	.label_31
	nop	
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x83
	mov	dword ptr [rbp - 4], eax
	je	.label_39
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_62
	jmp	.label_33
.label_49:
	mov	byte ptr [rbp - 0xde], 1
	jmp	.label_18
.label_53:
	mov	dword ptr [rbp - 0xe4], 5
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe8], 1
	mov	byte ptr [rbp - 0x99], 0
	mov	rsp, rsp
	jmp	.label_18
.label_59:
	mov	dword ptr [rbp - 0xe4], 3
	nop	
	mov	byte ptr [rbp - 0xe8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99], 0
	jmp	.label_18
.label_37:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 4
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99], 1
	nop	
	jmp	.label_18
.label_41:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xdf], 1
	lea	rsi, [rsi]
	jmp	.label_18
.label_28:
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rdi, [rdi]
	je	.label_23
	movabs	rdi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:interactive_args
	movabs	rax, OFFSET FLAT:interactive_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	lea	rdi, [rdi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	mov	dword ptr [rbp - 0x74], r10d
	jmp	.label_55
.label_23:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], 2
.label_55:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	je	.label_50
	lea	rdi, [rdi]
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 1
	mov	dword ptr [rbp - 0x78], eax
	nop	
	je	.label_54
	lea	rdi, [rdi]
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 2
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_61
	lea	rdi, [rdi]
	jmp	.label_19
.label_50:
	nop	
	mov	dword ptr [rbp - 0xe4], 5
	mov	byte ptr [rbp - 0x99], 0
	mov	rbp, rbp
	jmp	.label_19
.label_54:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], 4
	mov	byte ptr [rbp - 0xe8], 0
	mov	byte ptr [rbp - 0x99], 1
	jmp	.label_19
.label_61:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], 3
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe8], 0
	mov	byte ptr [rbp - 0x99], 0
.label_19:
	jmp	.label_18
.label_25:
	mov	byte ptr [rbp - 0xe0], 1
	jmp	.label_18
.label_31:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.18_0
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_42
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_42:
	mov	byte ptr [rbp - 0x5d], 0
	mov	rbp, rbp
	jmp	.label_18
.label_39:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	je	.label_34
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_66
	mov	byte ptr [rbp - 0xd0], 1
	jmp	.label_68
.label_66:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf8], rax
	nop	
	call	quotearg_style
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_68:
	jmp	.label_34
.label_34:
	mov	byte ptr [rbp - 0x5d], 1
	nop	
	jmp	.label_18
.label_62:
	mov	byte ptr [rbp - 0xcf], 1
	nop	
	jmp	.label_18
.label_67:
	mov	byte ptr [rbp - 0xce], 1
	lea	rdi, [rdi]
	jmp	.label_18
.label_29:
	xor	edi, edi
	nop	
	call	usage
.label_20:
	movabs	rsi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.23
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str.24
	movabs	rax, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.26
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	r10d, edi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r11,  qword ptr [word ptr [Version]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rcx
	nop	
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], 0
	lea	rdi, [rdi]
	mov	al, 0
	mov	qword ptr [rbp - 0x88], r10
	call	version_etc
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_33:
	mov	edi, dword ptr [rbp - 0xc0]
	nop	
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	call	diagnose_leading_hyphen
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_18:
	jmp	.label_36
.label_69:
	mov	eax, dword ptr [rbp - 0xc0]
	cmp	eax,  dword ptr [dword ptr [optind]]
	nop	
	jg	.label_38
	test	byte ptr [rbp - 0xe8], 1
	lea	rdi, [rdi]
	je	.label_46
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_44
.label_46:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_38:
	test	byte ptr [rbp - 0xdf], 1
	lea	rdi, [rdi]
	je	.label_45
	mov	rsp, rsp
	test	byte ptr [rbp - 0x5d], 1
	je	.label_45
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:main.dev_ino_buf
	lea	rsi, [rsi]
	call	get_root_dev_ino
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_70
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.28
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], esi
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_70:
	jmp	.label_45
.label_45:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc0]
	sub	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0xf0], rcx
	test	byte ptr [rbp - 0x99], 1
	je	.label_48
	mov	rbp, rbp
	test	byte ptr [rbp - 0xdf], 1
	lea	rsi, [rsi]
	jne	.label_63
	nop	
	mov	eax, 3
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	jae	.label_48
.label_63:
	mov	rdi,  qword ptr [word ptr [stderr]]
	test	byte ptr [rbp - 0xdf], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdi
	je	.label_65
	mov	rdi, qword ptr [rbp - 0xa8]
	call	select_plural
	nop	
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdx, rax
	nop	
	call	ngettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_32
.label_65:
	mov	rdi, qword ptr [rbp - 0xa8]
	call	select_plural
	nop	
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rsi, OFFSET FLAT:.str.33
	mov	rdx, rax
	call	ngettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_32:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	yesno
	mov	rbp, rbp
	test	al, 1
	jne	.label_56
	mov	dword ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	jmp	.label_44
.label_56:
	mov	rsp, rsp
	jmp	.label_48
.label_48:
	lea	rsi, [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	call	rm
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x94], 2
	je	.label_17
	nop	
	cmp	dword ptr [rbp - 0x94], 3
	je	.label_17
	cmp	dword ptr [rbp - 0x94], 4
	jne	.label_21
.label_17:
	mov	rsp, rsp
	jmp	.label_24
.label_21:
	movabs	rdi, OFFSET FLAT:.str.34
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	mov	edx, 0x173
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rdi, [rdi]
	call	__assert_fail
.label_24:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	cmp	dword ptr [rbp - 0x94], 4
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
.label_44:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdi], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdi + 4], 4
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 8], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdi + 0xa], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x18], 0
	mov	edi, eax
	call	isatty
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x19], cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x1a], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x1b], 0
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402940

	.globl diagnose_leading_hyphen
	.type diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rsi
	mov	dword ptr [rbp - 0xac], 1
.label_73:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xac]
	cmp	eax, dword ptr [rbp - 0x14]
	nop	
	jge	.label_71
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xac]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2d
	lea	rsi, [rsi]
	jne	.label_74
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_74
	lea	rsi, [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_74
	nop	
	movabs	rdi, OFFSET FLAT:.str.68
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xd8], rax
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 3
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xb8], rax
	call	quotearg_n_style
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	r8, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_71
.label_74:
	jmp	.label_72
.label_72:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	add	eax, 1
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_73
.label_71:
	lea	rsi, [rsi]
	add	rsp, 0xe0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	mov	rbp, rbp
	ja	.label_75
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_76
.label_75:
	mov	eax, 0xf4240
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rbp, rbp
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_76:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl rm
	.type rm, @function
rm:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x2c], 2
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi], 0
	je	.label_81
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0x218
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rax + 8], 1
	je	.label_90
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	or	eax, 0x40
	mov	dword ptr [rbp - 0x14], eax
.label_90:
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	xfts_open
	mov	qword ptr [rbp - 0x38], rax
.label_84:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_80
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_83
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	dword ptr [rbp - 0x2c], 4
.label_83:
	jmp	.label_86
.label_80:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rm_fts
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 2
	mov	rsp, rsp
	je	.label_77
	nop	
	cmp	dword ptr [rbp - 0x3c], 3
	je	.label_77
	nop	
	cmp	dword ptr [rbp - 0x3c], 4
	jne	.label_78
.label_77:
	jmp	.label_87
.label_78:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	mov	edx, 0x261
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	lea	rsi, [rsi]
	call	__assert_fail
.label_87:
	mov	rbp, rbp
	jmp	.label_85
.label_85:
	cmp	dword ptr [rbp - 0x3c], 4
	je	.label_88
	nop	
	cmp	dword ptr [rbp - 0x3c], 3
	lea	rdi, [rdi]
	jne	.label_79
	cmp	dword ptr [rbp - 0x2c], 2
	mov	rbp, rbp
	jne	.label_79
.label_88:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
.label_79:
	mov	rbp, rbp
	jmp	.label_82
.label_82:
	jmp	.label_84
.label_86:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	rpl_fts_close
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_89
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 4
.label_89:
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rdx + 0x70]
	nop	
	dec	eax
	mov	edx, eax
	sub	eax, 0xc
	mov	qword ptr [rbp - 0x60], rdx
	mov	dword ptr [rbp - 0xa4], eax
	ja	.label_94
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_95]]
	mov	rsp, rsp
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x403780

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	edx, 0x30900
	mov	dword ptr [rbp - 0x18], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_116
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x25], 0
	nop	
	jmp	.label_115
.label_116:
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_117
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 0
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_115
.label_117:
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	readdir_ignoring_dot_and_dotdot
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	closedir
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_118
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x25], 0
	mov	rbp, rbp
	jmp	.label_115
.label_118:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 4], 0
	cmove	eax, ecx
	cmp	eax, 0
	nop	
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	mov	byte ptr [rbp - 0x25], dl
.label_115:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038a0

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_119:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_121
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_120
	lea	rdi, [rdi]
	jmp	.label_121
.label_120:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_119
.label_121:
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403920

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	edx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	rpl_fts_set
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x18], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_122
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	mov	rbp, rbp
	movzx	edx, sil
	lea	rdi, [rdi]
	add	edx, 1
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	sil, byte ptr [rdi + rcx]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 3], sil
	mov	rsp, rsp
	cmp	byte ptr [rbp - 3], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	je	.label_123
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 3]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
.label_123:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 2], al
	jmp	.label_124
.label_122:
	mov	byte ptr [rbp - 2], 0
.label_124:
	mov	al, byte ptr [rbp - 2]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x160
	nop	
	mov	al, dl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rsi
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], r8d
	mov	qword ptr [rbp - 0x88], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x5c], edx
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_138
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	dword ptr [rax], 2
.label_138:
	lea	rax, [rbp - 0x160]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	cache_stat_init
	xor	ecx, ecx
	mov	edx, 4
	mov	sil, byte ptr [rbp - 0x15]
	test	sil, 1
	nop	
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x71], 0
	cmp	qword ptr [rbp - 0x88], 0
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_147
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	is_empty_dir
	lea	rdi, [rdi]
	mov	edi, 3
	mov	ecx, 4
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	al, byte ptr [rbp - 0x71]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	cmovne	edi, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rsi], edi
.label_147:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	je	.label_146
	mov	dword ptr [rbp - 0x44], 3
	jmp	.label_125
.label_146:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 4], 5
	jne	.label_136
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], 2
	lea	rsi, [rsi]
	jmp	.label_125
.label_136:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	test	byte ptr [rax], 1
	nop	
	jne	.label_131
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	je	.label_139
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 0x19], 1
	je	.label_131
.label_139:
	cmp	dword ptr [rbp - 0xb8], 0xa
	lea	rsi, [rsi]
	je	.label_131
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	call	write_protected_non_symlink
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], edi
.label_131:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_155
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	jne	.label_129
.label_155:
	mov	rbp, rbp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_141
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xb8], 0
	jne	.label_141
	mov	rbp, rbp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	cache_fstatat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_153
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_156
	mov	dword ptr [rbp - 0xb8], 0xa
	jmp	.label_132
.label_156:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_135
	mov	dword ptr [rbp - 0xb8], 4
.label_135:
	jmp	.label_132
.label_132:
	jmp	.label_151
.label_153:
	mov	dword ptr [rbp - 0x14], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
.label_151:
	mov	rbp, rbp
	jmp	.label_141
.label_141:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	jg	.label_142
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	mov	dword ptr [rbp - 0x70], ecx
	lea	rdi, [rdi]
	je	.label_144
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x6c], eax
	jne	.label_140
	jmp	.label_143
.label_143:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	je	.label_145
	nop	
	mov	dword ptr [rbp - 0x44], 2
	jmp	.label_125
.label_145:
	nop	
	jmp	.label_140
.label_144:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 9], 1
	mov	rsp, rsp
	jne	.label_154
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	test	byte ptr [rax + 0xa], 1
	je	.label_127
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x71], 1
	lea	rsi, [rsi]
	jne	.label_154
.label_127:
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	dword ptr [rbp - 0xac], 0x15
.label_154:
	jmp	.label_140
.label_140:
	mov	rbp, rbp
	jmp	.label_142
.label_142:
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	call	quotearg_style
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jge	.label_149
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x44], 4
	jmp	.label_125
.label_149:
	cmp	dword ptr [rbp - 0xb8], 4
	mov	rbp, rbp
	jne	.label_134
	cmp	dword ptr [rbp - 0xb4], 2
	jne	.label_134
	mov	rsp, rsp
	test	byte ptr [rbp - 0x71], 1
	jne	.label_134
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	je	.label_148
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_128
.label_148:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.20_0
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_128:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_150
.label_134:
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	cache_fstatat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_126
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xb0], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xb0]
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x44], 4
	jmp	.label_125
.label_126:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rdi
	je	.label_152
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.21_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_130
.label_152:
	nop	
	movabs	rdi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_130:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rsp, rsp
	call	file_type
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x8c], eax
.label_150:
	lea	rsi, [rsi]
	call	yesno
	mov	rsp, rsp
	test	al, 1
	jne	.label_133
	mov	dword ptr [rbp - 0x44], 3
	mov	rbp, rbp
	jmp	.label_125
.label_133:
	jmp	.label_129
.label_129:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 2
.label_125:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x160
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl excise
	.type excise, @function
excise:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rdi, [rdi]
	mov	al, cl
	xor	ecx, ecx
	mov	r8d, 0x200
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	mov	qword ptr [rbp - 0xf0], rdx
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc1], al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, r8d
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	edi, dword ptr [rdx + 0x2c]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x30]
	mov	edx, dword ptr [rbp - 0x24]
	call	unlinkat
	cmp	eax, 0
	jne	.label_164
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1a], 1
	je	.label_165
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc1], 1
	lea	rsi, [rsi]
	je	.label_167
	nop	
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	jmp	.label_169
.label_167:
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
.label_169:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 4], eax
.label_165:
	mov	dword ptr [rbp - 0xc0], 2
	mov	rsp, rsp
	jmp	.label_162
.label_164:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x1e
	jne	.label_158
	mov	rsp, rsp
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	lstatat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_163
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	je	.label_168
.label_163:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x1e
.label_168:
	jmp	.label_158
.label_158:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	ignorable_missing
	test	al, 1
	mov	rbp, rbp
	jne	.label_160
	lea	rsi, [rsi]
	jmp	.label_161
.label_160:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], 2
	jmp	.label_162
.label_161:
	mov	rax, qword ptr [rbp - 0xe8]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_157
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x27
	nop	
	je	.label_166
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x15
	je	.label_166
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_166
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_157
.label_166:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	dword ptr [rax + 0x40], 1
	je	.label_159
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	dword ptr [rax + 0x40], 0xd
	jne	.label_157
.label_159:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_157:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	mov	rdi, qword ptr [rbp - 0xe8]
	call	mark_ancestor_dirs
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], 4
.label_162:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc0]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_170:
	mov	rdi, qword ptr [rbp - 8]
	call	readdir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_172
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x13
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	dot_or_dotdot
	nop	
	test	al, 1
	jne	.label_171
.label_172:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_171:
	lea	rdi, [rdi]
	jmp	.label_170
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x30], -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404410

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x1c], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	can_write_any_file
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_175
	jmp	.label_178
.label_175:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_173
.label_178:
	nop	
	mov	ecx, 0x100
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	cache_fstatat
	cmp	eax, 0
	nop	
	je	.label_176
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_173
.label_176:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_174
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_173
.label_174:
	mov	edx, 2
	mov	rsp, rsp
	mov	ecx, 0x200
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	faccessat
	cmp	eax, 0
	nop	
	jne	.label_177
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_173
.label_177:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	edx, 1
	cmp	dword ptr [rax], 0xd
	mov	rsp, rsp
	cmove	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
.label_173:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rdx + 0x30], -1
	lea	rsi, [rsi]
	jne	.label_179
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0xc]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_179
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x30], -2
	mov	rbp, rbp
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_179:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 0x30]
	jg	.label_181
	nop	
	mov	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_180
.label_181:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0xffffffff
.label_180:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404600

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rdi], 1
	nop	
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_182
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	nonexistent_file_errno
	mov	byte ptr [rbp - 0x11], al
.label_182:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	eax, edi
	sub	edi, 2
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 0x1c], edi
	mov	rbp, rbp
	je	.label_183
	lea	rsi, [rsi]
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 4]
	nop	
	sub	eax, 0x14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	je	.label_183
	jmp	.label_188
.label_188:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x16
	mov	dword ptr [rbp - 0x18], eax
	je	.label_183
	mov	rsp, rsp
	jmp	.label_186
.label_186:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	jne	.label_187
	jmp	.label_183
.label_183:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_185
.label_187:
	mov	byte ptr [rbp - 9], 0
.label_185:
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404700

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
	#Procedure 0x404720

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
.label_189:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_199
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
	jne	.label_196
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_190
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_192
.label_190:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_195
.label_197:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_191
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
	je	.label_193
.label_191:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_193:
	lea	rsi, [rsi]
	jmp	.label_195
.label_195:
	mov	rbp, rbp
	jmp	.label_198
.label_198:
	mov	rsp, rsp
	jmp	.label_196
.label_196:
	nop	
	jmp	.label_200
.label_200:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_189
.label_199:
	test	byte ptr [rbp - 0x21], 1
	je	.label_194
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_192
.label_194:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_192:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048d0

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
	jne	.label_201
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_202
.label_201:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_202:
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
	.section	.text
	.align	16
	#Procedure 0x4049b0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_2
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
.label_207:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_204
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_203
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
	je	.label_208
.label_203:
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
	jmp	.label_205
.label_208:
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
.label_205:
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_207
.label_204:
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
	.section	.text
	.align	16
	#Procedure 0x404b60

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
	jl	.label_209
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_210
.label_209:
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
.label_210:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c20
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
.label_213:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_215
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
	jne	.label_212
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_211
.label_212:
	lea	rdi, [rdi]
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_213
.label_215:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_211:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cf0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [word ptr [file_name]],  rdi
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d20

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	nop	
	mov	byte ptr [rbp - 0xd], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_216
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jne	.label_217
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_217
	mov	byte ptr [rbp - 0xd], 1
.label_217:
	jmp	.label_216
.label_216:
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	close_stream
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_222
	mov	byte ptr [rbp - 0xd], 1
.label_222:
	test	byte ptr [rbp - 0xd], 1
	je	.label_221
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_218
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_2
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_219
.label_218:
	nop	
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_219:
	lea	rsi, [rsi]
	jmp	.label_221
.label_221:
	call	close_stdout
	test	byte ptr [rbp - 0xd], 1
	nop	
	je	.label_220
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rsi, [rsi]
	call	_exit
.label_220:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e90
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
	mov	qword ptr [word ptr [file_name_0]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ec0
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
	#Procedure 0x404ef0

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
	je	.label_225
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_227
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_225
.label_227:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_224
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
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
	jmp	.label_226
.label_224:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_226:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_225:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_223
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_223:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405020

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
.label_232:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_234
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_232
.label_234:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_230:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_233
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_229
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_231
.label_229:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_228
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_228:
	jmp	.label_231
.label_231:
	jmp	.label_235
.label_235:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_230
.label_233:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050f0

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
.label_237:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_236
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
.label_236:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_238
	mov	rbp, rbp
	jmp	.label_239
.label_238:
	jmp	.label_240
.label_240:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_237
.label_239:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051b0

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
	jne	.label_251
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_244
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_241
.label_244:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_241:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_243
.label_251:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_253
	movabs	rdi, OFFSET FLAT:.str.2_3
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_243
.label_253:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_252
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_2
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_243
.label_252:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_250
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_2
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_243
.label_250:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_249
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_243
.label_249:
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
	je	.label_246
	movabs	rdi, OFFSET FLAT:.str.6_0
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_243
.label_246:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	lea	rdi, [rdi]
	jne	.label_247
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_243
.label_247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	lea	rdi, [rdi]
	jne	.label_242
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_243
.label_242:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	nop	
	jne	.label_248
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_243
.label_248:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xc000
	mov	rsp, rsp
	jne	.label_245
	movabs	rdi, OFFSET FLAT:.str.10_1
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_243
.label_245:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_243:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054a0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_254
	lea	rsi, [rsi]
	call	xalloc_die
.label_254:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x29], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_259
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_257
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_257
	nop	
	mov	byte ptr [rbp - 0x29], 0x2f
.label_257:
	jmp	.label_256
.label_259:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_258
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0x2e
.label_258:
	jmp	.label_256
.label_256:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rbp - 0x29]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_260
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_255
.label_260:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x29]
	nop	
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_261
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
.label_261:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_255:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056f0

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405710

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
	jne	.label_264
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_264:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_262
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_266
.label_262:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_266:
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
	jl	.label_265
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_4
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
	jne	.label_265
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_4
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
	jne	.label_263
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_263:
	jmp	.label_265
.label_265:
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
	.align	16
	#Procedure 0x405890
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
	je	.label_268
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_267
.label_268:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_267
.label_267:
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
	.align	16
	#Procedure 0x405940
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
	je	.label_269
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_270
.label_269:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059a0
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
	je	.label_271
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_272
.label_271:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a00

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
	je	.label_273
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_274
.label_273:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_274
.label_274:
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
	.align	16
	#Procedure 0x405b00
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
	jne	.label_275
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_275:
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
	.align	16
	#Procedure 0x405b60

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
	jne	.label_276
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_276:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_278
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_277
.label_278:
	call	abort
.label_277:
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
	.align	16
	#Procedure 0x405c00
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
	je	.label_279
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_280
.label_279:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_280
.label_280:
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
	.align	16
	#Procedure 0x405d00

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
.label_382:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_385
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_396]]
	jmp	rcx
.label_1326:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1325:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_405
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_410
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_410:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_405
.label_405:
	movabs	rax, OFFSET FLAT:.str.10_2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_305
.label_1327:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_305
.label_1328:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_432
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
.label_432:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_445
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_465:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_450
	jmp	.label_453
.label_453:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_454
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_454:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_465
.label_450:
	mov	rbp, rbp
	jmp	.label_445
.label_445:
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
	jmp	.label_305
.label_1323:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1322:
	mov	byte ptr [rbp - 0x3e], 1
.label_1324:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_481
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_481:
	jmp	.label_281
.label_281:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_282
	jmp	.label_288
.label_288:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_290
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_282
.label_282:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_305
.label_1321:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_305
.label_385:
	call	abort
.label_305:
	mov	qword ptr [rbp - 0xd8], 0
.label_321:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_314
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
	jmp	.label_317
.label_314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_317:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_335
	mov	rbp, rbp
	jmp	.label_344
.label_335:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_347
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_347
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_347
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_364
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_364
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_377
.label_364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_377:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_347
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
	jne	.label_347
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_402
	jmp	.label_289
.label_402:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_347:
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
	ja	.label_408
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_419]]
	nop	
	jmp	rcx
.label_1298:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_424
	mov	rsp, rsp
	jmp	.label_428
.label_428:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_430
	jmp	.label_289
.label_430:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_294
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_294
	nop	
	jmp	.label_437
.label_437:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_440:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_446
.label_446:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_449
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_449:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_456
.label_456:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_459
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_459:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_294:
	lea	rsi, [rsi]
	jmp	.label_468
.label_468:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_469
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_469:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_474
.label_474:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_284
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_284
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_284
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_284
	nop	
	jmp	.label_371
.label_371:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_296
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_296:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_480
.label_480:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_447
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_447:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_284
.label_284:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_322
.label_424:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_326
	mov	rbp, rbp
	jmp	.label_318
.label_326:
	jmp	.label_322
.label_322:
	jmp	.label_319
.label_1309:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_333
	mov	rbp, rbp
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_342
	jmp	.label_350
.label_333:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_351
	jmp	.label_289
.label_351:
	jmp	.label_357
.label_342:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_363
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_363
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_363
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
	je	.label_374
	nop	
	jmp	.label_443
.label_443:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_374
	jmp	.label_387
.label_387:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_374
	jmp	.label_397
.label_397:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_374
	jmp	.label_352
.label_352:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_369
	jmp	.label_374
.label_374:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_411
	jmp	.label_289
.label_411:
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
	jae	.label_415
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_415:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_434
.label_434:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_438:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_442
.label_442:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_420
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_353:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_355
.label_369:
	jmp	.label_355
.label_355:
	jmp	.label_363
.label_363:
	jmp	.label_357
.label_350:
	jmp	.label_357
.label_357:
	jmp	.label_319
.label_1299:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_301
.label_1300:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_301
.label_1304:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_301
.label_1302:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_306
.label_1305:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_306
.label_1301:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_306
.label_1303:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_301
.label_1310:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_287
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_285
	nop	
	jmp	.label_289
.label_285:
	lea	rsi, [rsi]
	jmp	.label_291
.label_287:
	test	byte ptr [rbp - 0x89], 1
	je	.label_292
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_292
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_292
	jmp	.label_291
.label_292:
	jmp	.label_306
.label_306:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_307
	test	byte ptr [rbp - 0x3e], 1
	je	.label_307
	jmp	.label_289
.label_307:
	mov	rsp, rsp
	jmp	.label_301
.label_301:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_313
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_315
.label_313:
	jmp	.label_319
.label_1311:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_323
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_327
	jmp	.label_332
.label_323:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_327
.label_332:
	nop	
	jmp	.label_319
.label_327:
	jmp	.label_336
.label_336:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_401
	lea	rsi, [rsi]
	jmp	.label_319
.label_401:
	nop	
	jmp	.label_346
.label_346:
	mov	byte ptr [rbp - 0x91], 1
.label_1306:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_349
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_349
	jmp	.label_289
.label_349:
	lea	rsi, [rsi]
	jmp	.label_319
.label_1308:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_358
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_444
	jmp	.label_289
.label_444:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_345
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_345
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_345:
	jmp	.label_378
.label_378:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_380
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_384
.label_384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_392
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_392:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_403
.label_403:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_407:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_358:
	lea	rsi, [rsi]
	jmp	.label_319
.label_1307:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_319
.label_408:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_425
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
	jmp	.label_388
.label_425:
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
	jne	.label_448
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_448:
	jmp	.label_418
.label_418:
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
	jne	.label_467
	jmp	.label_298
.label_467:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_472
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_298
.label_472:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_476
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_293:
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
	jae	.label_451
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_451:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_341
	jmp	.label_359
.label_341:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_293
.label_359:
	jmp	.label_298
.label_476:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_362
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_362
	mov	qword ptr [rbp - 0xe8], 1
.label_356:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_309
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
	jb	.label_312
	jmp	.label_329
.label_329:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_312
	jmp	.label_334
.label_334:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_312
	jmp	.label_340
.label_340:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_343
	mov	rsp, rsp
	jmp	.label_312
.label_312:
	mov	rsp, rsp
	jmp	.label_289
.label_343:
	jmp	.label_354
.label_354:
	mov	rsp, rsp
	jmp	.label_463
.label_463:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_356
.label_309:
	mov	rbp, rbp
	jmp	.label_362
.label_362:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_366
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_366:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_367
.label_367:
	lea	rsi, [rsi]
	jmp	.label_372
.label_372:
	jmp	.label_375
.label_375:
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
	jne	.label_418
.label_298:
	jmp	.label_388
.label_388:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_383
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_395
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_395
.label_383:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_370:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_409
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_409
	jmp	.label_412
.label_412:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_413
	jmp	.label_289
.label_413:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_417
	test	byte ptr [rbp - 0x42], 1
	jne	.label_417
	lea	rdi, [rdi]
	jmp	.label_426
.label_426:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_471
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_471:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_433
.label_433:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_348:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_389
.label_389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_414
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_414:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_417:
	jmp	.label_457
.label_457:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_458
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_458:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_325
.label_325:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_360
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
.label_360:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_475
.label_475:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_478
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
.label_478:
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
	jmp	.label_283
.label_409:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_455
	lea	rdi, [rdi]
	jmp	.label_297
.label_297:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_300
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_300:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_455:
	nop	
	jmp	.label_283
.label_283:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_381
	jmp	.label_320
.label_381:
	lea	rsi, [rsi]
	jmp	.label_324
.label_324:
	test	byte ptr [rbp - 0x42], 1
	je	.label_316
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_316
	lea	rsi, [rsi]
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_331
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_338
.label_338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_316:
	nop	
	jmp	.label_361
.label_361:
	mov	rsp, rsp
	jmp	.label_304
.label_304:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_365
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_365:
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
	jmp	.label_370
.label_320:
	mov	rsp, rsp
	jmp	.label_291
.label_395:
	lea	rsi, [rsi]
	jmp	.label_319
.label_319:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_466
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_390
.label_466:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_394
.label_390:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_394
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
	jne	.label_399
.label_394:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_399
	mov	rsp, rsp
	jmp	.label_291
.label_399:
	nop	
	jmp	.label_315
.label_315:
	jmp	.label_421
.label_421:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_422
	jmp	.label_289
.label_422:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_427
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_427
	lea	rdi, [rdi]
	jmp	.label_431
.label_431:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_379
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_379:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_436
.label_436:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_460
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_460:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_427:
	jmp	.label_461
.label_461:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_462
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_462:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_470
.label_470:
	nop	
	jmp	.label_291
.label_291:
	jmp	.label_473
.label_473:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_423
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_423
	lea	rdi, [rdi]
	jmp	.label_477
.label_477:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_479
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_479:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_286
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_286:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_423:
	jmp	.label_299
.label_299:
	nop	
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_303
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_303:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_311
	mov	byte ptr [rbp - 0xb7], 0
.label_311:
	mov	rbp, rbp
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_321
.label_344:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_328
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_328
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_328
	nop	
	jmp	.label_289
.label_328:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_337
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_337
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_337
	test	byte ptr [rbp - 0xb7], 1
	je	.label_452
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
	jmp	.label_373
.label_452:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_376
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_376
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_382
.label_376:
	jmp	.label_386
.label_386:
	mov	rbp, rbp
	jmp	.label_337
.label_337:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_391
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_391
	mov	rbp, rbp
	jmp	.label_398
.label_398:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_400
	lea	rdi, [rdi]
	jmp	.label_404
.label_404:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_406:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_398
.label_400:
	jmp	.label_391
.label_391:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_429
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_429:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_373
.label_289:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_439
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_439
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_439:
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
.label_373:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077a0
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
	.align	16
	#Procedure 0x407810

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
	je	.label_482
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_483
.label_482:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_483
.label_483:
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
	je	.label_484
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_484:
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
	.align	16
	#Procedure 0x4079e0
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
.label_489:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_488
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
	jmp	.label_489
.label_488:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_487
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_485]],  rax
.label_487:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_486
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_486:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407af0

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
	.align	16
	#Procedure 0x407b40

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
	jge	.label_495
	call	abort
.label_495:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_490
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
	jge	.label_491
	call	xalloc_die
.label_491:
	test	byte ptr [rbp - 0x51], 1
	je	.label_492
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_496
.label_492:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_496:
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
	je	.label_494
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_485]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_494:
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
.label_490:
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
	ja	.label_493
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
	je	.label_497
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_497:
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
.label_493:
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
	.align	16
	#Procedure 0x407e70

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
	.align	16
	#Procedure 0x407eb0
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
	#Procedure 0x407ee0
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
	.align	16
	#Procedure 0x407f20

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
	.align	16
	#Procedure 0x407f80

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
	jne	.label_498
	call	abort
.label_498:
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
	.align	16
	#Procedure 0x408020

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
	.align	16
	#Procedure 0x408090

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
	.align	16
	#Procedure 0x4080d0
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
	.align	16
	#Procedure 0x408110

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
	.align	16
	#Procedure 0x4081c0

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
	#Procedure 0x408200

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
	#Procedure 0x408230
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
	#Procedure 0x408270

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
	#Procedure 0x408350

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
	.align	16
	#Procedure 0x4083a0

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
	.align	16
	#Procedure 0x408440
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
	.align	16
	#Procedure 0x408490
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
	.align	16
	#Procedure 0x4084f0

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
	.align	16
	#Procedure 0x408530
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
	#Procedure 0x408570

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
	#Procedure 0x4085b0

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
	#Procedure 0x4085f0

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
	je	.label_502
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_499
.label_502:
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
	jne	.label_500
	movabs	rax, OFFSET FLAT:.str.15_2
	movabs	rcx, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_499
.label_500:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_501
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_2
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_499
.label_501:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_2
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_499:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_1
	lea	rsi, [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_504
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_503
.label_504:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
.label_503:
	mov	rax, qword ptr [rbp - 0x98]
	add	rsp, 0xa0
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087e0
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	fstatat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408820

	.globl lstatat
	.type lstatat, @function
lstatat:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	fstatat
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408870

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
	je	.label_508
	movabs	rsi, OFFSET FLAT:.str_10
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
	jmp	.label_506
.label_508:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_506:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_5
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
	mov	ecx, OFFSET FLAT:.str.3_3
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
	ja	.label_507
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_509]]
	jmp	rcx
.label_1339:
	jmp	.label_505
.label_1340:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_3
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
	jmp	.label_505
.label_1341:
	movabs	rdi, OFFSET FLAT:.str.5_2
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
	jmp	.label_505
.label_1342:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_505
.label_1343:
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
	jmp	.label_505
.label_1344:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_505
.label_1345:
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
	jmp	.label_505
.label_1346:
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
	jmp	.label_505
.label_1347:
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
	jmp	.label_505
.label_1348:
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
	jmp	.label_505
.label_507:
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
.label_505:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090b0
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
.label_510:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_511
	mov	rbp, rbp
	jmp	.label_512
.label_512:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_510
.label_511:
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
	.align	16
	#Procedure 0x409160

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
.label_514:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_516
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
	jmp	.label_515
.label_516:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_515:
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
.label_517:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_513
	mov	rsp, rsp
	jmp	.label_518
.label_513:
	jmp	.label_519
.label_519:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_514
.label_518:
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
	.align	16
	#Procedure 0x4092c0

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
	je	.label_520
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
.label_520:
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
	.align	16
	#Procedure 0x409480
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
	movabs	rsi, OFFSET FLAT:.str.15_0
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
	.align	16
	#Procedure 0x409530

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	mov	rbp, rbp
	jne	.label_521
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	call	geteuid
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	cl, byte ptr [rbp - 1]
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [can_write_any_file.can_write]],  cl
	mov	rsp, rsp
	mov	byte ptr [byte ptr [can_write_any_file.initialized]],  1
.label_521:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	nop	
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095a0
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
	jae	.label_522
	mov	rbp, rbp
	call	xalloc_die
.label_522:
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
	#Procedure 0x409600

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
	jne	.label_523
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_523
	lea	rdi, [rdi]
	call	xalloc_die
.label_523:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409660
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
	jae	.label_524
	mov	rsp, rsp
	call	xalloc_die
.label_524:
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
	.align	16
	#Procedure 0x4096e0

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
	jne	.label_525
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_525
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_527
.label_525:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_526
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_526
	lea	rsi, [rsi]
	call	xalloc_die
.label_526:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_527:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409790

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
	jne	.label_528
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_530
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
.label_530:
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
	jae	.label_532
	call	xalloc_die
.label_532:
	lea	rsi, [rsi]
	jmp	.label_531
.label_528:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_529
	call	xalloc_die
.label_529:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_531:
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
	.align	16
	#Procedure 0x4098c0

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
	#Procedure 0x4098f0
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
	#Procedure 0x409930
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
	#Procedure 0x409980
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
	jb	.label_533
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_534
.label_533:
	lea	rsi, [rsi]
	call	xalloc_die
.label_534:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099f0

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
	.align	16
	#Procedure 0x409a40
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
	.align	16
	#Procedure 0x409aa0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_6
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409b00

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	esi, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	rpl_fts_open
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_537
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_536
	lea	rdi, [rdi]
	jmp	.label_535
.label_536:
	nop	
	movabs	rdi, OFFSET FLAT:.str_11
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_535:
	lea	rdi, [rdi]
	call	xalloc_die
.label_537:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bb0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_538
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	je	.label_540
.label_538:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	nop	
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 2], cl
	lea	rdi, [rdi]
	je	.label_539
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 2], cl
	je	.label_539
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 2], cl
.label_539:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
.label_540:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c80

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jg	.label_542
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_541
.label_542:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	jne	.label_543
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_543:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpmatch
	nop	
	xor	ecx, ecx
	nop	
	cmp	ecx, eax
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
.label_541:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d50

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
	je	.label_544
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_545
.label_544:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_546
.label_545:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_546:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dc0

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
	je	.label_547
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
.label_547:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e20

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rax + 0x20]
	nop	
	jbe	.label_548
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_549
.label_548:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	mov	rbp, rbp
	cmp	edx, 0
	mov	qword ptr [rbp - 0x10], rax
	je	.label_550
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_551
.label_550:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
.label_549:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ef0

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
	jne	.label_552
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_552
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_552
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
	jne	.label_554
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_553
.label_554:
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
	jmp	.label_553
.label_552:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_553:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a000

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x90], 0
	mov	esi, dword ptr [rbp - 0x40]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_555
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	nop	
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_556
.label_555:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_574
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0x200
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_574
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_556
.label_574:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	eax, 0x12
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_585
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_556
.label_585:
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
	jne	.label_590
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jmp	.label_556
.label_590:
	xor	esi, esi
	mov	eax, 0x80
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x40]
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
	je	.label_566
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
.label_566:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_558
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_558
	jmp	.label_586
.label_586:
	movabs	rdi, OFFSET FLAT:.str_3
	xor	esi, esi
	mov	al, 0
	nop	
	call	open_safer
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	jge	.label_575
	mov	rsp, rsp
	jmp	.label_592
.label_575:
	mov	edi, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_592:
	jmp	.label_558
.label_558:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	fts_maxarglen
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	jbe	.label_561
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jmp	.label_569
.label_561:
	mov	rsp, rsp
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rsp, rsp
	call	fts_palloc
	test	al, 1
	jne	.label_580
	jmp	.label_581
.label_580:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_582
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	fts_alloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_588
	mov	rsp, rsp
	jmp	.label_564
.label_588:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x68], -1
.label_582:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_557
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
.label_557:
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], 0
.label_587:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_571
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	and	ecx, 0x800
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_572
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	cmp	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jae	.label_570
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_570
	nop	
	jmp	.label_568
.label_568:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rbp - 0x51], cl
	jae	.label_589
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 2
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2f
	mov	rsp, rsp
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
.label_589:
	nop	
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_563
	mov	rbp, rbp
	jmp	.label_567
.label_563:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_568
.label_567:
	lea	rdi, [rdi]
	jmp	.label_570
.label_570:
	jmp	.label_572
.label_572:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	call	fts_alloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	cmp	rax, 0
	jne	.label_576
	jmp	.label_565
.label_576:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 0x108
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x41], 1
	je	.label_579
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_579
	nop	
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x68]
	call	fts_set_stat_required
	jmp	.label_591
.label_579:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	word ptr [rsi + 0x70], ax
.label_591:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_593
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_562
.label_593:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_583
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_573
.label_583:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x90], rax
.label_573:
	lea	rsi, [rsi]
	jmp	.label_562
.label_562:
	lea	rsi, [rsi]
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_587
.label_571:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_560
	cmp	qword ptr [rbp - 0x80], 1
	nop	
	jbe	.label_560
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x80]
	call	fts_sort
	mov	qword ptr [rbp - 0x20], rax
.label_560:
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
	jne	.label_559
	jmp	.label_565
.label_559:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
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
	jne	.label_577
	lea	rsi, [rsi]
	jmp	.label_565
.label_577:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_578
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_578
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	diropen
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_578
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_578:
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_556
.label_565:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	free
.label_564:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_581:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x38], 0
.label_556:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a790

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
.label_596:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_595
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
	jbe	.label_597
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_597:
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_596
.label_595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a810

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsi, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_598
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	lea	rsi, [rsi]
	jmp	.label_600
.label_598:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_599
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_600
.label_599:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_600:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a920

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_601
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_602
.label_601:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rdx + rax + 0x108], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_602:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa60

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
	je	.label_603
	lea	rdi, [rdi]
	call	abort
.label_603:
	nop	
	jmp	.label_604
.label_604:
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
	#Procedure 0x40aae0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x13], al
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 0x78
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_617
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_617
	mov	byte ptr [rbp - 0x13], 1
.label_617:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_606
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13], 1
	mov	rbp, rbp
	je	.label_615
.label_606:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_609
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_616
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_616
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 0xd
	jmp	.label_608
.label_616:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_620
.label_609:
	jmp	.label_610
.label_615:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	fstatat
	cmp	eax, 0
	je	.label_618
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], ecx
.label_620:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	mov	word ptr [rbp - 0x12], 0xa
	jmp	.label_608
.label_618:
	lea	rdi, [rdi]
	jmp	.label_610
.label_610:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_621
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_611
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_612
.label_611:
	mov	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_607
.label_612:
	mov	rsp, rsp
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rdx
.label_607:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax + 0x108]
	lea	rdi, [rdi]
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	jne	.label_613
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_619
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 0x109]
	nop	
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_613
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_613
.label_619:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	nop	
	mov	word ptr [rbp - 0x12], si
	mov	rbp, rbp
	jmp	.label_608
.label_613:
	mov	word ptr [rbp - 0x12], 1
	jmp	.label_608
.label_621:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	nop	
	jne	.label_614
	mov	rsp, rsp
	mov	word ptr [rbp - 0x12], 0xc
	jmp	.label_608
.label_614:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_605
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 8
	jmp	.label_608
.label_605:
	mov	rbp, rbp
	mov	word ptr [rbp - 0x12], 3
.label_608:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 0x12]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ae10

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
	lea	rax, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rax
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_623
.label_625:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	jbe	.label_626
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x28
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_629
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_627
.label_629:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_630
.label_627:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_626:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
.label_631:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_628
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_631
.label_628:
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	qsort
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
.label_622:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_624
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_622
.label_624:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_630:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b070

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	mov	rbp, rbp
	and	eax, 0x102
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_632
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
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	jne	.label_635
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0
	jmp	.label_633
.label_635:
	jmp	.label_636
.label_632:
	mov	eax, 0x20
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_634
	mov	byte ptr [rbp - 9], 0
	jmp	.label_633
.label_634:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_636:
	mov	byte ptr [rbp - 9], 1
.label_633:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b170

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
	mov	qword ptr [rbp - 0x18], rsi
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
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_637
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	al, 0
	nop	
	call	openat_safer
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jmp	.label_638
.label_637:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	al, 0
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_638:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b220

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
.label_640:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_641
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_639
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_639:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	jmp	.label_640
.label_641:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b290

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_647
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_652:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jl	.label_653
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_657
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_644
.label_657:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_644:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_652
.label_653:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_647:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_654
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_654:
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
	je	.label_649
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x2c]
	mov	rsp, rsp
	jg	.label_651
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	nop	
	cmp	eax, 0
	nop	
	je	.label_655
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_655:
	lea	rsi, [rsi]
	jmp	.label_651
.label_651:
	jmp	.label_648
.label_649:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_642
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_645
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_645:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rax + 0x28]
	nop	
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_643
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_656
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
.label_656:
	jmp	.label_643
.label_643:
	lea	rdi, [rdi]
	jmp	.label_642
.label_642:
	jmp	.label_648
.label_648:
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
	je	.label_650
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	call	hash_free
.label_650:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_658
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_646
.label_658:
	mov	dword ptr [rbp - 4], 0
.label_646:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b540

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
.label_659:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	i_ring_empty
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_661
	nop	
	jmp	.label_662
.label_661:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax
	cmp	ecx, dword ptr [rbp - 8]
	jg	.label_660
	mov	edi, dword ptr [rbp - 8]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_660:
	jmp	.label_659
.label_662:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5b0

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
	je	.label_663
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_665
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	call	hash_free
.label_665:
	lea	rdi, [rdi]
	jmp	.label_664
.label_663:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
.label_664:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b630

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi], 0
	mov	rbp, rbp
	je	.label_682
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_695
.label_682:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_667
.label_695:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	cx, word ptr [rax + 0x74]
	nop	
	mov	word ptr [rbp - 0x4a], cx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	movzx	edx, word ptr [rbp - 0x4a]
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_710
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rsi
	jmp	.label_667
.label_710:
	movzx	eax, word ptr [rbp - 0x4a]
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_673
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	nop	
	je	.label_736
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rsp, rsp
	cmp	ecx, 0xd
	jne	.label_673
.label_736:
	nop	
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_690
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_690
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_715
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 7
	jmp	.label_719
.label_715:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	nop	
	or	ecx, 2
	mov	dx, cx
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x72], dx
.label_719:
	jmp	.label_690
.label_690:
	jmp	.label_692
.label_673:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_731
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x4a]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_735
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_671
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_671
.label_735:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	and	ecx, 2
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_717
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_717:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_702
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
.label_702:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_667
.label_671:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_724
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x1000
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_724
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
.label_724:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 8], 0
	je	.label_683
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_687
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_720:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_679
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_720
.label_679:
	jmp	.label_687
.label_687:
	lea	rdi, [rdi]
	jmp	.label_716
.label_683:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_666
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_708
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_667
.label_708:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x40], 0
	je	.label_689
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_689
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
.label_689:
	nop	
	jmp	.label_711
.label_711:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	leave_dir
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_667
.label_666:
	lea	rdi, [rdi]
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
	jmp	.label_698
.label_731:
	mov	rsp, rsp
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	jne	.label_697
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_697
	mov	rbp, rbp
	mov	esi, 3
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	fts_build
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_693
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x2000
	nop	
	cmp	ecx, 0
	je	.label_700
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_667
.label_700:
	jmp	.label_691
.label_693:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	jmp	.label_698
.label_697:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	je	.label_718
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_727
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	restore_initial_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_734
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x48], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_667
.label_734:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	free_dir
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_load
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	call	setup_dir
	mov	byte ptr [rbp - 0x39], al
	jmp	.label_692
.label_727:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x74]
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_699
	lea	rdi, [rdi]
	jmp	.label_706
.label_699:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + 0x74]
	nop	
	cmp	ecx, 2
	nop	
	jne	.label_732
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	call	fts_stat
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rsi + 0x70]
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_672
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_672
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_669
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rbp, rbp
	jmp	.label_668
.label_669:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_668:
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
.label_732:
	mov	rbp, rbp
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jne	.label_701
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_729
.label_701:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_729:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x2f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_692:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_685
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0xa8], 2
	mov	rsp, rsp
	jne	.label_696
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], 0
	nop	
	jne	.label_703
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_703
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_703
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_703
	nop	
	jmp	.label_676
.label_703:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsi + 0x90]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	nop	
	jne	.label_678
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	je	.label_678
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	jae	.label_678
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_678
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x68]
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x68], rcx
.label_678:
	mov	rbp, rbp
	jmp	.label_676
.label_676:
	jmp	.label_709
.label_696:
	nop	
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_713
	nop	
	call	abort
.label_713:
	jmp	.label_730
.label_730:
	mov	rsp, rsp
	jmp	.label_709
.label_709:
	mov	rsp, rsp
	jmp	.label_685
.label_685:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_681
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_728
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_728:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	enter_dir
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_675
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_667
.label_675:
	mov	rbp, rbp
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_667
.label_718:
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x58], -1
	mov	rbp, rbp
	jne	.label_707
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_667
.label_707:
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rsp, rsp
	jne	.label_726
	call	abort
.label_726:
	jmp	.label_733
.label_733:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_721
	mov	rdi, qword ptr [rbp - 0x58]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_680
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rbp, rbp
	mov	dword ptr [rax + 0x48], ecx
.label_680:
	jmp	.label_694
.label_721:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	je	.label_684
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_705
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_714
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x48]
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
	jne	.label_722
	jmp	.label_705
.label_714:
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	fchdir
	cmp	eax, 0
	je	.label_705
.label_722:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_705:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_677
.label_684:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_674
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	nop	
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_674
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_674:
	jmp	.label_677
.label_677:
	nop	
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rbp, rbp
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_686
	nop	
	mov	eax, 6
	mov	rbp, rbp
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x40], 0
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	si, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x40], 0
	nop	
	jne	.label_723
	lea	rdi, [rdi]
	jmp	.label_670
.label_670:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	leave_dir
	jmp	.label_723
.label_723:
	mov	rsp, rsp
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_688
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	jmp	.label_704
.label_688:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
.label_704:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_667:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c390

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
	je	.label_741
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
	jne	.label_739
	call	abort
.label_739:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	lea	rdi, [rdi]
	jmp	.label_738
.label_741:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_743
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_743
	mov	rsp, rsp
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_744
	lea	rsi, [rsi]
	call	abort
.label_744:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_740
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_740
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
.label_740:
	mov	rsp, rsp
	jmp	.label_737
.label_737:
	mov	rsp, rsp
	jmp	.label_743
.label_743:
	jmp	.label_738
.label_738:
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c530

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rdi
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rcx
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_753
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xcd], cl
.label_753:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	edx, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	edx, 4
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_752
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_758
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0xcc]
	jg	.label_758
	nop	
	mov	edi, dword ptr [rbp - 0xcc]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_758:
	mov	dword ptr [rbp - 0xd4], 0
	lea	rsi, [rsi]
	jmp	.label_749
.label_752:
	cmp	dword ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	jge	.label_755
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb9], 1
	je	.label_755
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_755
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_745
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	i_ring_pop
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	mov	byte ptr [rbp - 0xb9], 1
	cmp	ecx, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	jg	.label_750
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	mov	qword ptr [rbp - 0xa8], 0
.label_750:
	jmp	.label_745
.label_745:
	jmp	.label_755
.label_755:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcc], 0
	mov	rbp, rbp
	jge	.label_751
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	diropen
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_751
	mov	dword ptr [rbp - 0xd4], 0xffffffff
	nop	
	jmp	.label_749
.label_751:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 2
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_757
	cmp	qword ptr [rbp - 0xa8], 0
	nop	
	je	.label_748
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_1
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_748
.label_757:
	lea	rsi, [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0xdc]
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_756
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_746
.label_756:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	jne	.label_759
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x90]
	nop	
	je	.label_760
.label_759:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 8], 0xffffffff
	mov	rbp, rbp
	jmp	.label_746
.label_760:
	jmp	.label_748
.label_748:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_754
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
	nop	
	jmp	.label_749
.label_754:
	mov	edi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	call	fchdir
	mov	dword ptr [rbp - 8], eax
.label_746:
	nop	
	cmp	dword ptr [rbp - 0xcc], 0
	jge	.label_747
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], ecx
	mov	edi, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	dword ptr [rbp - 0xb0], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_747:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
.label_749:
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c910

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x110
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], esi
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdi + 0x18], 0
	lea	rsi, [rsi]
	setne	al
	nop	
	xor	al, 0xff
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xad], al
	mov	byte ptr [rbp - 0x11], 0
	test	byte ptr [rbp - 0xad], 1
	mov	rbp, rbp
	je	.label_802
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	dirfd
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_820
	jmp	.label_823
.label_823:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xc8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_827
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 4
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
.label_827:
	mov	qword ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	jmp	.label_762
.label_820:
	mov	rbp, rbp
	jmp	.label_764
.label_802:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_766
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_766
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	jmp	.label_774
.label_766:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_774
.label_774:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rdi + 0x48]
	mov	rsp, rsp
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xe4], eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rsi
	mov	byte ptr [rbp - 0xe9], dl
	je	.label_790
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x81], cl
	nop	
	je	.label_787
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0x81], cl
.label_787:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xe9], al
.label_790:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xe9]
	mov	rbp, rbp
	lea	rcx, [rbp - 4]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	esi, 0x20000
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x108]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_811
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	nop	
	jne	.label_814
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 4
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
.label_814:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_762
.label_811:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rbp, rbp
	jne	.label_821
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_780
.label_821:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_779
	jmp	.label_832
.label_832:
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	fts_stat
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rbp - 0x8a], ax
	nop	
	call	enter_dir
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_771
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_762
.label_771:
	jmp	.label_779
.label_779:
	jmp	.label_780
.label_780:
	jmp	.label_764
.label_764:
	nop	
	mov	eax, 0x186a0
	nop	
	mov	ecx, eax
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 0xad], 1
	mov	rsp, rsp
	je	.label_770
	mov	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	jmp	.label_786
.label_770:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	je	.label_789
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_793
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_793
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_793
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdx + 0x88], 2
	nop	
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_793
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 4]
	call	leaf_optimization
	mov	rbp, rbp
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xf9], cl
.label_793:
	mov	al, byte ptr [rbp - 0xf9]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_789:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xae], al
	test	byte ptr [rbp - 0xae], 1
	mov	rsp, rsp
	jne	.label_822
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_803
.label_822:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_829
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	rpl_fcntl
	mov	dword ptr [rbp - 4], eax
.label_829:
	cmp	dword ptr [rbp - 4], 0
	jl	.label_763
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	fts_safe_changedir
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_785
.label_763:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xae], 1
	je	.label_772
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_772
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], ecx
.label_772:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0xae], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	closedir
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_783
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_783
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	close
	nop	
	mov	dword ptr [rbp - 0xe8], eax
.label_783:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_798
.label_785:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xae], 1
.label_798:
	nop	
	jmp	.label_803
.label_803:
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_806
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_813
.label_806:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_813:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_810
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	mov	byte ptr [rax], 0x2f
	mov	rsp, rsp
	jmp	.label_826
.label_810:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], 0
.label_826:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0xd0], 0
.label_807:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	je	.label_781
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xc0], 0
	mov	rbp, rbp
	jne	.label_784
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_791
	call	__errno_location
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], edx
	nop	
	test	byte ptr [rbp - 0xad], 1
	mov	byte ptr [rbp - 0xc1], cl
	mov	rbp, rbp
	jne	.label_794
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xc1], al
.label_794:
	mov	al, byte ptr [rbp - 0xc1]
	mov	rsp, rsp
	mov	ecx, 4
	mov	rsp, rsp
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	word ptr [rdi + 0x70], si
.label_791:
	jmp	.label_781
.label_784:
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_816
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_816
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x14], 0
	mov	rsp, rsp
	je	.label_817
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_816
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_816
.label_817:
	mov	rsp, rsp
	jmp	.label_807
.label_816:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 0x13
	nop	
	mov	rdi, rax
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_831
	jmp	.label_775
.label_831:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	cmp	rax, qword ptr [rbp - 0x80]
	jb	.label_765
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rax, 1
	mov	rsi, rax
	mov	rbp, rbp
	call	fts_palloc
	test	al, 1
	mov	rbp, rbp
	jne	.label_777
	jmp	.label_775
.label_775:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	call	fts_lfree
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x70], 7
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x10c], ecx
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x10c]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_762
.label_777:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	je	.label_800
	nop	
	mov	byte ptr [rbp - 0x51], 1
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 4
	cmp	ecx, 0
	je	.label_805
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
.label_805:
	jmp	.label_800
.label_800:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
.label_765:
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_818
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	fts_lfree
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	nop	
	call	closedir
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0x88], eax
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_762
.label_818:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	edx, 4
	cmp	edx, 0
	je	.label_767
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rcx + 0x60]
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	rsi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_796
.label_767:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
.label_796:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_801
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	nop	
	je	.label_804
.label_801:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_809
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_809
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0xaf], cl
	nop	
	je	.label_809
	mov	rax, qword ptr [rbp - 0xc0]
	movzx	ecx, byte ptr [rax + 0x12]
	nop	
	cmp	ecx, 4
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaf], dl
.label_809:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xaf]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0xe0]
	add	rcx, 0x78
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	movzx	esi, byte ptr [rdx + 0x12]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	al, byte ptr [rbp - 0x82]
	xor	al, 0xff
	nop	
	and	al, 1
	nop	
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_769
.label_804:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	word ptr [rsi + 0x70], ax
.label_769:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rax + 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_776
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_782
.label_776:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x68], rax
.label_782:
	cmp	qword ptr [rbp - 0xd0], 0x2710
	jne	.label_788
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_788
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dirent_inode_sort_may_be_useful
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_788:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xd0]
	ja	.label_799
	mov	rsp, rsp
	jmp	.label_792
.label_799:
	nop	
	jmp	.label_807
.label_781:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_808
	jmp	.label_812
.label_812:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	jmp	.label_808
.label_808:
	lea	rdi, [rdi]
	jmp	.label_792
.label_792:
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	je	.label_819
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_padjust
.label_819:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_828
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_830
.label_828:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_830:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	byte ptr [rax], 0
.label_824:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xad], 1
	jne	.label_761
	nop	
	test	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	je	.label_761
	cmp	dword ptr [rbp - 0xac], 1
	je	.label_768
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_761
.label_768:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_773
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	call	restore_initial_cwd
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_778
	jmp	.label_761
.label_773:
	mov	edx, 0xffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	fts_safe_changedir
	nop	
	cmp	eax, 0
	je	.label_761
.label_778:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_762
.label_761:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_795
	cmp	dword ptr [rbp - 0xac], 3
	mov	rsp, rsp
	jne	.label_797
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_797
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	lea	rdi, [rdi]
	je	.label_797
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
.label_797:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_lfree
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_762
.label_795:
	test	byte ptr [rbp - 0x11], 1
	je	.label_815
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
.label_815:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_825
	cmp	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jbe	.label_825
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	qword ptr [rbp - 0xa0], rax
.label_825:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
.label_762:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsp, 0x110
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da20

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	jne	.label_833
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_838
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	je	.label_837
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_834
.label_837:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_834:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	jmp	.label_839
.label_838:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_836
	mov	eax, 0xffffff9c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_835
.label_836:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_835:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_839:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
.label_833:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	ecx, al
	mov	dword ptr [rbp - 0x28], ecx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db80

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x2f
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x108
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x108
	mov	rdi, rcx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_840
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0x108
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_841
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_840
.label_841:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x108
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	add	rdi, 1
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x28]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x60], rax
.label_840:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dce0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], esi
	mov	rdi, qword ptr [rbp - 0x28]
	call	filesystem_type
	mov	rdi, rax
	mov	rsp, rsp
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	je	.label_855
	jmp	.label_846
.label_846:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_848
	lea	rdi, [rdi]
	jmp	.label_852
.label_852:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	je	.label_842
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	je	.label_847
	mov	rsp, rsp
	jmp	.label_853
.label_853:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x30], rax
	je	.label_850
	jmp	.label_845
.label_845:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x18], rax
	je	.label_847
	lea	rsi, [rsi]
	jmp	.label_851
.label_851:
	mov	eax, 0xff534d42
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	je	.label_854
	lea	rdi, [rdi]
	jmp	.label_849
.label_847:
	mov	dword ptr [rbp - 0x38], 2
	lea	rsi, [rsi]
	jmp	.label_843
.label_855:
	lea	rdi, [rdi]
	jmp	.label_850
.label_850:
	lea	rsi, [rsi]
	jmp	.label_854
.label_854:
	jmp	.label_848
.label_848:
	mov	rbp, rbp
	jmp	.label_842
.label_842:
	mov	dword ptr [rbp - 0x38], 0
	nop	
	jmp	.label_843
.label_849:
	mov	dword ptr [rbp - 0x38], 1
.label_843:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de30

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_861
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x78
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_856
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_857
.label_856:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	je	.label_859
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_858
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_857
.label_858:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 2
.label_859:
	mov	rbp, rbp
	jmp	.label_860
.label_861:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_862
	jmp	.label_863
.label_862:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x70], 2
.label_863:
	jmp	.label_860
.label_860:
	mov	byte ptr [rbp - 0x19], 1
.label_857:
	nop	
	mov	al, byte ptr [rbp - 0x19]
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
	#Procedure 0x40dfc0

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x10], esi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rdi + 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	jne	.label_864
	cmp	dword ptr [rbp - 4], -0x64
	mov	rsp, rsp
	je	.label_864
	call	abort
.label_864:
	mov	rsp, rsp
	jmp	.label_870
.label_870:
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_865
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x60
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x20], eax
	nop	
	cmp	esi, dword ptr [rbp - 0x20]
	jg	.label_867
	mov	edi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_867:
	mov	rsp, rsp
	jmp	.label_868
.label_865:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_869
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_866
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_866:
	jmp	.label_869
.label_869:
	lea	rdi, [rdi]
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x2c], eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0d0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_871
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_871
	cmp	dword ptr [rbp - 0xc], 2
	lea	rsi, [rsi]
	je	.label_871
	cmp	dword ptr [rbp - 0xc], 3
	nop	
	je	.label_871
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	mov	rsp, rsp
	je	.label_871
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	jmp	.label_872
.label_871:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 8]
	mov	word ptr [rdx + 0x74], cx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
.label_872:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e170
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_878
	nop	
	cmp	dword ptr [rbp - 8], 0x1000
	mov	rbp, rbp
	je	.label_878
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_873
.label_878:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
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
	je	.label_879
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_873
.label_879:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_875
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_873
.label_875:
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_884
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_873
.label_884:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_877
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
.label_877:
	cmp	dword ptr [rbp - 8], 0x1000
	jne	.label_885
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 2
	nop	
	jmp	.label_880
.label_885:
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 1
.label_880:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_874
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_874
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_882
.label_874:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_873
.label_882:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	nop	
	jge	.label_886
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_873
.label_886:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 8]
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
	je	.label_881
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	call	cwd_advance_fd
	jmp	.label_883
.label_881:
	mov	edi, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	fchdir
	cmp	eax, 0
	je	.label_876
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	close
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_873
.label_876:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 4], eax
.label_883:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_873:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e450

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e490

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	lea	rdi, [rdi]
	jne	.label_887
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], dl
.label_887:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e510

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], esi
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	mov	rbp, rbp
	cmp	esi, 0
	jne	.label_891
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_897
.label_891:
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_894
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
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_894:
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	je	.label_895
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	hash_lookup
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_892
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_897
.label_892:
	nop	
	jmp	.label_895
.label_895:
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jl	.label_901
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	fstatfs
	cmp	eax, 0
	nop	
	je	.label_898
.label_901:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_897
.label_898:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	je	.label_893
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rsi, [rsi]
	je	.label_890
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_888
	mov	rsp, rsp
	jmp	.label_900
.label_900:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_896
	call	abort
.label_896:
	nop	
	jmp	.label_899
.label_899:
	jmp	.label_889
.label_888:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_889:
	jmp	.label_890
.label_890:
	jmp	.label_893
.label_893:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_897:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e780

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7d0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
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
	#Procedure 0x40e830

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	dec	esi
	lea	rdi, [rdi]
	mov	edi, esi
	sub	esi, 0xb
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	ja	.label_904
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_903]]
	jmp	rcx
.label_1335:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0x6000
	jmp	.label_902
.label_1333:
	mov	dword ptr [rbp - 0x24], 0x2000
	mov	rsp, rsp
	jmp	.label_902
.label_1334:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0x4000
	mov	rbp, rbp
	jmp	.label_902
.label_1332:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x1000
	mov	rbp, rbp
	jmp	.label_902
.label_1337:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xa000
	mov	rsp, rsp
	jmp	.label_902
.label_1336:
	mov	dword ptr [rbp - 0x24], 0x8000
	jmp	.label_902
.label_1338:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc000
	jmp	.label_902
.label_904:
	mov	dword ptr [rbp - 0x24], 0
.label_902:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e900

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	mov	dword ptr [rbp - 0x24], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	je	.label_907
	lea	rdi, [rdi]
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 0x1021994
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	je	.label_907
	jmp	.label_909
.label_909:
	lea	rsi, [rsi]
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	jne	.label_905
	jmp	.label_907
.label_907:
	mov	byte ptr [rbp - 0x25], 0
	nop	
	jmp	.label_906
.label_905:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], 1
.label_906:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9b0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x20], rsi
.label_920:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_910
	nop	
	jmp	.label_917
.label_917:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_918
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	mov	rbp, rbp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_918:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_913
.label_913:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_920
.label_910:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_911:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_919
	lea	rdi, [rdi]
	jmp	.label_914
.label_914:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_916
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x38]
	mov	rbp, rbp
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
.label_916:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_912
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_915
.label_912:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_915:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_911
.label_919:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb40

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_921
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_922
.label_921:
	xor	eax, eax
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x80]
	nop	
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_922:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebd0

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
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
	mov	rax, qword ptr [rbp - 8]
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
	#Procedure 0x40ec40

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
	jne	.label_923
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_923:
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
	ja	.label_924
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_924
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_924
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
	jmp	.label_925
.label_924:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_925:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed30

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
	jne	.label_926
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_930
.label_926:
	mov	rbp, rbp
	jmp	.label_927
.label_927:
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
	jne	.label_928
	jmp	.label_929
.label_928:
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
	je	.label_927
.label_929:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_930:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee20

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
	jne	.label_933
	test	byte ptr [rbp - 0x15], 1
	je	.label_932
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_933
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_932
.label_933:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_931
	call	__errno_location
	mov	dword ptr [rax], 0
.label_931:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_934
.label_932:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_934:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef00

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
	#Procedure 0x40ef30

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x18], 0x95f616
	nop	
	jne	.label_939
	mov	rsp, rsp
	jmp	.label_941
.label_939:
	movabs	rdi, OFFSET FLAT:.str_12
	movabs	rsi, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	edx, 0x3c
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	mov	rbp, rbp
	call	__assert_fail
.label_941:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_935
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_935
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_935
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_940
.label_935:
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
	jne	.label_936
	mov	rsp, rsp
	jmp	.label_938
.label_936:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_937
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_940
.label_937:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_938:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
.label_940:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f080

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
	#Procedure 0x40f0c0

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
	je	.label_942
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
.label_942:
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
	je	.label_943
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
	ja	.label_945
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
	jmp	.label_944
.label_945:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_944:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_943:
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
	.section	.text
	.align	16
	#Procedure 0x40f340

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
	je	.label_947
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_13
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_948
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_9
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_946
.label_948:
	mov	byte ptr [rbp - 0xd], 0
.label_946:
	jmp	.label_947
.label_947:
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
	.align	16
	#Procedure 0x40f3e0

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
	#Procedure 0x40f400

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
	#Procedure 0x40f420

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
	#Procedure 0x40f440

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
.label_954:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_949
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_951
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_955:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_950
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_955
.label_950:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_952
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_952:
	jmp	.label_951
.label_951:
	mov	rbp, rbp
	jmp	.label_953
.label_953:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_954
.label_949:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f520
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
.label_956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_961
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_960
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
.label_957:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_958
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_957
.label_958:
	jmp	.label_960
.label_960:
	jmp	.label_963
.label_963:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_956
.label_961:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_962
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_962
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_959
.label_962:
	mov	byte ptr [rbp - 0x19], 0
.label_959:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f650
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
	movabs	rax, OFFSET FLAT:.str.2_6
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
	mov	ecx, OFFSET FLAT:.str_14
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
	mov	ecx, OFFSET FLAT:.str.1_10
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_964]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_965]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_966]]
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
	movabs	rsi, OFFSET FLAT:.str.3_4
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
	.section	.text
	.align	16
	#Procedure 0x40f7d0

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
	jne	.label_973
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_971
.label_973:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_970:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_968
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_967
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
	jne	.label_967
	mov	rsp, rsp
	jmp	.label_969
.label_967:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_971
.label_969:
	nop	
	jmp	.label_972
.label_972:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_970
.label_968:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_971:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8c0

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
	jb	.label_974
	call	abort
.label_974:
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
	.section	.text
	.align	16
	#Procedure 0x40f950
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
	jne	.label_975
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_979
.label_975:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_980:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_976
	lea	rsi, [rsi]
	call	abort
.label_976:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_977
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_979
.label_977:
	jmp	.label_978
.label_978:
	nop	
	jmp	.label_981
.label_981:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_980
.label_979:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa10
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
.label_985:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_983
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_983
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_987
.label_983:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_985
	jmp	.label_982
.label_982:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_986
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_984
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_987
.label_984:
	jmp	.label_982
.label_986:
	mov	qword ptr [rbp - 0x28], 0
.label_987:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb10
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
.label_991:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_988
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_990
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_989:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_995
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_992
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_994
.label_992:
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
	jmp	.label_989
.label_995:
	lea	rsi, [rsi]
	jmp	.label_990
.label_990:
	jmp	.label_993
.label_993:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_991
.label_988:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_994:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fc20
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
.label_1001:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1000
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_996
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_998:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1003
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
	jne	.label_997
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1002
.label_997:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_998
.label_1003:
	mov	rbp, rbp
	jmp	.label_996
.label_996:
	nop	
	jmp	.label_999
.label_999:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1001
.label_1000:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_1002:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fd30
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
.label_1004:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1005
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
	jmp	.label_1004
.label_1005:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fda0
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
	mov	rax,  qword ptr [word ptr [label_1006]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1007]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fdf0

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
	jne	.label_1014
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_1014:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1016
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1016:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1013
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1009
.label_1013:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1011
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_1011:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1008
	jmp	.label_1010
.label_1008:
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
	jne	.label_1012
	mov	rsp, rsp
	jmp	.label_1010
.label_1012:
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
	jne	.label_1015
	jmp	.label_1010
.label_1015:
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
	jmp	.label_1009
.label_1010:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_1009:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
.label_1353:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410010

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
	#Procedure 0x410060

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
	.section	.text
	.align	16
	#Procedure 0x410090

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
	jne	.label_1020
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1017
.label_1020:
	movss	xmm0,  dword ptr [dword ptr [label_1018]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1019
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1021]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1019
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1021]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1019
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1019
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1019
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1021]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1019
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
	jbe	.label_1019
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1017
.label_1019:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1017:
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
	#Procedure 0x410200

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
	jne	.label_1022
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1023]]
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
	js	.label_1024
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_1024:
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
	jb	.label_1028
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1026
.label_1028:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1027]]
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
.label_1022:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1025
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1026
.label_1025:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1026:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410370
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
.label_1034:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1033
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1030
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1029:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1035
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1036
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1036:
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
	jmp	.label_1029
.label_1035:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1032
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1032:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_1030:
	jmp	.label_1031
.label_1031:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1034
.label_1033:
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
	.section	.text
	.align	16
	#Procedure 0x4104e0

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
	je	.label_1038
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1038
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1044:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1049
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1037
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1040:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1042
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
	jmp	.label_1040
.label_1042:
	jmp	.label_1037
.label_1037:
	jmp	.label_1047
.label_1047:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1044
.label_1049:
	jmp	.label_1038
.label_1038:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1048:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1039
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1045:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1046
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
	jmp	.label_1045
.label_1046:
	jmp	.label_1050
.label_1050:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1048
.label_1039:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1041:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1043
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
	jmp	.label_1041
.label_1043:
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
	.section	.text
	.align	16
	#Procedure 0x4106d0

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
	jne	.label_1051
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_1052
.label_1051:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1054
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_1052
.label_1054:
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
	jne	.label_1056
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_1052
.label_1056:
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
	jne	.label_1055
	lea	rsi, [rsi]
	jmp	.label_1059
.label_1055:
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
	jmp	.label_1052
.label_1059:
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
	jne	.label_1057
	mov	rbp, rbp
	jmp	.label_1058
.label_1057:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1053
.label_1058:
	call	abort
.label_1053:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_1052:
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
	.section	.text
	.align	16
	#Procedure 0x4109a0

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
.label_1071:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1062
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1069
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1065:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1061
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
	je	.label_1073
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
	jmp	.label_1064
.label_1073:
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
.label_1064:
	mov	rbp, rbp
	jmp	.label_1060
.label_1060:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1065
.label_1061:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_1068
	jmp	.label_1070
.label_1068:
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
	je	.label_1066
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1072
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_1063
.label_1072:
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
	jmp	.label_1067
.label_1066:
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
.label_1067:
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
.label_1069:
	jmp	.label_1070
.label_1070:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1071
.label_1062:
	mov	byte ptr [rbp - 0x19], 1
.label_1063:
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
	.section	.text
	.align	16
	#Procedure 0x410c30

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
	jne	.label_1087
	lea	rsi, [rsi]
	call	abort
.label_1087:
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
	je	.label_1080
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1086
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1086:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1075
.label_1080:
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
	js	.label_1081
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1081:
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
	js	.label_1074
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_1074:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_1076
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
	js	.label_1090
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1090:
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
	js	.label_1092
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1092:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1082
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1083
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
	js	.label_1091
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_1091:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_1084
.label_1083:
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
	js	.label_1089
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1089:
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
.label_1084:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1023]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1078
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1075
.label_1078:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1027]]
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
	jne	.label_1085
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1075
.label_1085:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1079
	call	abort
.label_1079:
	jmp	.label_1082
.label_1082:
	lea	rdi, [rdi]
	jmp	.label_1076
.label_1076:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_1088
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1077
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1075
.label_1077:
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
	jmp	.label_1075
.label_1088:
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
.label_1075:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411220

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
	jne	.label_1103
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1095
.label_1103:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1093
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
	jne	.label_1093
	jmp	.label_1104
.label_1093:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1096
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1099
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
	jmp	.label_1102
.label_1099:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1102:
	jmp	.label_1096
.label_1096:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1095
.label_1104:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1097:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1098
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1101
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
	jne	.label_1101
	lea	rsi, [rsi]
	jmp	.label_1105
.label_1101:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1094
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
.label_1094:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1095
.label_1105:
	mov	rbp, rbp
	jmp	.label_1100
.label_1100:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1097
.label_1098:
	mov	qword ptr [rbp - 0x40], 0
.label_1095:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411460

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
	je	.label_1106
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
	jmp	.label_1107
.label_1106:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1107:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4114e0

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
	jne	.label_1110
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1108
.label_1110:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1111
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1109
.label_1111:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1109:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1108:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411580

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
	jne	.label_1127
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1119
.label_1127:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1121
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
	js	.label_1112
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1112:
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
	js	.label_1125
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1125:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1122
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
	js	.label_1120
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1120:
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
	js	.label_1117
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1117:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1114
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1124
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
	js	.label_1118
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1118:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1123
.label_1124:
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
	js	.label_1115
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1115:
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
.label_1123:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1027]]
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
	jne	.label_1116
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1126:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1113
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
	jmp	.label_1126
.label_1113:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1116:
	lea	rsi, [rsi]
	jmp	.label_1114
.label_1114:
	jmp	.label_1122
.label_1122:
	nop	
	jmp	.label_1121
.label_1121:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1119:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411a50

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
	jae	.label_1128
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1128:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1132:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1130
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1130:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1131
	jmp	.label_1129
.label_1131:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1132
.label_1129:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411b00

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
.label_1134:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1133
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
.label_1133:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1136
	jmp	.label_1135
.label_1136:
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
	jmp	.label_1134
.label_1135:
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
	.section	.text
	.align	16
	#Procedure 0x411c00

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
	#Procedure 0x411c50

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
.label_1138:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 4
	mov	rbp, rbp
	jge	.label_1137
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1138
.label_1137:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ce0

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
	#Procedure 0x411d00

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi + 0x14]
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 8], esi
	mov	ecx, dword ptr [rbp - 8]
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rdx + rdi*4]
	mov	dword ptr [rbp - 4], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, esi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x14], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_1139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x1c]
	lea	rsi, [rsi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
	and	ecx, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], ecx
.label_1139:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x1c], 0
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411dd0

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
	jne	.label_1141
	mov	rsp, rsp
	jmp	.label_1142
.label_1141:
	lea	rsi, [rsi]
	call	abort
.label_1142:
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
	jne	.label_1140
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_1143
.label_1140:
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
.label_1143:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411eb0

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
	jne	.label_1145
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1145:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1144
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1144:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f30

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x30], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xf0], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm2
	movaps	xmmword ptr [rbp - 0x80], xmm1
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	mov	dword ptr [rbp - 0x110], edi
	mov	qword ptr [rbp - 8], r9
	mov	qword ptr [rbp - 0x108], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	dword ptr [rbp - 0x34], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	je	.label_1146
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rbp - 0xd0]
	movaps	xmmword ptr [rbp - 0x1a0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x190], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0xc0]
	movaps	xmmword ptr [rbp - 0x180], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0xf0]
	nop	
	movaps	xmmword ptr [rbp - 0x170], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x160], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x150], xmm5
	lea	rsi, [rsi]
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm6
	lea	rdi, [rdi]
	movaps	xmm7, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x130], xmm7
.label_1146:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x1b0], rcx
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	r8d, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], r8d
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rbp - 0xd4], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10c], 0
	mov	esi, dword ptr [rbp - 0xd4]
	and	esi, 0x40
	lea	rsi, [rsi]
	cmp	esi, 0
	je	.label_1148
	lea	rax, [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1d0]
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
	mov	esi, dword ptr [rbp - 0x70]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	ja	.label_1147
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_1149
.label_1147:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x58], rdx
.label_1149:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rcx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], edx
	mov	qword ptr [rbp - 0x10], rcx
.label_1148:
	mov	edi, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x10c]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1d0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4121a0

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	or	edx, 0x90900
	mov	dword ptr [rbp - 4], edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	lea	rsi, [rsi]
	call	openat_safer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_1150
	nop	
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1152
.label_1150:
	mov	edi, dword ptr [rbp - 0x40]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1153
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1151
.label_1153:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	ecx, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
.label_1151:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1152:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4122a0

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
	jg	.label_1154
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1154
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
.label_1154:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412330

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
	jge	.label_1159
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1157
.label_1159:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1156
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
	je	.label_1155
.label_1156:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1155
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1155:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1158
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
.label_1158:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1157:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412450

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
	je	.label_1183
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
.label_1183:
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
	je	.label_1185
	nop	
	jmp	.label_1161
.label_1161:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1163
	jmp	.label_1170
.label_1185:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1172
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
	jmp	.label_1182
.label_1172:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1182:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1165
.label_1163:
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
	ja	.label_1181
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
	jmp	.label_1190
.label_1181:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1190:
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
	jmp	.label_1165
.label_1170:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1171
	nop	
	jmp	.label_1160
.label_1160:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1162
	jmp	.label_1168
.label_1168:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1171
	nop	
	jmp	.label_1177
.label_1177:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1162
	nop	
	jmp	.label_1184
.label_1184:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1171
	lea	rsi, [rsi]
	jmp	.label_1189
.label_1189:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1171
	lea	rsi, [rsi]
	jmp	.label_1166
.label_1166:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1162
	mov	rsp, rsp
	jmp	.label_1175
.label_1175:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1171
	jmp	.label_1180
.label_1180:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1162
	lea	rsi, [rsi]
	jmp	.label_1178
.label_1178:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1171
	jmp	.label_1169
.label_1169:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1162
	mov	rsp, rsp
	jmp	.label_1179
.label_1179:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1171
	lea	rsi, [rsi]
	jmp	.label_1174
.label_1174:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1171
	nop	
	jmp	.label_1187
.label_1187:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1188
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1162:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1167
.label_1171:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1173
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
	jmp	.label_1164
.label_1173:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1164:
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
	jmp	.label_1167
.label_1188:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1186
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
	jmp	.label_1176
.label_1186:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1176:
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
.label_1167:
	jmp	.label_1165
.label_1165:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ab0

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
	.section	.text
	.align	16
	#Procedure 0x412b00

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
	jg	.label_1191
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
	jle	.label_1198
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1193
.label_1198:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1195
.label_1193:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1199
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1199:
	mov	rbp, rbp
	jmp	.label_1195
.label_1195:
	jmp	.label_1196
.label_1191:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1196:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1192
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1192
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1197
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
	jne	.label_1194
.label_1197:
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
.label_1194:
	jmp	.label_1192
.label_1192:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c80

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
	ja	.label_1200
	jmp	.label_1202
.label_1202:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1201
.label_1200:
	lea	rsi, [rsi]
	jmp	.label_1201
.label_1201:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ce0
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
	.section	.text
	.align	16
	#Procedure 0x412d30
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
	.section	.text
	.align	16
	#Procedure 0x412d80
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
	#Procedure 0x412dd0
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
	.section	.text
	.align	16
	#Procedure 0x412e10
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
	#Procedure 0x412e70

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
	.section	.text
	.align	16
	#Procedure 0x412ed0
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
	.section	.text
	.align	16
	#Procedure 0x412f20
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
	#Procedure 0x412f70
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
	.section	.text
	.align	16
	#Procedure 0x412fd0
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
	#Procedure 0x413020
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
	jb	.label_1203
	jmp	.label_1206
.label_1206:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1203
	jmp	.label_1204
.label_1204:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1205
	jmp	.label_1203
.label_1203:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1207
.label_1205:
	mov	byte ptr [rbp - 1], 0
.label_1207:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413090
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
	jb	.label_1208
	jmp	.label_1211
.label_1211:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1209
	jmp	.label_1208
.label_1208:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1210
.label_1209:
	mov	byte ptr [rbp - 1], 0
.label_1210:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4130e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1212
	jmp	.label_1213
.label_1213:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1214
.label_1212:
	mov	byte ptr [rbp - 1], 0
.label_1214:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413110
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1215
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1215:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413140
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
	jb	.label_1216
	jmp	.label_1218
.label_1218:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1219
	jmp	.label_1216
.label_1216:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1217
.label_1219:
	mov	byte ptr [rbp - 1], 0
.label_1217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413190
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1220
	jmp	.label_1222
.label_1222:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1221
.label_1220:
	mov	byte ptr [rbp - 1], 0
.label_1221:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4131d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1223
	jmp	.label_1225
.label_1225:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1224
.label_1223:
	mov	byte ptr [rbp - 1], 0
.label_1224:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413210
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1226
	jmp	.label_1228
.label_1228:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1227
.label_1226:
	mov	byte ptr [rbp - 1], 0
.label_1227:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413250
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1229
	jmp	.label_1231
.label_1231:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1230
.label_1229:
	mov	byte ptr [rbp - 1], 0
.label_1230:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413290
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
	jb	.label_1232
	jmp	.label_1235
.label_1235:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1232
	jmp	.label_1236
.label_1236:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1232
	jmp	.label_1234
.label_1234:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1237
	jmp	.label_1232
.label_1232:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1233
.label_1237:
	mov	byte ptr [rbp - 1], 0
.label_1233:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413310
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
	jb	.label_1238
	jmp	.label_1240
.label_1240:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1241
	jmp	.label_1238
.label_1238:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1239
.label_1241:
	mov	byte ptr [rbp - 1], 0
.label_1239:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413360
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1242
	jmp	.label_1244
.label_1244:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1243
.label_1242:
	mov	byte ptr [rbp - 1], 0
.label_1243:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4133a0
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
	jb	.label_1245
	jmp	.label_1248
.label_1248:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1245
	jmp	.label_1246
.label_1246:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1247
	jmp	.label_1245
.label_1245:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1249
.label_1247:
	mov	byte ptr [rbp - 1], 0
.label_1249:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413410

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1250
	jmp	.label_1252
.label_1252:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1251
.label_1250:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1251:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413450
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1253
	jmp	.label_1255
.label_1255:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1254
.label_1253:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1254:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413490

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
	#Procedure 0x413580

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x413590

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x4135a0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x4135b0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat