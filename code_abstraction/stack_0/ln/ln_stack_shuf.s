	.section	.text
	.align	32
	#Procedure 0x401ee0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	je	.label_9
	jmp	.label_8
.label_8:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_7
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	r8,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.9
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 0x14]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.29
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	je	.label_11
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x29], cl
.label_11:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	nop	
	test	al, 1
	nop	
	jne	.label_12
	nop	
	jmp	.label_15
.label_12:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_13
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_10
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	setlocale
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_14
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	je	.label_14
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.45
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.46
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1e0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], 0
	nop	
	mov	dword ptr [rbp - 0xe4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x140], rsi
	mov	byte ptr [rbp - 0x14d], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b8], 0
	mov	qword ptr [rbp - 0x130], 0
	mov	qword ptr [rbp - 0x178], 0
	mov	byte ptr [rbp - 0xd1], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c0], 0xffffffff
	nop	
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	mov	rdi, qword ptr [rsi]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.12
	movabs	rsi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0xa0], rax
	call	textdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x180], rax
	nop	
	call	atexit
	mov	byte ptr [byte ptr [hard_dir_link]],  0
	mov	byte ptr [byte ptr [verbose]],  0
	mov	byte ptr [byte ptr [interactive]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [remove_existing_files]],  0
	nop	
	mov	byte ptr [byte ptr [symbolic_link]],  0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
.label_22:
	movabs	rdx, OFFSET FLAT:.str.14
	movabs	rcx, OFFSET FLAT:long_options
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, eax
	nop	
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	call	getopt_long
	mov	dword ptr [rbp - 0xe8], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	nop	
	je	.label_24
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xe8]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x108], eax
	mov	dword ptr [rbp - 0x154], ecx
	lea	rdi, [rdi]
	je	.label_29
	nop	
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x98], eax
	je	.label_40
	jmp	.label_47
.label_47:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x46
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	mov	rsp, rsp
	je	.label_48
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	sub	eax, 0x4c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d0], eax
	je	.label_55
	lea	rsi, [rsi]
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x1d4], eax
	je	.label_66
	nop	
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x53
	nop	
	mov	dword ptr [rbp - 0x14c], eax
	je	.label_72
	jmp	.label_78
.label_78:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x128], eax
	mov	rbp, rbp
	je	.label_79
	mov	rbp, rbp
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	lea	rsi, [rsi]
	je	.label_25
	mov	rsp, rsp
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x64
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x114], eax
	je	.label_48
	mov	rbp, rbp
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0xac], eax
	je	.label_44
	lea	rsi, [rsi]
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x104], eax
	lea	rdi, [rdi]
	je	.label_77
	lea	rsi, [rsi]
	jmp	.label_61
.label_61:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rsp, rsp
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x144], eax
	je	.label_64
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x138], eax
	lea	rsi, [rsi]
	je	.label_52
	mov	rbp, rbp
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x108]
	nop	
	sub	eax, 0x73
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x16c], eax
	lea	rsi, [rsi]
	je	.label_76
	mov	rbp, rbp
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x108]
	nop	
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x194], eax
	je	.label_18
	nop	
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	lea	rdi, [rdi]
	je	.label_46
	mov	rsp, rsp
	jmp	.label_35
.label_25:
	mov	byte ptr [rbp - 0x14d], 1
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	je	.label_58
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x130], rax
.label_58:
	nop	
	jmp	.label_27
.label_48:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [hard_dir_link]],  1
	nop	
	jmp	.label_27
.label_44:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [remove_existing_files]],  1
	mov	byte ptr [byte ptr [interactive]],  0
	jmp	.label_27
.label_77:
	mov	byte ptr [byte ptr [remove_existing_files]],  0
	mov	byte ptr [byte ptr [interactive]],  1
	mov	rbp, rbp
	jmp	.label_27
.label_55:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [logical]],  1
	lea	rsi, [rsi]
	jmp	.label_27
.label_64:
	mov	byte ptr [byte ptr [dereference_dest_dir_symlinks]],  0
	lea	rdi, [rdi]
	jmp	.label_27
.label_66:
	nop	
	mov	byte ptr [byte ptr [logical]],  0
	lea	rdi, [rdi]
	jmp	.label_27
.label_52:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [relative]],  1
	jmp	.label_27
.label_76:
	mov	byte ptr [byte ptr [symbolic_link]],  1
	lea	rdi, [rdi]
	jmp	.label_27
.label_18:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x178], 0
	mov	rbp, rbp
	je	.label_21
	movabs	rdi, OFFSET FLAT:.str.15
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_21:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x90]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	cmp	eax, 0
	je	.label_43
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.16
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xec], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x168], rax
	call	quotearg_style
	nop	
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_43:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	nop	
	je	.label_73
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x190], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_73:
	jmp	.label_28
.label_28:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x178], rax
	mov	rbp, rbp
	jmp	.label_27
.label_79:
	mov	byte ptr [rbp - 0xd1], 1
	lea	rsi, [rsi]
	jmp	.label_27
.label_46:
	mov	byte ptr [byte ptr [verbose]],  1
	lea	rdi, [rdi]
	jmp	.label_27
.label_72:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x14d], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1b8], rax
	lea	rdi, [rdi]
	jmp	.label_27
.label_40:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_29:
	nop	
	movabs	rsi, OFFSET FLAT:.str.10
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.19
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.20
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	r10,  qword ptr [word ptr [Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	nop	
	call	version_etc
	mov	rsp, rsp
	xor	edi, edi
	nop	
	call	exit
.label_35:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_27:
	lea	rdi, [rdi]
	jmp	.label_22
.label_24:
	mov	eax, dword ptr [rbp - 0xe4]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x1ac], eax
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	shl	rdx, 3
	nop	
	add	rcx, rdx
	mov	qword ptr [rbp - 0x1a0], rcx
	cmp	dword ptr [rbp - 0x1ac], 0
	jg	.label_23
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	nop	
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_23:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [relative]],  1
	lea	rdi, [rdi]
	je	.label_56
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [symbolic_link]],  1
	lea	rdi, [rdi]
	jne	.label_56
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_56:
	test	byte ptr [byte ptr [hard_dir_link]],  1
	lea	rdi, [rdi]
	jne	.label_75
	call	priv_set_remove_linkdir
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [beware_hard_dir_link]],  0
	nop	
	mov	dword ptr [rbp - 0xc0], eax
.label_75:
	test	byte ptr [rbp - 0xd1], 1
	je	.label_19
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_45
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_45:
	cmp	dword ptr [rbp - 0x1ac], 2
	mov	rsp, rsp
	je	.label_37
	nop	
	cmp	dword ptr [rbp - 0x1ac], 2
	lea	rdi, [rdi]
	jge	.label_39
	nop	
	movabs	rdi, OFFSET FLAT:.str.24
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x110], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x94], edi
	mov	esi, dword ptr [rbp - 0x94]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_42
.label_39:
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	call	gettext
	mov	edi, 4
	nop	
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	dword ptr [rbp - 0xd8], edi
	mov	esi, dword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0x1a8]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_42:
	mov	edi, 1
	call	usage
.label_37:
	lea	rdi, [rdi]
	jmp	.label_30
.label_19:
	cmp	dword ptr [rbp - 0x1ac], 2
	nop	
	jge	.label_32
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x178], 0
	jne	.label_32
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x178], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1cc], 0xffffff9c
	nop	
	jmp	.label_34
.label_32:
	cmp	dword ptr [rbp - 0x1ac], 2
	jne	.label_31
	cmp	qword ptr [rbp - 0x178], 0
	jne	.label_31
	lea	rsi, [rsi]
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x1a0]
	nop	
	mov	rdx, qword ptr [rax + 8]
	mov	rbp, rbp
	call	atomic_link
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c0], eax
.label_31:
	cmp	dword ptr [rbp - 0x1c0], 0
	jl	.label_68
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c0], 0x11
	lea	rsi, [rsi]
	je	.label_68
	cmp	dword ptr [rbp - 0x1c0], 0x14
	mov	rbp, rbp
	jne	.label_54
.label_68:
	cmp	qword ptr [rbp - 0x178], 0
	lea	rsi, [rsi]
	je	.label_63
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_16
.label_63:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x160], rcx
.label_16:
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x20000
	lea	rsi, [rsi]
	xor	edx, edx
	mov	qword ptr [rbp - 0x100], rax
	mov	sil,  byte ptr [byte ptr [dereference_dest_dir_symlinks]]
	lea	rsi, [rsi]
	test	sil, 1
	nop	
	cmovne	ecx, edx
	lea	rdi, [rdi]
	or	ecx, 0x210000
	mov	dword ptr [rbp - 0xe0], ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	al, 0
	call	openat_safer
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1cc], eax
	cmp	ecx, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	jg	.label_62
	cmp	qword ptr [rbp - 0x178], 0
	setne	al
	lea	rsi, [rsi]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	sub	edx, ecx
	mov	dword ptr [rbp - 0x1ac], edx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rsi
	lea	rsi, [rsi]
	jmp	.label_53
.label_62:
	cmp	dword ptr [rbp - 0x1ac], 2
	jne	.label_80
	nop	
	cmp	qword ptr [rbp - 0x178], 0
	lea	rdi, [rdi]
	je	.label_20
.label_80:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.27
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x134], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x134]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_20:
	lea	rdi, [rdi]
	jmp	.label_53
.label_53:
	jmp	.label_54
.label_54:
	mov	rsp, rsp
	jmp	.label_34
.label_34:
	jmp	.label_30
.label_30:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x14d], 1
	je	.label_60
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdi, rax
	call	xget_version
	mov	dword ptr [rbp - 0x184], eax
	nop	
	jmp	.label_69
.label_60:
	xor	eax, eax
	mov	dword ptr [rbp - 0x184], eax
	mov	rbp, rbp
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x184]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [backup_type]],  eax
	mov	rdi, qword ptr [rbp - 0x1b8]
	call	set_simple_backup_suffix
	cmp	qword ptr [rbp - 0x178], 0
	mov	rsp, rsp
	je	.label_82
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	jg	.label_33
	nop	
	test	byte ptr [byte ptr [remove_existing_files]],  1
	lea	rsi, [rsi]
	je	.label_33
	mov	rsp, rsp
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_33
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [backup_type]],  3
	je	.label_33
	mov	rsp, rsp
	mov	eax, 0x3d
	mov	edi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:triple_compare
	nop	
	movabs	r8, OFFSET FLAT:triple_free
	lea	rdi, [rdi]
	call	hash_initialize
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [dest_set]],  rax
	mov	rsp, rsp
	cmp	qword ptr [word ptr [dest_set]],  0
	jne	.label_51
	call	xalloc_die
.label_51:
	nop	
	jmp	.label_33
.label_33:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x195], 1
	mov	dword ptr [rbp - 0x148], 0
.label_36:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	jge	.label_71
	mov	rdi, qword ptr [rbp - 0x178]
	nop	
	movsxd	rax, dword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1a0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	rdi, rax
	call	last_component
	lea	rdx, [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	file_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf8]
	call	strip_trailing_slashes
	mov	rbp, rbp
	mov	r8d, 0xffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1cc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb9], al
	mov	rsp, rsp
	call	do_link
	and	al, 1
	nop	
	movzx	esi, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x195]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	r8d, al
	and	r8d, esi
	lea	rsi, [rsi]
	cmp	r8d, 0
	setne	al
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x195], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x148], eax
	lea	rdi, [rdi]
	jmp	.label_36
.label_71:
	mov	rsp, rsp
	jmp	.label_81
.label_82:
	mov	rbp, rbp
	mov	esi, 0xffffff9c
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rdx, qword ptr [rax + 8]
	nop	
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	mov	r8d, dword ptr [rbp - 0x1c0]
	call	do_link
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x195], al
.label_81:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x195]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	add	rsp, 0x1e0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl atomic_link
	.type atomic_link, @function
atomic_link:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	dword ptr [rbp - 0x24], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	test	byte ptr [byte ptr [symbolic_link]],  1
	lea	rdi, [rdi]
	je	.label_83
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [relative]],  1
	mov	rbp, rbp
	je	.label_87
	nop	
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_84
.label_87:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	symlinkat
	mov	edi, eax
	mov	rbp, rbp
	call	errnoize
	mov	dword ptr [rbp - 0x20], eax
.label_84:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_86
.label_83:
	test	byte ptr [byte ptr [beware_hard_dir_link]],  1
	mov	rsp, rsp
	je	.label_85
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_88
.label_85:
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x400
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x24]
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r9b,  byte ptr [byte ptr [logical]]
	lea	rdi, [rdi]
	test	r9b, 1
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8d, eax
	call	linkat
	lea	rdi, [rdi]
	mov	edi, eax
	call	errnoize
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_88:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_86:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403290

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x2b0
	nop	
	mov	eax, 0x100
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x180], r8d
	mov	dword ptr [rbp - 0x154], 1
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x178], 0
	mov	rsp, rsp
	mov	r10b,  byte ptr [byte ptr [logical]]
	nop	
	test	r10b, 1
	lea	rsi, [rsi]
	cmovne	eax, r9d
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x180], 0
	jge	.label_122
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	call	atomic_link
	mov	dword ptr [rbp - 0x180], eax
.label_122:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x180], 0
	jne	.label_98
	cmp	qword ptr [word ptr [dest_set]],  0
	je	.label_105
.label_98:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [symbolic_link]],  1
	lea	rsi, [rsi]
	jne	.label_105
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	nop	
	lea	rdx, [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	call	fstatat
	mov	dword ptr [rbp - 0x154], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x154], 0
	je	.label_119
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x110], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_92
.label_119:
	mov	rbp, rbp
	jmp	.label_105
.label_105:
	cmp	dword ptr [rbp - 0x180], 0
	je	.label_138
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [symbolic_link]],  1
	mov	rbp, rbp
	jne	.label_90
	test	byte ptr [byte ptr [hard_dir_link]],  1
	jne	.label_90
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_90
	movabs	rdi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	lea	rsi, [rsi]
	jmp	.label_92
.label_90:
	test	byte ptr [byte ptr [relative]],  1
	je	.label_125
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	call	convert_abs_rel
	mov	qword ptr [rbp - 0x178], rax
	mov	qword ptr [rbp - 0x30], rax
.label_125:
	lea	rsi, [rsi]
	mov	al, 1
	test	byte ptr [byte ptr [remove_existing_files]],  1
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	jne	.label_132
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [interactive]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	jne	.label_132
	cmp	dword ptr [dword ptr [backup_type]],  0
	lea	rsi, [rsi]
	setne	al
	mov	byte ptr [rbp - 9], al
.label_132:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x1d1], al
	test	byte ptr [rbp - 0x1d1], 1
	mov	rbp, rbp
	je	.label_93
	lea	rdx, [rbp - 0x278]
	lea	rdi, [rdi]
	mov	ecx, 0x100
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x58]
	call	fstatat
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_108
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_109
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_92
.label_109:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d1], 0
	jmp	.label_135
.label_108:
	mov	eax, dword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	jne	.label_136
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.63
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_92
.label_136:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x278]
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [dest_set]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	seen_file
	mov	rbp, rbp
	test	al, 1
	jne	.label_99
	jmp	.label_118
.label_99:
	movabs	rdi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x298], rax
	call	quotearg_n_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x170], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x298]
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_92
.label_118:
	cmp	dword ptr [dword ptr [backup_type]],  0
	je	.label_89
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [symbolic_link]],  1
	mov	rsp, rsp
	jne	.label_97
	jmp	.label_137
.label_89:
	mov	rsp, rsp
	test	byte ptr [byte ptr [remove_existing_files]],  1
	je	.label_97
.label_137:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x154], 0
	je	.label_103
	lea	rsi, [rbp - 0xe8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	stat
	mov	dword ptr [rbp - 0x154], eax
.label_103:
	nop	
	cmp	dword ptr [rbp - 0x154], 0
	lea	rdi, [rdi]
	jne	.label_107
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x270]
	jne	.label_107
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x278]
	jne	.label_107
	cmp	qword ptr [rbp - 0xd8], 1
	je	.label_127
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x58]
	call	same_nameat
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_127
	jmp	.label_107
.label_127:
	nop	
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1e8], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0x1e8]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_92
.label_107:
	mov	rsp, rsp
	jmp	.label_97
.label_97:
	cmp	dword ptr [rbp - 0x180], 0
	jl	.label_115
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x180], 0x11
	lea	rdi, [rdi]
	jne	.label_110
.label_115:
	test	byte ptr [byte ptr [interactive]],  1
	lea	rdi, [rdi]
	je	.label_100
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.66
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x280], rax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1e0], rdx
	call	quotearg_style
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x280]
	nop	
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x124], eax
	call	yesno
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_94
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_92
.label_94:
	jmp	.label_100
.label_100:
	cmp	dword ptr [dword ptr [backup_type]],  0
	je	.label_112
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [backup_type]]
	lea	rsi, [rsi]
	call	find_backup_file_name
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	edx, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x1c8]
	call	renameat
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_120
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x114], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	cmp	dword ptr [rbp - 0x114], 2
	mov	rbp, rbp
	je	.label_130
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x114]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	lea	rsi, [rsi]
	jmp	.label_92
.label_130:
	mov	byte ptr [rbp - 0x1d1], 0
.label_120:
	nop	
	jmp	.label_112
.label_112:
	lea	rdi, [rdi]
	jmp	.label_110
.label_110:
	jmp	.label_95
.label_95:
	jmp	.label_111
.label_111:
	nop	
	jmp	.label_135
.label_135:
	lea	rdi, [rdi]
	jmp	.label_93
.label_93:
	nop	
	test	byte ptr [byte ptr [symbolic_link]],  1
	lea	rdi, [rdi]
	je	.label_116
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x1d1]
	mov	r8d, dword ptr [rbp - 0x180]
	and	al, 1
	movzx	ecx, al
	call	force_symlinkat
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x29c], eax
	jmp	.label_126
.label_116:
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x400
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x58]
	mov	r9b,  byte ptr [byte ptr [logical]]
	test	r9b, 1
	mov	rsp, rsp
	cmovne	eax, ecx
	nop	
	mov	r9b, byte ptr [rbp - 0x1d1]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x180]
	and	r9b, 1
	mov	dword ptr [rbp - 0x190], ecx
	mov	rcx, r8
	mov	r8d, eax
	movzx	r9d, r9b
	mov	eax, dword ptr [rbp - 0x190]
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	lea	rsi, [rsi]
	call	force_linkat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x29c], eax
.label_126:
	mov	eax, dword ptr [rbp - 0x29c]
	nop	
	mov	dword ptr [rbp - 0x180], eax
.label_138:
	cmp	dword ptr [rbp - 0x180], 0
	mov	rsp, rsp
	jg	.label_104
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [symbolic_link]],  1
	mov	rbp, rbp
	jne	.label_133
	lea	rdx, [rbp - 0xe8]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [dest_set]]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	record_file
.label_133:
	test	byte ptr [byte ptr [verbose]],  1
	nop	
	je	.label_131
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0xf0], rax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_121
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], 0
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	sub	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rdx
	cmp	rcx, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	jge	.label_129
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rdi, rax
	lea	rsi, [rsi]
	add	rdi, 1
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x1a8]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rax
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c0]
	add	rdx, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	rdi, rdx
	lea	rdi, [rdi]
	call	strcpy
	mov	qword ptr [rbp - 0x150], rax
.label_129:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.68
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
.label_121:
	nop	
	xor	edi, edi
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0xf0]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x160], rax
	mov	rbp, rbp
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	r8d, 0x3d
	lea	rdi, [rdi]
	mov	r9d, 0x2d
	mov	r10b,  byte ptr [byte ptr [symbolic_link]]
	test	r10b, 1
	cmovne	r8d, r9d
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rax
	mov	dword ptr [rbp - 0x20], r8d
	nop	
	call	quotearg_n_style
	movabs	rdi, OFFSET FLAT:.str.69
	nop	
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x290]
	mov	r8d, dword ptr [rbp - 0x20]
	mov	r9, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_131:
	mov	rsp, rsp
	jmp	.label_134
.label_104:
	mov	esi, dword ptr [rbp - 0x180]
	test	byte ptr [byte ptr [symbolic_link]],  1
	nop	
	mov	dword ptr [rbp - 0x17c], esi
	je	.label_124
	nop	
	cmp	dword ptr [rbp - 0x180], 0x24
	lea	rsi, [rsi]
	je	.label_128
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_128
	nop	
	movabs	rdi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x188], rax
	mov	rsp, rsp
	jmp	.label_114
.label_128:
	movabs	rdi, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x188], rax
.label_114:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_91
.label_124:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x180], 0x1f
	nop	
	jne	.label_96
	movabs	rdi, OFFSET FLAT:.str.72
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_106
.label_96:
	cmp	dword ptr [rbp - 0x180], 0x7a
	mov	rsp, rsp
	je	.label_102
	cmp	dword ptr [rbp - 0x180], 0x11
	nop	
	je	.label_102
	cmp	dword ptr [rbp - 0x180], 0x1c
	je	.label_102
	cmp	dword ptr [rbp - 0x180], 0x1e
	jne	.label_117
.label_102:
	movabs	rdi, OFFSET FLAT:.str.73
	call	gettext
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_123
.label_117:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.74
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_123:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_106:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1b0], rax
.label_91:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x130], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	je	.label_101
	mov	edi, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	renameat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_113
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.75
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_113:
	lea	rdi, [rdi]
	jmp	.label_101
.label_101:
	jmp	.label_134
.label_134:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x180], 0
	setle	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
.label_92:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x2b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404030

	.globl errnoize
	.type errnoize, @function
errnoize:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jge	.label_139
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 8], ecx
	mov	rbp, rbp
	jmp	.label_140
.label_139:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 8], eax
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl convert_abs_rel
	.type convert_abs_rel, @function
convert_abs_rel:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	dir_name
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	canonicalize_filename_mode
	lea	rsi, [rsi]
	mov	esi, 2
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	call	canonicalize_filename_mode
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_142
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_142
	nop	
	mov	eax, 0x1000
	mov	edi, eax
	mov	rsp, rsp
	call	xmalloc
	lea	rsi, [rsi]
	mov	ecx, 0x1000
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	relpath
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_143
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
.label_143:
	jmp	.label_142
.label_142:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_141
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_144
.label_141:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
.label_144:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041d0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	lea	rdi, [rdi]
	mov	al, r9b
	nop	
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	dword ptr [rbp - 0x2c], edx
	mov	qword ptr [rbp - 0x170], rcx
	mov	dword ptr [rbp - 0x50], r8d
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x161], al
	mov	dword ptr [rbp - 8], r9d
	nop	
	cmp	dword ptr [rbp - 8], 0
	jge	.label_149
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x2c]
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	mov	r8d, dword ptr [rbp - 0x50]
	call	linkat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_156
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	jmp	.label_147
.label_156:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
.label_147:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 8], eax
.label_149:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x161], 1
	mov	rsp, rsp
	je	.label_153
	nop	
	cmp	dword ptr [rbp - 8], 0x11
	nop	
	je	.label_145
.label_153:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	jmp	.label_148
.label_145:
	lea	rsi, [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	call	samedir_template
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jne	.label_154
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rsp, rsp
	jmp	.label_148
.label_154:
	mov	rbp, rbp
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	lea	rdx, [rbp - 0x20]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	try_tempname_len
	cmp	eax, 0
	je	.label_155
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_146
.label_155:
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x170]
	call	renameat
	cmp	eax, 0
	jne	.label_150
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_152
.label_150:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], ecx
.label_152:
	mov	eax, dword ptr [rbp - 0x54]
	xor	edx, edx
	mov	dword ptr [rbp - 4], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x38]
	call	unlinkat
	mov	dword ptr [rbp - 0x3c], eax
.label_146:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	je	.label_151
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_151:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
.label_148:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043f0

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0x100
	lea	rsi, [rsi]
	ja	.label_159
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_157
.label_159:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_158
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_160
.label_158:
	mov	rbp, rbp
	jmp	.label_157
.label_157:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	call	mempcpy
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], rax
.label_160:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	al, cl
	mov	qword ptr [rbp - 0x118], rdi
	nop	
	mov	dword ptr [rbp - 0x13c], esi
	mov	qword ptr [rbp - 0x148], rdx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	mov	dword ptr [rbp - 0x140], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x140], 0
	mov	rsp, rsp
	jge	.label_161
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	call	symlinkat
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_171
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x124], eax
	nop	
	jmp	.label_170
.label_171:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], ecx
.label_170:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x124]
	mov	dword ptr [rbp - 0x140], eax
.label_161:
	test	byte ptr [rbp - 0x119], 1
	je	.label_164
	cmp	dword ptr [rbp - 0x140], 0x11
	je	.label_172
.label_164:
	mov	eax, dword ptr [rbp - 0x140]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_162
.label_172:
	lea	rsi, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	samedir_template
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_166
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	jmp	.label_162
.label_166:
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rbp, rbp
	mov	r8d, eax
	lea	rdx, [rbp - 0x138]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x138], rdi
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dword ptr [rbp - 0x130], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	try_tempname_len
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_167
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x120], ecx
	jmp	.label_169
.label_167:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x13c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x13c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x148]
	call	renameat
	cmp	eax, 0
	nop	
	je	.label_168
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x13c]
	mov	rsi, qword ptr [rbp - 8]
	call	unlinkat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_165
.label_168:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x120], 0xffffffff
.label_165:
	jmp	.label_169
.label_169:
	lea	rax, [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rcx, rax
	je	.label_163
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
.label_163:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
.label_162:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x150
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404780

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	symlinkat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047d0

	.globl relpath
	.type relpath, @function
relpath:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	path_common_prefix
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	nop	
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_174
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_179
.label_174:
	mov	rax, qword ptr [rbp - 0x38]
	movsxd	rcx, dword ptr [rbp - 0x48]
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x48]
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2f
	nop	
	jne	.label_181
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_181:
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_183
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_183:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_175
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rsi, [rbp - 0x40]
	lea	rdx, [rbp - 0x20]
	mov	rbp, rbp
	call	buffer_or_output
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	nop	
	or	r8d, ecx
	cmp	r8d, 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
.label_180:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_184
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_186
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x40]
	lea	rdx, [rbp - 0x20]
	call	buffer_or_output
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	mov	rsp, rsp
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
.label_186:
	mov	rsp, rsp
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_180
.label_184:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	byte ptr [rax], 0
	nop	
	je	.label_185
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rbp - 0x40]
	lea	rdx, [rbp - 0x20]
	lea	rdi, [rdi]
	call	buffer_or_output
	lea	rsi, [rbp - 0x40]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x20]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	or	r8d, ecx
	lea	rsi, [rsi]
	cmp	r8d, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	rdi, qword ptr [rbp - 8]
	call	buffer_or_output
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	or	r8d, ecx
	lea	rdi, [rdi]
	cmp	r8d, 0
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
.label_185:
	mov	rbp, rbp
	jmp	.label_176
.label_175:
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_173
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_182
.label_173:
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_182
.label_182:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x40]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	buffer_or_output
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
.label_176:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x41], 1
	je	.label_177
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 0x24
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_177:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
.label_179:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rsi + 1]
	cmp	eax, 0x2f
	sete	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	mov	rsi, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rsi + 1]
	cmp	edx, 0x2f
	lea	rsi, [rsi]
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	cmp	eax, edx
	lea	rdi, [rdi]
	je	.label_187
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 0
	nop	
	jmp	.label_190
.label_187:
	lea	rdi, [rdi]
	jmp	.label_195
.label_195:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 1], cl
	je	.label_198
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	setne	dl
	nop	
	mov	byte ptr [rbp - 1], dl
.label_198:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	jne	.label_193
	mov	rbp, rbp
	jmp	.label_197
.label_193:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, edx
	je	.label_188
	nop	
	jmp	.label_197
.label_188:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	jne	.label_189
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
.label_189:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 1
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_195
.label_197:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	byte ptr [rax], 0
	jne	.label_194
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_191
.label_194:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	jne	.label_196
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_191
.label_196:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	nop	
	jne	.label_192
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_192
.label_191:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
.label_192:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
.label_190:
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cc0

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_199
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	jb	.label_201
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	jmp	.label_200
.label_201:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	sub	rsi, rax
	mov	qword ptr [rdx], rsi
	jmp	.label_202
.label_199:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_202:
	mov	byte ptr [rbp - 0x29], 0
.label_200:
	nop	
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404db0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_203
	nop	
	movabs	rdi, OFFSET FLAT:.str_4
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_203:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_204
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_204
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	last_component
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, rax
	jne	.label_204
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_205
.label_204:
	movabs	rax, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_205
.label_205:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	dword ptr [rbp - 0x24], edx
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_213
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	call	set_simple_backup_suffix
.label_213:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 9
	jae	.label_220
	mov	qword ptr [rbp - 0x88], 9
.label_220:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_219
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_206
.label_219:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	qword ptr [rbp - 0x40], 0
.label_217:
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memcpy
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 1
	nop	
	jne	.label_223
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_208
.label_223:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rsp
	lea	rsi, [rbp - 0x28]
	mov	qword ptr [rax], rsi
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x20]
	mov	rbp, rbp
	call	numbered_backup
	mov	edi, eax
	nop	
	mov	ecx, edi
	mov	rbp, rbp
	sub	eax, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	ja	.label_207
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_222]]
	lea	rdi, [rdi]
	jmp	rcx
.label_1254:
	lea	rdi, [rdi]
	jmp	.label_207
.label_1255:
	nop	
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_209
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	memcpy
.label_209:
	jmp	.label_221
.label_221:
	mov	rbp, rbp
	mov	edx, 0x7e
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x28]
	call	check_extension
	jmp	.label_207
.label_1256:
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_206
.label_207:
	lea	rdi, [rdi]
	jmp	.label_208
.label_208:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	nop	
	jne	.label_212
	mov	rsp, rsp
	jmp	.label_214
.label_212:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_216
	nop	
	mov	dword ptr [rbp - 0x28], 0xffffff9c
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_216:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	nop	
	cmp	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x90]
	nop	
	add	r8, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	lea	rdi, [rdi]
	call	renameatu
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_211
	mov	rbp, rbp
	jmp	.label_214
.label_211:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 0x11
	lea	rsi, [rsi]
	je	.label_218
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_210
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
.label_210:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x90]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_206
.label_218:
	jmp	.label_217
.label_214:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_215
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
.label_215:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
.label_206:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052a0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xd0
	nop	
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0xa4], 2
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	base_len
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_232
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	rewinddir
	jmp	.label_236
.label_232:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x92], cx
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], edx
	call	strcpy
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	edx, dword ptr [rbp - 0x64]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	call	opendirat
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_231
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_231
	mov	dword ptr [rbp - 0xa4], 3
.label_231:
	mov	rax, qword ptr [rbp - 0x48]
	mov	cx, word ptr [rbp - 0x92]
	nop	
	mov	word ptr [rax], cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0xb0]
	mov	edx, OFFSET FLAT:.str.3_0
	nop	
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0xb8], rax
	jne	.label_242
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_228
.label_242:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx], rax
.label_236:
	jmp	.label_227
.label_227:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	readdir
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_241
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x13
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	add	rdi, 4
	lea	rsi, [rsi]
	cmp	rax, rdi
	jae	.label_240
	jmp	.label_227
.label_240:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rdx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	nop	
	cmp	eax, 0
	je	.label_235
	jmp	.label_227
.label_235:
	nop	
	mov	eax, 0x31
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rcx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_237
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	jle	.label_226
.label_237:
	lea	rsi, [rsi]
	jmp	.label_227
.label_226:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	lea	rsi, [rsi]
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 0x81], dl
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], 1
.label_243:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rdi, [rdi]
	cmp	edx, 9
	ja	.label_239
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x39
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edi, sil
	lea	rsi, [rsi]
	and	edi, edx
	nop	
	cmp	edi, 0
	setne	sil
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	jmp	.label_243
.label_239:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_229
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax + 1], 0
	lea	rdi, [rdi]
	jne	.label_229
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0xc0]
	jb	.label_224
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_229
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	add	rax, 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jle	.label_224
.label_229:
	jmp	.label_227
.label_224:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x81]
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x81]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0xa4], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rdi, 2
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_230
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x50]
	nop	
	jb	.label_225
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_225:
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_234
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 3
	lea	rsi, [rsi]
	jmp	.label_228
.label_234:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_230:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2e
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x7e
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x81]
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movsxd	rcx, esi
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_238:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	lea	rsi, [rsi]
	jne	.label_233
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0x30
	lea	rdi, [rdi]
	jmp	.label_238
.label_233:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	add	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
	jmp	.label_227
.label_241:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
.label_228:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058b0

	.globl check_extension
	.type check_extension, @function
check_extension:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	qword ptr [rbp - 0x48], r8
	mov	rdi, qword ptr [rbp - 0x58]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	base_len
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	esi, ecx
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_251
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_247
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_249
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x22], cx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, OFFSET FLAT:.str.2_0
	nop	
	mov	esi, edx
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	pathconf
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	setne	r8b
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	cx, word ptr [rbp - 0x22]
	mov	word ptr [rax], cx
	nop	
	jmp	.label_245
.label_249:
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	fpathconf
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
.label_245:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	jg	.label_246
	cmp	qword ptr [rbp - 0x18], -1
	ja	.label_246
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_244
.label_246:
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x18], -1
	mov	rbp, rbp
	cmovl	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_244:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_251:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	ja	.label_250
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_250:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx + 1], 0
.label_248:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b30

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	call	backupfile_internal
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_252
	call	xalloc_die
.label_252:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_253
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_254
.label_253:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 2
	jmp	.label_255
.label_254:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 0xc], r10d
.label_255:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c40

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_256
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_256
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	get_version
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_257
.label_256:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_2
	call	getenv
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rsi, rax
	mov	rsp, rsp
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_257:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x180
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rdi
	mov	dword ptr [rbp - 0x40], esi
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], 0
	mov	esi, dword ptr [rbp - 0x40]
	nop	
	and	esi, 0xfffffffc
	nop	
	mov	dword ptr [rbp - 0x6c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	mov	esi, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	esi, 3
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	rbp, rbp
	and	esi, ecx
	mov	rsp, rsp
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_324
	call	__errno_location
	mov	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jmp	.label_273
.label_324:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x178], 0
	jne	.label_300
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jmp	.label_273
.label_300:
	mov	rax, qword ptr [rbp - 0x178]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_285
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jmp	.label_273
.label_285:
	mov	qword ptr [rbp - 0x128], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_326
	call	xgetcwd
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_265
	mov	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jmp	.label_273
.label_265:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rdi
	cmp	rax, 0x1000
	mov	rbp, rbp
	jge	.label_281
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0x150], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rsi, rdi
	lea	rsi, [rsi]
	add	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_295
.label_281:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_295:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], 0
	lea	rdi, [rdi]
	jmp	.label_321
.label_326:
	mov	eax, 0x1000
	mov	rbp, rbp
	mov	edi, eax
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x128], 0
	mov	rsp, rsp
	je	.label_261
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x38], rdx
.label_261:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
.label_321:
	mov	rsp, rsp
	jmp	.label_292
.label_292:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_303
	jmp	.label_318
.label_318:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_269
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_318
.label_269:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x78], rax
.label_293:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], cl
	je	.label_258
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], dl
.label_258:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	mov	rbp, rbp
	jne	.label_282
	mov	rbp, rbp
	jmp	.label_287
.label_282:
	lea	rsi, [rsi]
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_293
.label_287:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_294
	mov	rsp, rsp
	jmp	.label_303
.label_294:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_306
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_306
	jmp	.label_319
.label_306:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	rax, rcx
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_264
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_264
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	jne	.label_264
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jbe	.label_274
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_289:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x161], cl
	mov	rbp, rbp
	jbe	.label_272
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	sete	dl
	nop	
	xor	dl, 0xff
	nop	
	mov	byte ptr [rbp - 0x161], dl
.label_272:
	mov	al, byte ptr [rbp - 0x161]
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_305
	jmp	.label_311
.label_305:
	lea	rsi, [rsi]
	jmp	.label_312
.label_312:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_289
.label_311:
	jmp	.label_274
.label_274:
	lea	rdi, [rdi]
	jmp	.label_283
.label_264:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_323
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0x2f
.label_323:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rdx, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_260
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0x1000
	mov	rsp, rsp
	jle	.label_277
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_268
.label_277:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x18], rax
.label_268:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x38], rax
.label_260:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	sub	rcx, rdx
	nop	
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x119], 1
	je	.label_276
	cmp	dword ptr [rbp - 0x40], 2
	jne	.label_276
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jmp	.label_288
.label_276:
	nop	
	test	byte ptr [rbp - 0x119], 1
	je	.label_298
	nop	
	lea	rsi, [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	stat
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_310
.label_298:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	mov	dword ptr [rbp - 0x7c], eax
.label_310:
	mov	eax, dword ptr [rbp - 0x7c]
	cmp	eax, 0
	je	.label_320
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x12c], ecx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_322
	jmp	.label_275
.label_322:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_328
	nop	
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rsi + rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_270
	cmp	dword ptr [rbp - 0x12c], 2
	mov	rbp, rbp
	je	.label_278
.label_270:
	jmp	.label_275
.label_278:
	jmp	.label_267
.label_328:
	mov	dword ptr [rbp - 0xf8], 0
.label_320:
	jmp	.label_288
.label_288:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	nop	
	jne	.label_290
	lea	rdi, [rbp - 0x118]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x110]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	call	seen_triple
	test	al, 1
	jne	.label_304
	lea	rsi, [rsi]
	jmp	.label_307
.label_304:
	cmp	dword ptr [rbp - 0x40], 2
	nop	
	jne	.label_309
	mov	rbp, rbp
	jmp	.label_267
.label_309:
	mov	dword ptr [rbp - 0x12c], 0x28
	jmp	.label_275
.label_307:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], 0
	jne	.label_266
	cmp	dword ptr [rbp - 0x40], 2
	mov	rbp, rbp
	jne	.label_279
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	je	.label_279
	lea	rsi, [rsi]
	jmp	.label_267
.label_279:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x12c], ecx
	jmp	.label_275
.label_266:
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_299
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	cmp	rax, 0x1000
	mov	rsp, rsp
	jbe	.label_327
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_302
.label_327:
	nop	
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_262
.label_299:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jbe	.label_325
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 8], rax
.label_325:
	nop	
	jmp	.label_262
.label_262:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	memmove
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x178], rax
	mov	rcx, qword ptr [rbp - 0x140]
	nop	
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	mov	rsp, rsp
	jne	.label_284
	mov	qword ptr [rbp - 0x60], 0
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_314
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memcpy
.label_314:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	lea	rdi, [rdi]
	jmp	.label_297
.label_284:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jbe	.label_271
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
.label_316:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x151], cl
	lea	rdi, [rdi]
	jbe	.label_317
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x151], dl
.label_317:
	mov	al, byte ptr [rbp - 0x151]
	test	al, 1
	nop	
	jne	.label_308
	mov	rsp, rsp
	jmp	.label_329
.label_308:
	mov	rbp, rbp
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_329:
	jmp	.label_271
.label_271:
	jmp	.label_297
.label_297:
	mov	rdi, qword ptr [rbp - 0x140]
	nop	
	call	free
	jmp	.label_280
.label_290:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_259
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_259
	cmp	dword ptr [rbp - 0x40], 2
	je	.label_259
	mov	dword ptr [rbp - 0x12c], 0x14
	lea	rdi, [rdi]
	jmp	.label_275
.label_259:
	mov	rbp, rbp
	jmp	.label_280
.label_280:
	jmp	.label_283
.label_283:
	lea	rdi, [rdi]
	jmp	.label_319
.label_319:
	mov	rbp, rbp
	jmp	.label_286
.label_286:
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_292
.label_303:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_301
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_301
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_301:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_315
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x10], rax
.label_315:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	cmp	qword ptr [rbp - 0x118], 0
	nop	
	je	.label_263
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	hash_free
.label_263:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_273
.label_275:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	free
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_296
	nop	
	mov	rdi, qword ptr [rbp - 0x118]
	call	hash_free
.label_296:
	mov	eax, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
.label_273:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069b0

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	jne	.label_330
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:triple_hash
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:triple_free
	nop	
	mov	qword ptr [rbp - 0x20], 7
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_334
	lea	rdi, [rdi]
	call	xalloc_die
.label_334:
	jmp	.label_330
.label_330:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	seen_file
	mov	rsp, rsp
	test	al, 1
	jne	.label_331
	jmp	.label_332
.label_331:
	mov	byte ptr [rbp - 0x21], 1
	jmp	.label_333
.label_332:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	record_file
	nop	
	mov	byte ptr [rbp - 0x21], 0
.label_333:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ac0
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
	.align	32
	#Procedure 0x406af0

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
	jbe	.label_336
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
	jne	.label_337
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_337
	mov	byte ptr [rbp - 0xd], 1
.label_337:
	jmp	.label_336
.label_336:
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	close_stream
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_341
	mov	byte ptr [rbp - 0xd], 1
.label_341:
	test	byte ptr [rbp - 0xd], 1
	je	.label_335
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_338
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_3
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_339
.label_338:
	nop	
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_339:
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	call	close_stdout
	test	byte ptr [rbp - 0xd], 1
	nop	
	je	.label_340
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rsi, [rsi]
	call	_exit
.label_340:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c60
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
	.align	32
	#Procedure 0x406c90
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
	#Procedure 0x406cc0

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
	je	.label_342
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_343
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_342
.label_343:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_346
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
	movabs	rdx, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_344
.label_346:
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
.label_344:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_342:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_345
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_345:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406df0

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
	jne	.label_347
	lea	rsi, [rsi]
	call	xalloc_die
.label_347:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e40

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
	je	.label_348
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_351
.label_348:
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
.label_351:
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
.label_352:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_353
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_349
	jmp	.label_353
.label_349:
	jmp	.label_350
.label_350:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_352
.label_353:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f30

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
	je	.label_355
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_355
.label_355:
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
	jne	.label_357
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_354
.label_357:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	je	.label_356
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
.label_356:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_354:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407050

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
.label_364:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_361
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_364
.label_361:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_363:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_358
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_362
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_360
.label_362:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_359
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_359:
	jmp	.label_360
.label_360:
	jmp	.label_365
.label_365:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_363
.label_358:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407120

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
.label_367:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_366
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
.label_366:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_368
	mov	rbp, rbp
	jmp	.label_369
.label_368:
	jmp	.label_370
.label_370:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_367
.label_369:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071e0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_371
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_371:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	base_len
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407260

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_372
	jmp	.label_374
.label_372:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_373
	mov	rbp, rbp
	call	xalloc_die
.label_373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_374
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	triple_free
.label_374:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407340

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_375
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_376
.label_375:
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	call	hash_lookup
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 9], dl
.label_376:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073e0

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
	jne	.label_377
	lea	rsi, [rsi]
	call	xalloc_die
.label_377:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407450

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
	je	.label_383
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_379
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_379
	nop	
	mov	byte ptr [rbp - 0x29], 0x2f
.label_379:
	jmp	.label_380
.label_383:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_381
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0x2e
.label_381:
	jmp	.label_380
.label_380:
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
	jne	.label_384
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_378
.label_384:
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
	je	.label_382
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
.label_382:
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
.label_378:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407630

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
	.align	32
	#Procedure 0x407650

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
	.align	32
	#Procedure 0x407670

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
	.align	32
	#Procedure 0x407690

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
.label_389:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_385
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_388
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_390:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_391
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_390
.label_391:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_386
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_386:
	jmp	.label_388
.label_388:
	mov	rbp, rbp
	jmp	.label_387
.label_387:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_389
.label_385:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407770
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
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_394
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
.label_397:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_398
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_397
.label_398:
	jmp	.label_394
.label_394:
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_396
.label_392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_393
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_393
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_399
.label_393:
	mov	byte ptr [rbp - 0x19], 0
.label_399:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078a0
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
	mov	ecx, OFFSET FLAT:.str_8
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
	mov	ecx, OFFSET FLAT:.str.1_4
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_400]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_401]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_402]]
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
	.section	.text
	.align	32
	#Procedure 0x407a20

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
	jne	.label_407
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_403
.label_407:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_404:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_408
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_405
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
	jne	.label_405
	mov	rsp, rsp
	jmp	.label_409
.label_405:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_403
.label_409:
	nop	
	jmp	.label_406
.label_406:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_404
.label_408:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_403:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b10

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
	jb	.label_410
	call	abort
.label_410:
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
	.align	32
	#Procedure 0x407ba0
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
	jne	.label_411
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_414
.label_411:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_416:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_412
	lea	rsi, [rsi]
	call	abort
.label_412:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_415
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_414
.label_415:
	jmp	.label_413
.label_413:
	nop	
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_416
.label_414:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c60
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
.label_421:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_418
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_418
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_423
.label_418:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_421
	jmp	.label_419
.label_419:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_422
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_420
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_423
.label_420:
	jmp	.label_419
.label_422:
	mov	qword ptr [rbp - 0x28], 0
.label_423:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d60
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
.label_425:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_428
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_427
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_429:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_426
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_430
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_424
.label_430:
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
	jmp	.label_429
.label_426:
	lea	rsi, [rsi]
	jmp	.label_427
.label_427:
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_425
.label_428:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_424:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e70
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
.label_434:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_432
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_436
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_438:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_439
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
	jne	.label_437
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_435
.label_437:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_438
.label_439:
	mov	rbp, rbp
	jmp	.label_436
.label_436:
	nop	
	jmp	.label_433
.label_433:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_434
.label_432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_435:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f80
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
.label_440:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_441
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
	jmp	.label_440
.label_441:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ff0
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
	mov	rax,  qword ptr [word ptr [label_442]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_443]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408040

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
	jne	.label_444
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_444:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_445
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_445:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_446
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_447
.label_446:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_449
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_449:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_450
	jmp	.label_448
.label_450:
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
	jne	.label_451
	mov	rsp, rsp
	jmp	.label_448
.label_451:
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
	jne	.label_452
	jmp	.label_448
.label_452:
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
	jmp	.label_447
.label_448:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_447:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408260

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
	.align	32
	#Procedure 0x4082b0

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
	.align	32
	#Procedure 0x4082e0

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
	jne	.label_453
	mov	byte ptr [rbp - 1], 1
	jmp	.label_456
.label_453:
	movss	xmm0,  dword ptr [dword ptr [label_457]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_455
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_454]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_455
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_454]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_455
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_455
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_455
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_454]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_455
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
	jbe	.label_455
	mov	byte ptr [rbp - 1], 1
	jmp	.label_456
.label_455:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_456:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408450

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
	jne	.label_458
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_459]]
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
	js	.label_460
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_460:
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
	jb	.label_464
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_462
.label_464:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_463]]
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
.label_458:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_461
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_462
.label_461:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_462:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085c0
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
.label_468:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_467
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_472
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_469:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_465
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_470
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_470:
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
	jmp	.label_469
.label_465:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_466
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_466:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_472:
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_468
.label_467:
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
	.align	32
	#Procedure 0x408730

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
	je	.label_475
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_475
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_485:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_476
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_486:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_482
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
	jmp	.label_486
.label_482:
	jmp	.label_476
.label_476:
	jmp	.label_481
.label_481:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_485
.label_473:
	jmp	.label_475
.label_475:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_479:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_480
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_484:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_478
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
	jmp	.label_484
.label_478:
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_479
.label_480:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_477:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_483
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
	jmp	.label_477
.label_483:
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
	.align	32
	#Procedure 0x408920

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
	jne	.label_490
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_488
.label_490:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_492
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_488
.label_492:
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
	jne	.label_494
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_488
.label_494:
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
	jne	.label_489
	lea	rsi, [rsi]
	jmp	.label_487
.label_489:
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
	jmp	.label_488
.label_487:
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
	jne	.label_493
	mov	rbp, rbp
	jmp	.label_495
.label_493:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_491
.label_495:
	call	abort
.label_491:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_488:
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
	.align	32
	#Procedure 0x408bf0

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
.label_509:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_502
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_503
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_507:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_501
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
	je	.label_497
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
	jmp	.label_508
.label_497:
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
.label_508:
	mov	rbp, rbp
	jmp	.label_499
.label_499:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_507
.label_501:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_506
	jmp	.label_500
.label_506:
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
	je	.label_504
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_498
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_496
.label_498:
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
	jmp	.label_505
.label_504:
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
.label_505:
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
.label_503:
	jmp	.label_500
.label_500:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_509
.label_502:
	mov	byte ptr [rbp - 0x19], 1
.label_496:
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
	.align	32
	#Procedure 0x408e80

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
	jne	.label_510
	lea	rsi, [rsi]
	call	abort
.label_510:
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
	je	.label_519
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_527
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_527:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_511
.label_519:
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
	js	.label_520
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_520:
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
	js	.label_514
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_514:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_515
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
	js	.label_512
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_512:
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
	js	.label_528
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_528:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_525
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_523
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
	js	.label_526
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_526:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_524
.label_523:
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
	js	.label_516
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_516:
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
.label_524:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_459]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_518
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_511
.label_518:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_463]]
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
	jne	.label_513
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_511
.label_513:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_521
	call	abort
.label_521:
	jmp	.label_525
.label_525:
	lea	rdi, [rdi]
	jmp	.label_515
.label_515:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_522
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_517
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_511
.label_517:
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
	jmp	.label_511
.label_522:
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
.label_511:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409470

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
	jne	.label_536
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_530
.label_536:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_537
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
	jne	.label_537
	jmp	.label_532
.label_537:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_534
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_539
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
	jmp	.label_529
.label_539:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_529:
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_530
.label_532:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_540:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_538
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_531
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
	jne	.label_531
	lea	rsi, [rsi]
	jmp	.label_533
.label_531:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_535
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
.label_535:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_530
.label_533:
	mov	rbp, rbp
	jmp	.label_541
.label_541:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_540
.label_538:
	mov	qword ptr [rbp - 0x40], 0
.label_530:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096b0

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
	je	.label_542
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
	jmp	.label_543
.label_542:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_543:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409730

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
	jne	.label_546
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_544
.label_546:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_547
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_545
.label_547:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_544:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097d0
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
	jne	.label_551
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_562
.label_551:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_560
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
	js	.label_553
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_553:
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
	js	.label_550
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_550:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_561
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
	js	.label_559
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_559:
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
	js	.label_556
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_556:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_548
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_549
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
	js	.label_557
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_557:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_563
.label_549:
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
	js	.label_555
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_555:
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
.label_563:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_463]]
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
	jne	.label_558
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_552:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_554
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
	jmp	.label_552
.label_554:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_558:
	lea	rsi, [rsi]
	jmp	.label_548
.label_548:
	jmp	.label_561
.label_561:
	nop	
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_562:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ca0

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
	jae	.label_564
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_564:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_568:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_566
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_566:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_567
	jmp	.label_565
.label_567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_568
.label_565:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d50

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
.label_570:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_569
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
.label_569:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_572
	jmp	.label_571
.label_572:
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
	jmp	.label_570
.label_571:
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
	.align	32
	#Procedure 0x409e50

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
	.align	32
	#Procedure 0x409ea0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f10
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f50

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_573
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_573
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
.label_573:
	mov	al, byte ptr [rbp - 0x19]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, edx
	nop	
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a010

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	jne	.label_574
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	jne	.label_574
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_574:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0f0

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a140

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
	je	.label_575
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
.label_575:
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
	je	.label_578
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
	ja	.label_577
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
	jmp	.label_576
.label_577:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x58], rdx
.label_576:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rcx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], edx
	mov	qword ptr [rbp - 0x10], rcx
.label_578:
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
	.align	32
	#Procedure 0x40a3b0

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
	jge	.label_581
	nop	
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_580
.label_581:
	mov	edi, dword ptr [rbp - 0x40]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_579
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_582
.label_579:
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
.label_582:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_580:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4b0

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4c0
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4d0

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
	jne	.label_585
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_585:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_583
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_587
.label_583:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_587:
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
	jl	.label_586
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
	jne	.label_586
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
	jne	.label_584
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_584:
	jmp	.label_586
.label_586:
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
	#Procedure 0x40a650
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
	je	.label_589
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_588
.label_589:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_588
.label_588:
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
	#Procedure 0x40a700
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
	je	.label_590
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_591
.label_590:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a760
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
	je	.label_592
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_593
.label_592:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7c0

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
	je	.label_594
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_595
.label_594:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_595
.label_595:
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
	#Procedure 0x40a8c0
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
	jne	.label_596
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_596:
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
	#Procedure 0x40a920

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
	jne	.label_597
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_597:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_599
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_598
.label_599:
	call	abort
.label_598:
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
	#Procedure 0x40a9c0
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
	je	.label_600
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_601
.label_600:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_601
.label_601:
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
	#Procedure 0x40aac0

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
.label_785:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_717
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_609]]
	jmp	rcx
.label_1272:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1271:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_613
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_604
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_604:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_613
.label_613:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_621
.label_1273:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_621
.label_1274:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_638
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
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
.label_638:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_653
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_676:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_659
	jmp	.label_662
.label_662:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_664
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_664:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_773
.label_773:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_676
.label_659:
	mov	rbp, rbp
	jmp	.label_653
.label_653:
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
	jmp	.label_621
.label_1269:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1268:
	mov	byte ptr [rbp - 0x3e], 1
.label_1270:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_700
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_700:
	jmp	.label_703
.label_703:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_704
	jmp	.label_782
.label_782:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_776
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_776:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_704
.label_704:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_621
.label_1267:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_621
.label_717:
	call	abort
.label_621:
	mov	qword ptr [rbp - 0xd8], 0
.label_733:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_729
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
	jmp	.label_730
.label_729:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_730:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_747
	mov	rbp, rbp
	jmp	.label_756
.label_747:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_686
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_686
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_686
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_774
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_774
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_781
.label_774:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_781:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_686
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
	jne	.label_686
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_797
	jmp	.label_608
.label_797:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_686:
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
	ja	.label_602
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_619]]
	nop	
	jmp	rcx
.label_1150:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_625
	mov	rsp, rsp
	jmp	.label_631
.label_631:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_634
	jmp	.label_608
.label_634:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_635
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_635
	nop	
	jmp	.label_643
.label_643:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_647
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_647:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_654
.label_654:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_658
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_658:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_666
.label_666:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_671
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_671:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_635:
	lea	rsi, [rsi]
	jmp	.label_679
.label_679:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_681
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_689
.label_689:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_698
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_698
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_698
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_698
	nop	
	jmp	.label_714
.label_714:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_716
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_669
.label_669:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_752
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_752:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_698
.label_698:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_734
.label_625:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_737
	mov	rbp, rbp
	jmp	.label_731
.label_737:
	jmp	.label_734
.label_734:
	jmp	.label_618
.label_1161:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_745
	mov	rbp, rbp
	jmp	.label_751
.label_751:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_754
	jmp	.label_760
.label_745:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_762
	jmp	.label_608
.label_762:
	jmp	.label_606
.label_754:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_766
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_766
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_766
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
	je	.label_641
	nop	
	jmp	.label_688
.label_688:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_641
	jmp	.label_790
.label_790:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_641
	jmp	.label_795
.label_795:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_641
	jmp	.label_799
.label_799:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_656
	jmp	.label_641
.label_641:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_607
	jmp	.label_608
.label_607:
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
	jae	.label_614
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_614:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_640
.label_640:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_644
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_644:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_651
.label_651:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_663
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_663:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_728
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_630
.label_656:
	jmp	.label_630
.label_630:
	jmp	.label_766
.label_766:
	jmp	.label_606
.label_760:
	jmp	.label_606
.label_606:
	jmp	.label_618
.label_1151:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_683
.label_1152:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_683
.label_1156:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_683
.label_1154:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_692
.label_1157:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_692
.label_1153:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_692
.label_1155:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_683
.label_1162:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_701
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_707
	nop	
	jmp	.label_608
.label_707:
	lea	rsi, [rsi]
	jmp	.label_616
.label_701:
	test	byte ptr [rbp - 0x89], 1
	je	.label_715
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_715
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_715
	jmp	.label_616
.label_715:
	jmp	.label_692
.label_692:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_723
	test	byte ptr [rbp - 0x3e], 1
	je	.label_723
	jmp	.label_608
.label_723:
	mov	rsp, rsp
	jmp	.label_683
.label_683:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_726
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_620
.label_726:
	jmp	.label_618
.label_1163:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_735
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_738
	jmp	.label_744
.label_735:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_738
.label_744:
	nop	
	jmp	.label_618
.label_738:
	jmp	.label_748
.label_748:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_648
	lea	rsi, [rsi]
	jmp	.label_618
.label_648:
	nop	
	jmp	.label_757
.label_757:
	mov	byte ptr [rbp - 0x91], 1
.label_1158:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_759
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_759
	jmp	.label_608
.label_759:
	lea	rsi, [rsi]
	jmp	.label_618
.label_1160:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_767
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_772
	jmp	.label_608
.label_772:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_775
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_775
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_775:
	jmp	.label_783
.label_783:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_784
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_784:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_788
.label_788:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_792
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_792:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_798
.label_798:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_802
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_802:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_767:
	lea	rsi, [rsi]
	jmp	.label_618
.label_1159:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_618
.label_602:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_626
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
	jmp	.label_764
.label_626:
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
	jne	.label_655
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_655:
	jmp	.label_661
.label_661:
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
	jne	.label_678
	jmp	.label_684
.label_678:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_685
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_684
.label_685:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_691
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_712:
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
	jae	.label_694
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_694:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_710
	jmp	.label_711
.label_710:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_712
.label_711:
	jmp	.label_684
.label_691:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_657
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_657
	mov	qword ptr [rbp - 0xe8], 1
.label_765:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_724
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
	jb	.label_637
	jmp	.label_741
.label_741:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_637
	jmp	.label_746
.label_746:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_637
	jmp	.label_753
.label_753:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_755
	mov	rsp, rsp
	jmp	.label_637
.label_637:
	mov	rsp, rsp
	jmp	.label_608
.label_755:
	jmp	.label_763
.label_763:
	mov	rsp, rsp
	jmp	.label_713
.label_713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_765
.label_724:
	mov	rbp, rbp
	jmp	.label_657
.label_657:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_771
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_771:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_800
.label_800:
	lea	rsi, [rsi]
	jmp	.label_778
.label_778:
	jmp	.label_779
.label_779:
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
	jne	.label_661
.label_684:
	jmp	.label_764
.label_764:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_786
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_794
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_794
.label_786:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_777:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_605
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_605
	jmp	.label_610
.label_610:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_612
	jmp	.label_608
.label_612:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_699
	test	byte ptr [rbp - 0x42], 1
	jne	.label_699
	lea	rdi, [rdi]
	jmp	.label_627
.label_627:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_721
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_721:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_665
.label_665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_787
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_787:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_652
.label_652:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_660
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_660:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_699:
	jmp	.label_667
.label_667:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_670
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_670:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_725
.label_725:
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_677
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
.label_677:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_696
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
.label_696:
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
	jmp	.label_705
.label_605:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_628
	lea	rdi, [rdi]
	jmp	.label_718
.label_718:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_645
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_645:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_628:
	nop	
	jmp	.label_705
.label_705:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_727
	jmp	.label_732
.label_727:
	lea	rsi, [rsi]
	jmp	.label_736
.label_736:
	test	byte ptr [rbp - 0x42], 1
	je	.label_739
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_739
	lea	rsi, [rsi]
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_743
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_743:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_750
.label_750:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_758
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_758:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_739:
	nop	
	jmp	.label_768
.label_768:
	mov	rsp, rsp
	jmp	.label_769
.label_769:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_770
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_770:
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
	jmp	.label_777
.label_732:
	mov	rsp, rsp
	jmp	.label_616
.label_794:
	lea	rsi, [rsi]
	jmp	.label_618
.label_618:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_695
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_791
.label_695:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_793
.label_791:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_793
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
	jne	.label_611
.label_793:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_611
	mov	rsp, rsp
	jmp	.label_616
.label_611:
	nop	
	jmp	.label_620
.label_620:
	jmp	.label_622
.label_622:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_624
	jmp	.label_608
.label_624:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_629
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_629
	lea	rdi, [rdi]
	jmp	.label_636
.label_636:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_672:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_639
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_639:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_680
.label_680:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_709
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_709:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_629:
	jmp	.label_673
.label_673:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_674
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_674:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_682
.label_682:
	nop	
	jmp	.label_616
.label_616:
	jmp	.label_687
.label_687:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_668
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_668
	lea	rdi, [rdi]
	jmp	.label_693
.label_693:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_697
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_697:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_708
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_708:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_668:
	jmp	.label_719
.label_719:
	nop	
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_722
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_722:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_706
	mov	byte ptr [rbp - 0xb7], 0
.label_706:
	mov	rbp, rbp
	jmp	.label_731
.label_731:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_733
.label_756:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_740
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_740
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_740
	nop	
	jmp	.label_608
.label_740:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_749
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_749
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_749
	test	byte ptr [rbp - 0xb7], 1
	je	.label_761
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
	jmp	.label_642
.label_761:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_780
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_780
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_785
.label_780:
	jmp	.label_789
.label_789:
	mov	rbp, rbp
	jmp	.label_749
.label_749:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_632
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_632
	mov	rbp, rbp
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_796
	lea	rdi, [rdi]
	jmp	.label_650
.label_650:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_801
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_801:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_615
.label_615:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_623
.label_796:
	jmp	.label_632
.label_632:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_633
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_633:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_642
.label_608:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_646
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_646
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_646:
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
.label_642:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c560
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
	#Procedure 0x40c5d0

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
	je	.label_803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_804
.label_803:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_804
.label_804:
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
	je	.label_805
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_805:
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
	#Procedure 0x40c7a0
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
.label_810:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_809
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
	jmp	.label_810
.label_809:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_808
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_806]],  rax
.label_808:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_807
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_807:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c8b0

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
	#Procedure 0x40c900

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
	jge	.label_816
	call	abort
.label_816:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_811
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
	jge	.label_812
	call	xalloc_die
.label_812:
	test	byte ptr [rbp - 0x51], 1
	je	.label_813
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_817
.label_813:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_817:
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
	je	.label_815
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_806]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_815:
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
.label_811:
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
	ja	.label_814
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
	je	.label_818
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_818:
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
.label_814:
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
	#Procedure 0x40cc30

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
	#Procedure 0x40cc70
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
	#Procedure 0x40cca0
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
	#Procedure 0x40cce0

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
	#Procedure 0x40cd40

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
	jne	.label_819
	call	abort
.label_819:
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
	#Procedure 0x40cde0

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
	#Procedure 0x40ce50

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
	#Procedure 0x40ce90
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
	#Procedure 0x40ced0

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
	#Procedure 0x40cf80

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
	#Procedure 0x40cfc0

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
	#Procedure 0x40cff0
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
	#Procedure 0x40d030

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
	#Procedure 0x40d110

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
	#Procedure 0x40d160

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
	#Procedure 0x40d200
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
	#Procedure 0x40d250
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
	#Procedure 0x40d2b0

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
	#Procedure 0x40d2f0
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
	#Procedure 0x40d330

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
	#Procedure 0x40d370

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
	#Procedure 0x40d3b0

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
	je	.label_823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_820
.label_823:
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
	jne	.label_821
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
	jmp	.label_820
.label_821:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_822
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_820
.label_822:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_820:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4f0

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x190
	mov	eax, 0x13c
	mov	rsp, rsp
	mov	r9d, eax
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], 0xffffffff
	mov	dword ptr [rbp - 0x1c], 0x16
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	r8, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	syscall
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x184], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	dword ptr [rbp - 0x184], 0
	lea	rdi, [rdi]
	jge	.label_826
	cmp	dword ptr [rbp - 0x1c], 0x16
	je	.label_832
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0x26
	mov	rbp, rbp
	je	.label_832
	cmp	dword ptr [rbp - 0x1c], 0x5f
	lea	rsi, [rsi]
	je	.label_832
.label_826:
	mov	eax, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_827
.label_832:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0x18], 0x14
	mov	byte ptr [rbp - 0xe9], 0
	cmp	dword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_839
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	and	eax, 0xfffffffe
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_830
	mov	rbp, rbp
	mov	edi, 0x5f
	mov	rsp, rsp
	call	errno_fail
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_827
.label_830:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	lstatat
	cmp	eax, 0
	je	.label_842
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_847
.label_842:
	lea	rsi, [rsi]
	mov	edi, 0x11
	lea	rdi, [rdi]
	call	errno_fail
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_827
.label_847:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	lea	rdi, [rdi]
	je	.label_834
	nop	
	mov	dword ptr [rbp - 0xc], 0xffffffff
	jmp	.label_827
.label_834:
	mov	byte ptr [rbp - 0xe9], 1
	jmp	.label_839
.label_839:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_844
	cmp	qword ptr [rbp - 8], 0
	jne	.label_825
.label_844:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	renameat
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_827
.label_825:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x2f
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], sil
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], sil
	mov	rsp, rsp
	test	byte ptr [rbp - 0xc9], 1
	jne	.label_835
	test	byte ptr [rbp - 0xd], 1
	jne	.label_835
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	renameat
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_827
.label_835:
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	call	lstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_845
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rsp, rsp
	jmp	.label_827
.label_845:
	test	byte ptr [rbp - 0xe9], 1
	je	.label_829
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_833
	mov	edi, 2
	call	errno_fail
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_827
.label_833:
	mov	rbp, rbp
	jmp	.label_841
.label_829:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x180]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	lstatat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_846
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_828
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_831
.label_828:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rbp, rbp
	jmp	.label_827
.label_831:
	jmp	.label_838
.label_846:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x168]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_843
	mov	edi, 0x14
	nop	
	call	errno_fail
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jmp	.label_827
.label_843:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_824
	mov	rsp, rsp
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_827
.label_824:
	jmp	.label_837
.label_837:
	lea	rdi, [rdi]
	jmp	.label_838
.label_838:
	jmp	.label_841
.label_841:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	call	renameat
	mov	dword ptr [rbp - 0x184], eax
	call	__errno_location
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	je	.label_836
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	call	free
.label_836:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_840
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	call	free
.label_840:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0xe8], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xe8]
	nop	
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0xc], ecx
.label_827:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	rsp, 0x190
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da00

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	eax, edi
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da40

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	edx, eax
	lea	rdi, [rdi]
	call	same_nameat
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da90

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], r8b
	lea	rsi, [rsi]
	jne	.label_851
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], cl
.label_851:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe2]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 0
	test	byte ptr [rbp - 0xd5], 1
	lea	rsi, [rsi]
	je	.label_850
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xc8]
	mov	qword ptr [rbp - 0x180], rax
	mov	dword ptr [rbp - 0x184], 0x100
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_849
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_849:
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	dir_name
	lea	rdx, [rbp - 0x178]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_852
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	nop	
	call	error
.label_852:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0x170]
	mov	byte ptr [rbp - 9], cl
	lea	rdi, [rdi]
	jne	.label_848
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_848:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
.label_850:
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd00
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
	.align	32
	#Procedure 0x40dd40

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
	.align	32
	#Procedure 0x40dd90

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	dword ptr [rbp - 0x40], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], esi
	nop	
	mov	dword ptr [rbp - 0x3c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_858
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x70]
	sub	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	call	check_x_suffix
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_865
.label_858:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_853
.label_865:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	randint_all_new
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	jne	.label_854
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_853
.label_854:
	mov	dword ptr [rbp - 0x14], 0
.label_856:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x3c]
	jae	.label_859
	mov	qword ptr [rbp - 0x78], 0
.label_863:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_855
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_863
.label_855:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	nop	
	jl	.label_864
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_860
.label_864:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x11
	lea	rdi, [rdi]
	je	.label_861
	mov	dword ptr [rbp - 0x40], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_860
.label_861:
	jmp	.label_857
.label_857:
	jmp	.label_862
.label_862:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_856
.label_859:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_all_free
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_853
.label_860:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x64]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 4], ecx
.label_853:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e020

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.2_3
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rax
	call	strspn
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, rax
	nop	
	setbe	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e080

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 8], r8
	mov	ecx, dword ptr [rbp - 0x34]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_866
	mov	rsp, rsp
	jmp	.label_871
.label_871:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0xc], eax
	je	.label_872
	jmp	.label_869
.label_869:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	je	.label_870
	mov	rbp, rbp
	jmp	.label_868
.label_866:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_867
.label_872:
	movabs	rax, OFFSET FLAT:try_dir
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_867
.label_870:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_867
.label_868:
	movabs	rdi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x147
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_867:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e190

	.globl try_file
	.type try_file, @function
try_file:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	edx, 0x180
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi]
	lea	rsi, [rsi]
	and	eax, 0xfffffffc
	or	eax, 2
	mov	rsp, rsp
	or	eax, 0x40
	or	eax, 0x80
	lea	rsi, [rsi]
	mov	esi, eax
	mov	al, 0
	call	open
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1f0

	.globl try_dir
	.type try_dir, @function
try_dir:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x1c0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	call	mkdir
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e230

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x90]
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	__lstat
	cmp	eax, 0
	je	.label_874
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_873
.label_874:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_873:
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	xor	edx, edx
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0xa0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2c0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 6
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 8]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e310
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	eax, 6
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e370

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
	jg	.label_875
	cmp	dword ptr [rbp - 4], 2
	jg	.label_875
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
.label_875:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e400

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
	je	.label_876
	movabs	rsi, OFFSET FLAT:.str_11
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
	jmp	.label_879
.label_876:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_879:
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
	ja	.label_880
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_878]]
	jmp	rcx
.label_1235:
	jmp	.label_877
.label_1236:
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
	jmp	.label_877
.label_1237:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_877
.label_1238:
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
	jmp	.label_877
.label_1239:
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
	jmp	.label_877
.label_1240:
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
	jmp	.label_877
.label_1241:
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
	jmp	.label_877
.label_1242:
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
	jmp	.label_877
.label_1243:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_877
.label_1244:
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
	jmp	.label_877
.label_880:
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
.label_877:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec40
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
.label_881:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_882
	mov	rbp, rbp
	jmp	.label_883
.label_883:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_881
.label_882:
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
	#Procedure 0x40ecf0

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
.label_888:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_884
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_890
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
	jmp	.label_889
.label_890:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_889:
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
.label_884:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_887
	mov	rsp, rsp
	jmp	.label_885
.label_887:
	jmp	.label_886
.label_886:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_888
.label_885:
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
	#Procedure 0x40ee50

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
	je	.label_891
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
.label_891:
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
	#Procedure 0x40f010
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
	#Procedure 0x40f0c0
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
	jae	.label_892
	mov	rbp, rbp
	call	xalloc_die
.label_892:
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
	#Procedure 0x40f120

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
	jne	.label_893
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_893
	lea	rdi, [rdi]
	call	xalloc_die
.label_893:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f180
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
	jae	.label_894
	mov	rsp, rsp
	call	xalloc_die
.label_894:
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
	#Procedure 0x40f200

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
	jne	.label_895
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_895
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_897
.label_895:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_896
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_896
	lea	rsi, [rsi]
	call	xalloc_die
.label_896:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_897:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2b0

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
	jne	.label_898
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_900
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
.label_900:
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
	jae	.label_902
	call	xalloc_die
.label_902:
	lea	rsi, [rsi]
	jmp	.label_901
.label_898:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_899
	call	xalloc_die
.label_899:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_901:
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
	#Procedure 0x40f3e0

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
	#Procedure 0x40f410
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
	#Procedure 0x40f450
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
	#Procedure 0x40f4a0
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
	jb	.label_903
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_904
.label_903:
	lea	rsi, [rsi]
	call	xalloc_die
.label_904:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f510

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
	#Procedure 0x40f560

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
	#Procedure 0x40f5c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_8
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
	.align	32
	#Procedure 0x40f620

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
	jne	.label_905
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	jne	.label_905
	call	xalloc_die
.label_905:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f690

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
	jg	.label_907
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_906
.label_907:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	jne	.label_908
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_908:
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
.label_906:
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
	.align	32
	#Procedure 0x40f760

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
	je	.label_909
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_910
.label_909:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_911
.label_910:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_911:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7d0

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
	je	.label_912
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
.label_912:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f830

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
	jbe	.label_913
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_915
.label_913:
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
	je	.label_914
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_916
.label_914:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
.label_915:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f900

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
	jne	.label_917
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_917
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_917
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
	jne	.label_919
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_918
.label_919:
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
	jmp	.label_918
.label_917:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_918:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa10

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
	jne	.label_920
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_920:
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
	ja	.label_921
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_921
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_921
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
	jmp	.label_922
.label_921:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_922:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb00

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
	jae	.label_923
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_934
.label_923:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_934:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_929
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_935
.label_929:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
.label_935:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_928:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_933
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	nop	
	jmp	.label_924
.label_933:
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
	jge	.label_927
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_927
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
	jmp	.label_924
.label_927:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_931
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_924
.label_931:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_932
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_930
.label_932:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_925
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_926
.label_925:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_924
.label_926:
	jmp	.label_930
.label_930:
	lea	rdi, [rdi]
	jmp	.label_928
.label_924:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd40

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
	.align	32
	#Procedure 0x40fd60

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
.label_936:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_946
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
	jne	.label_943
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_937
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_939
.label_937:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_944
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_942
.label_944:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_938
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
	je	.label_940
.label_938:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_940:
	lea	rsi, [rsi]
	jmp	.label_942
.label_942:
	mov	rbp, rbp
	jmp	.label_945
.label_945:
	mov	rsp, rsp
	jmp	.label_943
.label_943:
	nop	
	jmp	.label_947
.label_947:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_936
.label_946:
	test	byte ptr [rbp - 0x21], 1
	je	.label_941
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_939
.label_941:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_939:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff10

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
	jne	.label_948
	movabs	rdi, OFFSET FLAT:.str_12
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_949
.label_948:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_9
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_949:
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
	.align	32
	#Procedure 0x40fff0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_5
.label_1210:
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
.label_953:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_951
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_950
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
	je	.label_955
.label_950:
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
	movabs	rsi, OFFSET FLAT:.str.3_3
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
	jmp	.label_952
.label_955:
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
.label_952:
	jmp	.label_954
.label_954:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_953
.label_951:
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
	.align	32
	#Procedure 0x4101a0

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
	jl	.label_956
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_957
.label_956:
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
.label_957:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410260
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
.label_960:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_962
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
	jne	.label_959
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_958
.label_959:
	lea	rdi, [rdi]
	jmp	.label_961
.label_961:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_960
.label_962:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_958:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410330
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
	.align	32
	#Procedure 0x410380
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
	.align	32
	#Procedure 0x4103d0
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
	.align	32
	#Procedure 0x410420
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
	.align	32
	#Procedure 0x410460
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
	.align	32
	#Procedure 0x4104c0

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
	.align	32
	#Procedure 0x410520
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
	.align	32
	#Procedure 0x410570
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
	.align	32
	#Procedure 0x4105c0
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
	.align	32
	#Procedure 0x410620
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
	.align	32
	#Procedure 0x410670

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
	jne	.label_963
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_967
.label_963:
	mov	rbp, rbp
	jmp	.label_964
.label_964:
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
	jne	.label_965
	jmp	.label_966
.label_965:
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
	je	.label_964
.label_966:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_967:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410760

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
	jne	.label_970
	test	byte ptr [rbp - 0x15], 1
	je	.label_969
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_970
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_969
.label_970:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_968
	call	__errno_location
	mov	dword ptr [rax], 0
.label_968:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_971
.label_969:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_971:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410840

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
	je	.label_973
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_13
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_974
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_972
.label_974:
	mov	byte ptr [rbp - 0xd], 0
.label_972:
	jmp	.label_973
.label_973:
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
	#Procedure 0x4108e0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
.label_976:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_975
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	rax, byte ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_976
.label_975:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410970

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
	jne	.label_978
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_978:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_977
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_977:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4109f0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	eax, 0x18
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410a50

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_980
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_979
.label_980:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_979
.label_979:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ac0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ae0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x58], rsi
.label_981:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_987
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_984:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	shift_left
	add	rax, 0xff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_984
	lea	rsi, [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	randread
	mov	qword ptr [rbp - 0x10], 0
.label_983:
	mov	rdi, qword ptr [rbp - 0x50]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + rdi - 8]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	shift_left
	nop	
	add	rax, 0xff
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_983
	jmp	.label_987
.label_987:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_986
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_982
.label_986:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rax, rdx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x20]
	ja	.label_985
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_982
.label_985:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_981
.label_982:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d40

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rdi, 8
	mov	rax, rdi
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d60

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, rsi
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410da0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	randint_free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e00

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_988
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_989
.label_988:
	nop	
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_990
	nop	
	movabs	rsi, OFFSET FLAT:.str_14
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_994
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_989
.label_994:
	mov	rsp, rsp
	jmp	.label_990
.label_990:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_992
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	jae	.label_991
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	jmp	.label_993
.label_991:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_993:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_995
.label_992:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_995:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_989:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410fc0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	eax, 0x1038
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	xmalloc
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411040

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	movabs	rax, OFFSET FLAT:.str.3_4
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	jg	.label_998
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_1005
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1010
.label_1005:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x30], rax
.label_1010:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jge	.label_1000
	mov	qword ptr [rbp - 0x48], 0
.label_1000:
	mov	edi, dword ptr [rbp - 0xb8]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_998:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jae	.label_1007
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_1009
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_996
.label_1009:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_996:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rbp - 0xd0]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x68], rax
	call	gettimeofday
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	add	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x68]
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
.label_1007:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_1013
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_1006
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_1002
.label_1006:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_1002:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xb0], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xb0]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
.label_1013:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jae	.label_1004
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_1008
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1001
.label_1008:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
.label_1001:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	call	getppid
	lea	rcx, [rbp - 0x74]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_1004:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_1011
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_1012
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_997
.label_1012:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_997:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_1011:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_999
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_1003
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	jmp	.label_1014
.label_1003:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
.label_1014:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
.label_999:
	add	rsp, 0xf0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4114f0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411520
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411540

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_1015
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	call	readsource
	jmp	.label_1016
.label_1015:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	readisaac
.label_1016:
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115c0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1021:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1019
	jmp	.label_1017
.label_1019:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_1020
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1018
.label_1020:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1018
.label_1018:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_1021
.label_1017:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4116d0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
.label_1024:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1028
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rcx
	mov	rbp, rbp
	jmp	.label_1027
.label_1028:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	nop	
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_1022
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1025:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_1026
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rbp, rbp
	call	isaac_refill
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x800
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1023
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_1027
.label_1023:
	lea	rdi, [rdi]
	jmp	.label_1025
.label_1026:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1022:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x820
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1024
.label_1027:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118d0

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1029
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1030
.label_1029:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1030
.label_1030:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411960

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1031
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0x24], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1033
	movabs	rdi, OFFSET FLAT:.str.1_12
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1032
.label_1033:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_6
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_1032:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_1031:
	mov	rsp, rsp
	call	abort
	.section	.text
	.align	32
	#Procedure 0x411a20

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x50], rax
.label_1034:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 0xc
	xor	rax, rcx
	nop	
	xor	rax, 0
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0x48]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 0x400
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1034
	jmp	.label_1035
.label_1035:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	mov	rbp, rbp
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x30]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 0x20
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_1035
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412150

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4121c0

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], -1
	nop	
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4121f0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	movabs	rax, 0x98f5704f6c44c0ab
	mov	rsp, rsp
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	nop	
	movabs	rsi, 0x82f053db8355e0ce
	mov	rbp, rbp
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r9
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_1039:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0x100
	mov	rbp, rbp
	jge	.label_1038
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1039
.label_1038:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 0
.label_1036:
	cmp	dword ptr [rbp - 0x44], 0x100
	mov	rsp, rsp
	jge	.label_1037
	movsxd	rax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_1036
.label_1037:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ab0

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
	.align	32
	#Procedure 0x412af0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b30

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
	jge	.label_1044
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1042
.label_1044:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1041
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
	je	.label_1040
.label_1041:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1040
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1040:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1043
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
.label_1043:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1042:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c50

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
	je	.label_1068
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
.label_1068:
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
	je	.label_1070
	nop	
	jmp	.label_1046
.label_1046:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1048
	jmp	.label_1057
.label_1070:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1058
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
	jmp	.label_1067
.label_1058:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1067:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1049
.label_1048:
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
	ja	.label_1066
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
	jmp	.label_1074
.label_1066:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1074:
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
	jmp	.label_1049
.label_1057:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1052
	nop	
	jmp	.label_1045
.label_1045:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1047
	jmp	.label_1055
.label_1055:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1052
	nop	
	jmp	.label_1064
.label_1064:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1047
	nop	
	jmp	.label_1069
.label_1069:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1052
	lea	rsi, [rsi]
	jmp	.label_1073
.label_1073:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1052
	lea	rsi, [rsi]
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1047
	mov	rsp, rsp
	jmp	.label_1061
.label_1061:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1052
	jmp	.label_1050
.label_1050:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1047
	lea	rsi, [rsi]
	jmp	.label_1075
.label_1075:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1052
	jmp	.label_1056
.label_1056:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1047
	mov	rsp, rsp
	jmp	.label_1060
.label_1060:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1052
	lea	rsi, [rsi]
	jmp	.label_1072
.label_1072:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1052
	nop	
	jmp	.label_1053
.label_1053:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1071
	lea	rdi, [rdi]
	jmp	.label_1047
.label_1047:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1054
.label_1052:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1059
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
	jmp	.label_1065
.label_1059:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1065:
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
	jmp	.label_1054
.label_1071:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1062
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
	jmp	.label_1063
.label_1062:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1063:
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
.label_1054:
	jmp	.label_1049
.label_1049:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4132b0

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
	.align	32
	#Procedure 0x413300

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
	jg	.label_1076
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
	jle	.label_1083
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1078
.label_1083:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1080
.label_1078:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1084
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1084:
	mov	rbp, rbp
	jmp	.label_1080
.label_1080:
	jmp	.label_1081
.label_1076:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1081:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1077
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1077
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1082
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
	jne	.label_1079
.label_1082:
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
.label_1079:
	jmp	.label_1077
.label_1077:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x413480

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
	ja	.label_1085
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1086
.label_1085:
	lea	rsi, [rsi]
	jmp	.label_1086
.label_1086:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134e0
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
	jb	.label_1088
	jmp	.label_1090
.label_1090:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1088
	jmp	.label_1089
.label_1089:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1091
	jmp	.label_1088
.label_1088:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1092
.label_1091:
	mov	byte ptr [rbp - 1], 0
.label_1092:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413550
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
	jb	.label_1093
	jmp	.label_1096
.label_1096:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1094
	jmp	.label_1093
.label_1093:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1095
.label_1094:
	mov	byte ptr [rbp - 1], 0
.label_1095:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4135a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1097
	jmp	.label_1098
.label_1098:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1099
.label_1097:
	mov	byte ptr [rbp - 1], 0
.label_1099:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4135d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1100
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1100:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413600
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
	jb	.label_1101
	jmp	.label_1103
.label_1103:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1104
	jmp	.label_1101
.label_1101:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1102
.label_1104:
	mov	byte ptr [rbp - 1], 0
.label_1102:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413650
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1105
	jmp	.label_1107
.label_1107:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1106
.label_1105:
	mov	byte ptr [rbp - 1], 0
.label_1106:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413690
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1108
	jmp	.label_1110
.label_1110:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1109
.label_1108:
	mov	byte ptr [rbp - 1], 0
.label_1109:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136d0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1111
	jmp	.label_1113
.label_1113:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1112
.label_1111:
	mov	byte ptr [rbp - 1], 0
.label_1112:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413710
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1114
	jmp	.label_1116
.label_1116:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1115
.label_1114:
	mov	byte ptr [rbp - 1], 0
.label_1115:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413750
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
	jb	.label_1117
	jmp	.label_1120
.label_1120:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1117
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1117
	jmp	.label_1119
.label_1119:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1122
	jmp	.label_1117
.label_1117:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1118
.label_1122:
	mov	byte ptr [rbp - 1], 0
.label_1118:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4137d0
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
	jb	.label_1123
	jmp	.label_1126
.label_1126:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1125
	jmp	.label_1123
.label_1123:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1124
.label_1125:
	mov	byte ptr [rbp - 1], 0
.label_1124:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413820
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1127
	jmp	.label_1129
.label_1129:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1128
.label_1127:
	mov	byte ptr [rbp - 1], 0
.label_1128:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413860
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
	jb	.label_1130
	jmp	.label_1133
.label_1133:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1130
	jmp	.label_1131
.label_1131:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1132
	jmp	.label_1130
.label_1130:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1134
.label_1132:
	mov	byte ptr [rbp - 1], 0
.label_1134:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4138d0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1135
	jmp	.label_1137
.label_1137:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1136
.label_1135:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1136:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413910
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1138
	jmp	.label_1140
.label_1140:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1139
.label_1138:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1139:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413950

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1145
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_1144
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jg	.label_1144
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_1142
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1143
.label_1142:
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1146
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1141
.label_1146:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1143
.label_1141:
	jmp	.label_1144
.label_1144:
	jmp	.label_1145
.label_1145:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_1143:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b80

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x413b90

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x413ba0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat