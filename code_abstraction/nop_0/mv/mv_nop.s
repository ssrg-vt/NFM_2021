	.section	.text
	.align	32
	#Procedure 0x402880

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	lea	rdi, [rdi]
	jmp	.label_8
.label_8:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:.str.8
	call	emit_ancillary_info
.label_9:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402a60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ab0

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_12
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_12:
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_11
	lea	rdi, [rdi]
	jmp	.label_14
.label_11:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_14:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_10
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	nop	
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.44
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.45
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 8]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1f0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.10
	movabs	rsi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rax
	call	bindtextdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	qword ptr [rbp - 0x140], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	call	atexit
	lea	rdi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x14c], eax
	call	cp_option_init
	lea	rdi, [rdi]
	call	priv_set_remove_linkdir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], eax
.label_61:
	nop	
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:long_options
	nop	
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_71
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x154], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x158], ecx
	lea	rdi, [rdi]
	je	.label_33
	lea	rsi, [rsi]
	jmp	.label_45
.label_45:
	nop	
	mov	eax, dword ptr [rbp - 0x154]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
	nop	
	je	.label_48
	jmp	.label_54
.label_54:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x154]
	nop	
	sub	eax, 0x53
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x160], eax
	je	.label_55
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x54
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], eax
	je	.label_66
	lea	rdi, [rdi]
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x154]
	mov	rbp, rbp
	sub	eax, 0x5a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x168], eax
	mov	rbp, rbp
	je	.label_75
	jmp	.label_19
.label_19:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x62
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x16c], eax
	mov	rsp, rsp
	je	.label_49
	lea	rsi, [rsi]
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0x170], eax
	lea	rsi, [rsi]
	je	.label_28
	mov	rbp, rbp
	jmp	.label_31
.label_31:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x174], eax
	mov	rsp, rsp
	je	.label_35
	lea	rdi, [rdi]
	jmp	.label_63
.label_63:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x178], eax
	mov	rbp, rbp
	je	.label_44
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x17c], eax
	nop	
	je	.label_67
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x154]
	mov	rbp, rbp
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x180], eax
	je	.label_59
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x76
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], eax
	mov	rsp, rsp
	je	.label_70
	jmp	.label_76
.label_76:
	mov	eax, dword ptr [rbp - 0x154]
	mov	rsp, rsp
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x188], eax
	je	.label_16
	jmp	.label_20
.label_49:
	nop	
	mov	byte ptr [rbp - 0x16], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_23
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_23:
	jmp	.label_17
.label_28:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], 1
	mov	rsp, rsp
	jmp	.label_17
.label_35:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], 3
	mov	rsp, rsp
	jmp	.label_17
.label_44:
	mov	dword ptr [rbp - 0x70], 2
	mov	rsp, rsp
	jmp	.label_17
.label_16:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	jmp	.label_17
.label_67:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_46
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_46:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x128]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_53
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_53:
	mov	eax, dword ptr [rbp - 0x110]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_30
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_30:
	lea	rsi, [rsi]
	jmp	.label_56
.label_56:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	jmp	.label_17
.label_66:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 1
	mov	rsp, rsp
	jmp	.label_17
.label_59:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4b], 1
	lea	rsi, [rsi]
	jmp	.label_17
.label_70:
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_17
.label_55:
	mov	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_17
.label_75:
	test	byte ptr [rbp - 0x91], 1
	mov	rbp, rbp
	je	.label_21
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x53], 0
	mov	byte ptr [rbp - 0x57], 1
.label_21:
	jmp	.label_17
.label_48:
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_33:
	movabs	rsi, OFFSET FLAT:.str.8
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:.str.18_0
	movabs	rax, OFFSET FLAT:.str.19
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	rsp, rsp
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	al, 0
	call	version_etc
	nop	
	xor	edi, edi
	call	exit
.label_20:
	mov	edi, 1
	call	usage
.label_17:
	jmp	.label_61
.label_71:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	setne	sil
	xor	sil, 0xff
	lea	rsi, [rsi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edi, sil
	cmp	eax, edi
	lea	rdi, [rdi]
	jg	.label_38
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x88], 0
	jg	.label_25
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_39
.label_25:
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x1b4], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1b0]
	nop	
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_39:
	mov	edi, 1
	call	usage
.label_38:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x81], 1
	je	.label_68
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_73
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_73:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_22
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x1c4], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_22:
	lea	rdi, [rdi]
	jmp	.label_37
.label_68:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_34
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jg	.label_52
	jmp	.label_60
.label_52:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0x1c9
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	mov	rsp, rsp
	call	__assert_fail
.label_60:
	cmp	dword ptr [rbp - 0x88], 2
	jne	.label_72
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 8]
	mov	edi, eax
	mov	edx, eax
	lea	rsi, [rsi]
	call	renameatu
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_24
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c8], ecx
	lea	rsi, [rsi]
	jmp	.label_27
.label_24:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
.label_72:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_36
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 1
	lea	rdi, [rdi]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rdx + rcx*8]
	call	target_directory_operand
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_50
	lea	rsi, [rsi]
	jmp	.label_36
.label_50:
	mov	dword ptr [rbp - 0x44], 0xffffffff
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	eax, -1
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_32
.label_36:
	mov	eax, 2
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_69
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sub	ecx, 1
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_69:
	jmp	.label_32
.label_32:
	mov	rsp, rsp
	jmp	.label_34
.label_34:
	lea	rdi, [rdi]
	jmp	.label_37
.label_37:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_40
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4b], 0
.label_40:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x16], 1
	je	.label_43
	nop	
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_43
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_43:
	nop	
	test	byte ptr [rbp - 0x16], 1
	je	.label_62
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xget_version
	mov	dword ptr [rbp - 0x1d4], eax
	lea	rdi, [rdi]
	jmp	.label_18
.label_62:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1d4], eax
	mov	rsp, rsp
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	set_simple_backup_suffix
	nop	
	call	hash_init
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_58
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jg	.label_41
	mov	rsp, rsp
	lea	rdi, [rbp - 0x78]
	mov	rbp, rbp
	call	dest_info_init
.label_41:
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], 0
.label_64:
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_29
	mov	edx, 1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x78]
	mov	eax, dword ptr [rbp - 0x12c]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sete	sil
	and	sil, 1
	nop	
	mov	byte ptr [rbp - 0x47], sil
	movsxd	rdi, dword ptr [rbp - 0x12c]
	nop	
	mov	r8, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + rdi*8]
	mov	rsi, qword ptr [rbp - 0x80]
	call	movefile
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	r9d, al
	lea	rdi, [rdi]
	and	r9d, edx
	lea	rdi, [rdi]
	cmp	r9d, 0
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x12c], eax
	lea	rsi, [rsi]
	jmp	.label_64
.label_29:
	jmp	.label_42
.label_58:
	xor	edx, edx
	lea	rcx, [rbp - 0x78]
	mov	byte ptr [rbp - 0x47], 1
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	movefile
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_42:
	mov	rbp, rbp
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x1f0
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403870

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	call	cp_options_default
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x14], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], 2
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x16], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x17], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], 4
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x19], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x1c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1d], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x22], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1e], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x1f], 1
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x25], cl
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x21], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x29], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x24], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x26], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x27], 1
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x2a], 1
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0xc], 2
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x2c], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2b], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	call	isatty
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	nop	
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x2f], cl
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x30], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x2d], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x2e], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x40], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x48], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a40

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xc0
	mov	rsp, rsp
	lea	rsi, [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_78
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsp, rsp
	jmp	.label_79
.label_78:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xa4], ecx
.label_79:
	mov	eax, dword ptr [rbp - 0xa4]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0xa5], dl
	jne	.label_80
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x80]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	nop	
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], cl
.label_80:
	nop	
	mov	al, byte ptr [rbp - 0xa5]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	cmp	dword ptr [rbp - 0x9c], 0
	je	.label_77
	cmp	dword ptr [rbp - 0x9c], 2
	nop	
	je	.label_77
	nop	
	movabs	rdi, OFFSET FLAT:.str.14
	mov	esi, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0xac], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	call	quotearg_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xac]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_77:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x9d]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b90

	.globl movefile
	.type movefile, @function
movefile:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	lea	rsi, [rsi]
	je	.label_81
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	strip_trailing_slashes
	nop	
	mov	byte ptr [rbp - 0x39], al
.label_81:
	test	byte ptr [rbp - 0x11], 1
	je	.label_83
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	last_component
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	file_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	strip_trailing_slashes
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3a], al
	call	do_move
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_82
.label_83:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	do_move
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_82:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ca0

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	xor	eax, eax
	mov	rsp, rsp
	lea	r8, [rbp - 0x19]
	lea	r9, [rbp - 0x1a]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, eax
	call	copy
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b], al
	test	byte ptr [rbp - 0x1b], 1
	je	.label_86
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_93
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1b], 0
	lea	rdi, [rdi]
	jmp	.label_88
.label_93:
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	je	.label_84
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_92
.label_84:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_92:
	jmp	.label_88
.label_88:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_90
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	call	rm_option_init
	lea	rsi, [rbp - 0x48]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x2e]
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x2e], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	call	rm
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	cmp	dword ptr [rbp - 0x4c], 2
	je	.label_89
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_89
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_87
.label_89:
	mov	rbp, rbp
	jmp	.label_85
.label_87:
	movabs	rdi, OFFSET FLAT:.str.59
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0xef
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.do_move
	call	__assert_fail
.label_85:
	cmp	dword ptr [rbp - 0x4c], 4
	lea	rsi, [rsi]
	jne	.label_91
	mov	byte ptr [rbp - 0x1b], 0
.label_91:
	jmp	.label_90
.label_90:
	jmp	.label_86
.label_86:
	mov	al, byte ptr [rbp - 0x1b]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e30

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:rm_option_init.dev_ino_buf
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdi], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0xa], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 9], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 5
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x19], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1a], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 0x1b], 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	get_root_dev_ino
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_94
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xc], esi
	nop	
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_94:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 0
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f50

	.globl rm
	.type rm, @function
rm:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 2
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi], 0
	je	.label_99
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], 0x218
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	test	byte ptr [rax + 8], 1
	je	.label_108
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	or	eax, 0x40
	mov	dword ptr [rbp - 0x18], eax
.label_108:
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xfts_open
	mov	qword ptr [rbp - 0x20], rax
.label_102:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_98
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_101
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	dword ptr [rbp - 0x14], 4
.label_101:
	jmp	.label_104
.label_98:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	rm_fts
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	mov	rsp, rsp
	je	.label_95
	nop	
	cmp	dword ptr [rbp - 0x2c], 3
	je	.label_95
	nop	
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_96
.label_95:
	jmp	.label_105
.label_96:
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
.label_105:
	mov	rbp, rbp
	jmp	.label_103
.label_103:
	cmp	dword ptr [rbp - 0x2c], 4
	je	.label_106
	nop	
	cmp	dword ptr [rbp - 0x2c], 3
	lea	rdi, [rdi]
	jne	.label_97
	cmp	dword ptr [rbp - 0x14], 2
	mov	rbp, rbp
	jne	.label_97
.label_106:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x14], eax
.label_97:
	mov	rbp, rbp
	jmp	.label_100
.label_100:
	jmp	.label_102
.label_104:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rpl_fts_close
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_107
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 4
.label_107:
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rdx + 0x70]
	nop	
	dec	eax
	mov	edx, eax
	sub	eax, 0xc
	mov	qword ptr [rbp - 0xd8], rdx
	mov	dword ptr [rbp - 0xdc], eax
	ja	.label_112
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_111]]
	mov	rsp, rsp
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	edx, 0x30900
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_134
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_136
.label_134:
	mov	edi, dword ptr [rbp - 0x28]
	nop	
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_135
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_136
.label_135:
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	readdir_ignoring_dot_and_dotdot
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	closedir
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	je	.label_133
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_136
.label_133:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x24], 0
	cmove	eax, ecx
	cmp	eax, 0
	nop	
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_136:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c80

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
.label_137:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_138
	lea	rdi, [rdi]
	jmp	.label_139
.label_138:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_137
.label_139:
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d00

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
	.align	32
	#Procedure 0x404d50

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
	jne	.label_140
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
	mov	byte ptr [rbp - 0x11], sil
	mov	rsp, rsp
	cmp	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x12], al
	lea	rsi, [rsi]
	je	.label_141
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12], cl
.label_141:
	mov	al, byte ptr [rbp - 0x12]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	jmp	.label_142
.label_140:
	mov	byte ptr [rbp - 1], 0
.label_142:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e10

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_146
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
.label_146:
	lea	rax, [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	cache_stat_init
	xor	ecx, ecx
	mov	edx, 4
	mov	sil, byte ptr [rbp - 0x19]
	test	sil, 1
	nop	
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], 0
	mov	byte ptr [rbp - 0xf1], 0
	cmp	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x108], rax
	je	.label_168
	mov	edi, dword ptr [rbp - 0x3c]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	call	is_empty_dir
	lea	rdi, [rdi]
	mov	edi, 3
	mov	ecx, 4
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0xf1], al
	mov	al, byte ptr [rbp - 0xf1]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	cmovne	edi, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rsi], edi
.label_168:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	je	.label_153
	mov	dword ptr [rbp - 4], 3
	jmp	.label_152
.label_153:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 5
	jne	.label_160
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 2
	lea	rsi, [rsi]
	jmp	.label_152
.label_160:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf8], 0
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	test	byte ptr [rax], 1
	nop	
	jne	.label_148
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	je	.label_144
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	test	byte ptr [rax + 0x19], 1
	je	.label_148
.label_144:
	cmp	dword ptr [rbp - 0xec], 0xa
	lea	rsi, [rsi]
	je	.label_148
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe8]
	call	write_protected_non_symlink
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf0], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], edi
.label_148:
	cmp	dword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	jne	.label_170
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	jne	.label_171
.label_170:
	mov	rbp, rbp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_147
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xec], 0
	jne	.label_147
	mov	rbp, rbp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_163
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_166
	mov	dword ptr [rbp - 0xec], 0xa
	jmp	.label_143
.label_166:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_169
	mov	dword ptr [rbp - 0xec], 4
.label_169:
	jmp	.label_143
.label_143:
	jmp	.label_159
.label_163:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf8], ecx
.label_159:
	mov	rbp, rbp
	jmp	.label_147
.label_147:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	mov	rbp, rbp
	jg	.label_155
	mov	eax, dword ptr [rbp - 0xec]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], eax
	mov	dword ptr [rbp - 0x110], ecx
	lea	rdi, [rdi]
	je	.label_167
	jmp	.label_150
.label_150:
	mov	eax, dword ptr [rbp - 0x10c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x114], eax
	jne	.label_151
	jmp	.label_156
.label_156:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	je	.label_158
	nop	
	mov	dword ptr [rbp - 4], 2
	jmp	.label_152
.label_158:
	nop	
	jmp	.label_151
.label_167:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	test	byte ptr [rax + 9], 1
	mov	rsp, rsp
	jne	.label_145
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0xa], 1
	je	.label_173
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	lea	rsi, [rsi]
	jne	.label_145
.label_173:
	nop	
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	mov	dword ptr [rbp - 0xf8], 0x15
.label_145:
	jmp	.label_151
.label_151:
	mov	rbp, rbp
	jmp	.label_155
.label_155:
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	qword ptr [rbp - 0x100], rax
	cmp	dword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	jge	.label_162
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], esi
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	rcx, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 4
	jmp	.label_152
.label_162:
	cmp	dword ptr [rbp - 0xec], 4
	mov	rbp, rbp
	jne	.label_154
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_154
	mov	rsp, rsp
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_154
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rdi
	lea	rsi, [rsi]
	je	.label_165
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_172
.label_165:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.20_0
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rax
.label_172:
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x12c], eax
	mov	rsp, rsp
	jmp	.label_164
.label_154:
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	cache_fstatat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_149
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x130], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x130]
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 4
	jmp	.label_152
.label_149:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rdi
	je	.label_174
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.21_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
	lea	rsi, [rsi]
	jmp	.label_157
.label_174:
	nop	
	movabs	rdi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
.label_157:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x150], rdx
	mov	rsp, rsp
	call	file_type
	mov	r8, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x138]
	nop	
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x154], eax
.label_164:
	lea	rsi, [rsi]
	call	yesno
	mov	rsp, rsp
	test	al, 1
	jne	.label_161
	mov	dword ptr [rbp - 4], 3
	mov	rbp, rbp
	jmp	.label_152
.label_161:
	jmp	.label_171
.label_171:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 2
.label_152:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405490

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, r8d
	mov	dword ptr [rbp - 0x28], ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 0x2c]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x30]
	mov	edx, dword ptr [rbp - 0x28]
	call	unlinkat
	cmp	eax, 0
	jne	.label_183
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1a], 1
	je	.label_187
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	je	.label_176
	nop	
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	jmp	.label_179
.label_176:
	movabs	rdi, OFFSET FLAT:.str.25_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
.label_179:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0xcc], eax
.label_187:
	mov	dword ptr [rbp - 4], 2
	mov	rsp, rsp
	jmp	.label_178
.label_183:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x1e
	jne	.label_182
	mov	rsp, rsp
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	lstatat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_180
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	je	.label_186
.label_180:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x1e
.label_186:
	jmp	.label_182
.label_182:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rdi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	call	ignorable_missing
	test	al, 1
	mov	rbp, rbp
	jne	.label_184
	lea	rsi, [rsi]
	jmp	.label_185
.label_184:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 2
	jmp	.label_178
.label_185:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_177
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x27
	nop	
	je	.label_175
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x15
	je	.label_175
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_175
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_177
.label_175:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 1
	je	.label_181
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0xd
	jne	.label_177
.label_181:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_177:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	mov	rdi, qword ptr [rbp - 0x18]
	call	mark_ancestor_dirs
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
.label_178:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_188:
	mov	rdi, qword ptr [rbp - 8]
	call	readdir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_190
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
	jne	.label_189
.label_190:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_189:
	lea	rdi, [rdi]
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x4057f0

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
	.align	32
	#Procedure 0x405820

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	can_write_any_file
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_196
	jmp	.label_192
.label_196:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_191
.label_192:
	nop	
	mov	ecx, 0x100
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	cache_fstatat
	cmp	eax, 0
	nop	
	je	.label_195
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_191
.label_195:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_194
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_191
.label_194:
	mov	edx, 2
	mov	rsp, rsp
	mov	ecx, 0x200
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	faccessat
	cmp	eax, 0
	nop	
	jne	.label_193
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_191
.label_193:
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
.label_191:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405930

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx + 0x30], -1
	lea	rsi, [rsi]
	jne	.label_197
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x30], -2
	mov	rbp, rbp
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
.label_197:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 0x30]
	jg	.label_199
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_198
.label_199:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
.label_198:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a10

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rdi], 1
	nop	
	mov	byte ptr [rbp - 0xd], cl
	lea	rdi, [rdi]
	je	.label_200
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	nonexistent_file_errno
	mov	byte ptr [rbp - 0xd], al
.label_200:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xd]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a70

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	eax, edi
	sub	edi, 2
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	mov	rbp, rbp
	je	.label_201
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	je	.label_201
	jmp	.label_206
.label_206:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x16
	mov	dword ptr [rbp - 0x18], eax
	je	.label_201
	mov	rsp, rsp
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_205
	jmp	.label_201
.label_201:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_203
.label_205:
	mov	byte ptr [rbp - 1], 0
.label_203:
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b10

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x70
	nop	
	mov	al, cl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x28]
	test	byte ptr [rsi + 0x25], 1
	lea	rsi, [rsi]
	je	.label_220
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x23], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	je	.label_219
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x39], cl
.label_219:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x29], 1
	mov	byte ptr [rbp - 0x3a], dl
	jne	.label_222
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x3a], cl
.label_222:
	mov	al, byte ptr [rbp - 0x3a]
	lea	rsi, [rbp - 0x38]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2a], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	lgetfilecon
	lea	rdi, [rdi]
	xor	ecx, ecx
	cmp	ecx, eax
	lea	rsi, [rsi]
	jg	.label_210
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	setfscreatecon
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_213
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_221
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2a], 1
	mov	rbp, rbp
	je	.label_211
	call	__errno_location
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_211
.label_221:
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_211:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x26], 1
	mov	rsp, rsp
	je	.label_217
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	freecon
	mov	byte ptr [rbp - 1], 0
	jmp	.label_208
.label_217:
	jmp	.label_213
.label_213:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	freecon
	jmp	.label_214
.label_210:
	nop	
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	jne	.label_215
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x2a], 1
	nop	
	je	.label_216
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	errno_unsupported
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_216
.label_215:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_216:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0x26], 1
	lea	rdi, [rdi]
	je	.label_218
	nop	
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_208
.label_218:
	jmp	.label_214
.label_214:
	jmp	.label_212
.label_220:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	je	.label_209
	nop	
	test	byte ptr [rbp - 0x1d], 1
	nop	
	je	.label_207
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	defaultcon
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_207
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable_ctx_err
	nop	
	test	al, 1
	nop	
	jne	.label_207
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_207:
	jmp	.label_209
.label_209:
	nop	
	jmp	.label_212
.label_212:
	mov	byte ptr [rbp - 1], 1
.label_208:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e50

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], al
	je	.label_223
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
.label_223:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	call	__errno_location
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ed0

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_224
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_224:
	mov	al, byte ptr [rbp - 5]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f10

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	al, dl
	mov	r8b, sil
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	and	r8b, 1
	mov	byte ptr [rbp - 0x11], r8b
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x12], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x23], r9b
	mov	rbp, rbp
	je	.label_228
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x26]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x23], cl
.label_228:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x23]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x24], dl
	mov	rsp, rsp
	jne	.label_225
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x24], cl
.label_225:
	mov	al, byte ptr [rbp - 0x24]
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x12]
	mov	cl, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	mov	rsp, rsp
	and	cl, 1
	movzx	esi, al
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rdi, [rdi]
	call	restorecon
	test	al, 1
	jne	.label_229
	test	byte ptr [rbp - 0x21], 1
	jne	.label_230
	test	byte ptr [rbp - 0x22], 1
	lea	rsi, [rsi]
	je	.label_226
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_226
.label_230:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_226:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_227
.label_229:
	nop	
	mov	byte ptr [rbp - 1], 1
.label_227:
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060a0

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	al, dl
	mov	rbp, rbp
	mov	cl, sil
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	lea	rsi, [rsi]
	call	__errno_location
	xor	edx, edx
	mov	rbp, rbp
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406100

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	eax, 0x3d
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	nop	
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	rbp, rbp
	mov	r8, r9
	lea	rdi, [rdi]
	call	hash_initialize
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406180
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:triple_hash_no_name
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	nop	
	call	hash_initialize
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061e0

	.globl copy
	.type copy, @function
copy:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	al, dl
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rdi, qword ptr [rbp - 0x30]
	call	valid_options
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_232
	jmp	.label_231
.label_232:
	jmp	.label_233
.label_231:
	movabs	rdi, OFFSET FLAT:.str.4_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb9f
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.copy
	call	__assert_fail
.label_233:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 1
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x41]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [top_level_src_name]],  rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [top_level_dst_name]],  rsi
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	ebx, r8b
	mov	qword ptr [rbp - 0x50], rdx
	mov	edx, ebx
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 1
	mov	r14, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r11
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	call	copy_internal
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406310

	.globl valid_options
	.type valid_options, @function
valid_options:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_237
	lea	rdi, [rdi]
	jmp	.label_245
.label_237:
	movabs	rdi, OFFSET FLAT:.str.6_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_245:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_246
	nop	
	jmp	.label_244
.label_246:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	edx, 0xb87
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_244:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	mov	rbp, rbp
	je	.label_242
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	mov	rbp, rbp
	je	.label_242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_234
.label_242:
	jmp	.label_240
.label_234:
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_1
	nop	
	mov	edx, 0xb88
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	mov	rsp, rsp
	call	__assert_fail
.label_240:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_238
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0x38], 1
	je	.label_238
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	mov	rsp, rsp
	jne	.label_247
.label_238:
	jmp	.label_235
.label_247:
	movabs	rdi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb89
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_235:
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	nop	
	jne	.label_236
.label_248:
	lea	rsi, [rsi]
	jmp	.label_241
.label_236:
	movabs	rdi, OFFSET FLAT:.str.10_1
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	mov	edx, 0xb8a
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_241:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	nop	
	jne	.label_239
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xc], 2
	mov	rsp, rsp
	jne	.label_243
.label_239:
	jmp	.label_249
.label_243:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_1
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_249:
	mov	al, 1
	nop	
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	sub	rsp, 0x7b0
	mov	al, dl
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14b, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], r9
	and	r14b, 1
	mov	byte ptr [rbp - 0x49], r14b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rbx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x199], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], 0
	mov	byte ptr [rbp - 0x1b2], 0
	mov	byte ptr [rbp - 0x1b3], 0
	mov	byte ptr [rbp - 0x1b4], 0
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	mov	byte ptr [rcx], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b8], edx
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	je	.label_401
	nop	
	cmp	dword ptr [rbp - 0x1b8], 0
	nop	
	jge	.label_419
	mov	rbp, rbp
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	call	renameatu
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_429
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x4d8], ecx
	jmp	.label_433
.label_429:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4d8], eax
	jmp	.label_433
.label_433:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4d8]
	mov	dword ptr [rbp - 0x1b8], eax
.label_419:
	cmp	dword ptr [rbp - 0x1b8], 0
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_439
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x68]
	and	al, 1
	mov	byte ptr [rcx], al
.label_439:
	jmp	.label_401
.label_401:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_442
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	mov	rsp, rsp
	jne	.label_270
	nop	
	jmp	.label_449
.label_442:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_449
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	lea	rsi, [rsi]
	je	.label_270
.label_449:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b8], 0
	nop	
	jne	.label_455
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_460
.label_455:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x4e0], rax
.label_460:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4e0]
	nop	
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax + 4], 2
	jne	.label_463
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	__lstat
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_469
.label_463:
	lea	rsi, [rbp - 0xf8]
	nop	
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	call	stat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e4], eax
.label_469:
	mov	eax, dword ptr [rbp - 0x4e4]
	cmp	eax, 0
	je	.label_474
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e8], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x4f0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x4f0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	jmp	.label_252
.label_474:
	mov	eax, dword ptr [rbp - 0xe0]
	nop	
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_255
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2a], 1
	jne	.label_255
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x19], 1
	nop	
	jne	.label_267
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.13_1
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
	nop	
	jmp	.label_269
.label_267:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
.label_269:
	mov	rax, qword ptr [rbp - 0x4f8]
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x500], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x504], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x504]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_255:
	jmp	.label_270
.label_270:
	test	byte ptr [rbp - 0x49], 1
	je	.label_284
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_284
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18c]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_292
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	jne	.label_292
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	seen_file
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_299
	lea	rsi, [rsi]
	jmp	.label_292
.label_299:
	movabs	rdi, OFFSET FLAT:.str.15_2
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x510], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x514], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x514]
	nop	
	mov	rdx, qword ptr [rbp - 0x510]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_252
.label_292:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xf8]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	record_file
.label_284:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	should_dereference
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_265
	cmp	dword ptr [rbp - 0x1b8], 0x11
	nop	
	jne	.label_320
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 8], 2
	je	.label_322
.label_320:
	nop	
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_323
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x515], al
	je	.label_333
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x4000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x515], al
	lea	rsi, [rsi]
	je	.label_333
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x515], al
	je	.label_333
.label_323:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x515], al
	mov	rbp, rbp
	jne	.label_333
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_333
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x17], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x515], al
	mov	rbp, rbp
	jne	.label_333
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x515], al
	jne	.label_333
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	cl, byte ptr [rax + 0x15]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x515], cl
.label_333:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x515]
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0x188]
	nop	
	xor	ecx, ecx
	mov	esi, 0x100
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x1c2], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1c2]
	test	al, 1
	mov	rbp, rbp
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x1c8], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1c8]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_413
	mov	al, byte ptr [rbp - 0x1c2]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b4], al
	mov	dword ptr [rbp - 0x1b8], 0x11
	mov	rsp, rsp
	jmp	.label_290
.label_413:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x16], 1
	lea	rdi, [rdi]
	je	.label_373
	nop	
	jmp	.label_303
.label_373:
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_377
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x51c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x528], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x51c]
	mov	rdx, qword ptr [rbp - 0x528]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_377:
	mov	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	jmp	.label_303
.label_303:
	lea	rsi, [rsi]
	jmp	.label_290
.label_290:
	mov	rbp, rbp
	jmp	.label_322
.label_322:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_307
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1c9], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_390
	lea	rsi, [rbp - 0xf8]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x188]
	lea	r9, [rbp - 0x1c9]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	r8, qword ptr [rbp - 0x48]
	call	same_file_ok
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_390
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x530], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x538], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x530]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x538]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_390:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x2d], 1
	je	.label_336
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_336
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1f], 1
	nop	
	mov	byte ptr [rbp - 0x539], cl
	je	.label_410
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x53a], cl
	je	.label_414
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xf8]
	sete	cl
	mov	byte ptr [rbp - 0x53a], cl
.label_414:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x53a]
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x539], al
.label_410:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x539]
	nop	
	lea	rsi, [rbp - 0x188]
	mov	rsp, rsp
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, 1
	test	al, 1
	nop	
	cmovne	ecx, edi
	nop	
	mov	dword ptr [rbp - 0x1d0], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1d0]
	nop	
	call	utimecmp
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ecx, eax
	jg	.label_431
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_434
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_434:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	nop	
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1a8], 0
	nop	
	je	.label_451
	nop	
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	nop	
	and	cl, 1
	nop	
	and	r8b, 1
	nop	
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_450
	jmp	.label_256
.label_450:
	jmp	.label_451
.label_451:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	jmp	.label_252
.label_431:
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_458
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	abandon_move
	nop	
	test	al, 1
	jne	.label_462
	nop	
	jmp	.label_464
.label_462:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	je	.label_465
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
.label_465:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	jmp	.label_252
.label_464:
	jmp	.label_468
.label_458:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rdi, [rdi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_391
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	mov	rsp, rsp
	je	.label_415
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	mov	rsp, rsp
	jne	.label_391
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	overwrite_ok
	mov	rsp, rsp
	test	al, 1
	jne	.label_391
.label_415:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_252
.label_391:
	lea	rsi, [rsi]
	jmp	.label_468
.label_468:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1c9], 1
	lea	rsi, [rsi]
	je	.label_250
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_252
.label_250:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_254
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	je	.label_264
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax], 0
	je	.label_264
	lea	rdi, [rdi]
	jmp	.label_268
.label_264:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.17_2
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x548], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x550], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x548]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x550]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_268:
	jmp	.label_259
.label_259:
	nop	
	test	byte ptr [rbp - 0x49], 1
	je	.label_282
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_282
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x188]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	seen_file
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_295
	lea	rdi, [rdi]
	jmp	.label_282
.label_295:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_1
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x558], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x560], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x558]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x560]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_282:
	jmp	.label_254
.label_254:
	mov	eax, dword ptr [rbp - 0x18c]
	nop	
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_305
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_311
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_317
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_317
	jmp	.label_321
.label_317:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.19_1
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x568], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x56c], edi
	mov	esi, dword ptr [rbp - 0x56c]
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	jmp	.label_252
.label_321:
	lea	rsi, [rsi]
	jmp	.label_311
.label_311:
	lea	rsi, [rsi]
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_338
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xe0]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_339
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_339
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_339
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.20_1
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x578], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x580], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x578]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x580]
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_252
.label_339:
	jmp	.label_338
.label_338:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_365
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rdi, rax
	call	dot_or_dotdot_0
	test	al, 1
	jne	.label_365
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_370
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_365
.label_370:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	lea	rsi, [rsi]
	je	.label_286
	lea	rsi, [rbp - 0xf8]
	nop	
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	source_is_dst_backup
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_379
	jmp	.label_286
.label_379:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_382
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.21_1
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
	mov	rbp, rbp
	jmp	.label_385
.label_382:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22_1
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
.label_385:
	mov	rax, qword ptr [rbp - 0x588]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x590], rdx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x598], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x590]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x598]
	mov	rsp, rsp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_286:
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax]
	nop	
	call	backup_file_rename
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	nop	
	cmp	qword ptr [rbp - 0x1e8], 0
	mov	rsp, rsp
	je	.label_398
	jmp	.label_399
.label_399:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e8]
	nop	
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rdi, rax
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	mov	qword ptr [rbp - 0x1f8], rdi
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x200], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1f8]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rsp, rsp
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1b0], rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	free
	jmp	.label_417
.label_398:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_418
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23_1
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5a4], esi
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5b0], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x5a4]
	nop	
	mov	rdx, qword ptr [rbp - 0x5b0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	jmp	.label_252
.label_418:
	jmp	.label_417
.label_417:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_262
.label_365:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_301
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_301
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	mov	rsp, rsp
	jne	.label_430
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	lea	rdi, [rdi]
	je	.label_445
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jb	.label_430
.label_445:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 2
	mov	rsp, rsp
	jne	.label_301
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_301
.label_430:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	unlink
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_376
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_376
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5b4], esi
	nop	
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5c0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5b4]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_252
.label_376:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_477
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c8]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5cc], eax
.label_477:
	lea	rdi, [rdi]
	jmp	.label_301
.label_301:
	jmp	.label_262
.label_262:
	mov	rsp, rsp
	jmp	.label_307
.label_307:
	jmp	.label_265
.label_265:
	test	byte ptr [rbp - 0x49], 1
	nop	
	je	.label_266
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_266
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_266
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax], 0
	nop	
	jne	.label_266
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], 1
	test	byte ptr [rbp - 0x1b4], 1
	mov	rbp, rbp
	je	.label_272
	lea	rax, [rbp - 0x188]
	nop	
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_275
.label_272:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_279
	lea	rax, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a8], rax
	lea	rsi, [rsi]
	jmp	.label_280
.label_279:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], 0
.label_280:
	lea	rdi, [rdi]
	jmp	.label_275
.label_275:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x209], 1
	je	.label_289
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	lea	rsi, [rsi]
	jne	.label_289
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	call	seen_file
	test	al, 1
	jne	.label_274
	jmp	.label_289
.label_274:
	movabs	rdi, OFFSET FLAT:.str.26_0
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5d8], rax
	call	quotearg_n_style
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x5e0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5d8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5e0]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_289:
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_314
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_314
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_314
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	call	emit_verbose
.label_314:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_324
	mov	qword ptr [rbp - 0x1a8], 0
	nop	
	jmp	.label_326
.label_324:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	lea	rsi, [rsi]
	je	.label_331
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	nop	
	jne	.label_331
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_337
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	remember_copied
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	jmp	.label_343
.label_337:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
.label_343:
	mov	rbp, rbp
	jmp	.label_304
.label_331:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	mov	rsp, rsp
	je	.label_349
	cmp	qword ptr [rbp - 0xe8], 1
	jne	.label_349
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	src_to_dest_lookup
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_357
.label_349:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_360
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x17], 1
	lea	rsi, [rsi]
	jne	.label_360
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0xe8]
	jb	.label_362
	test	byte ptr [rbp - 0x49], 1
	je	.label_364
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	je	.label_362
.label_364:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	dword ptr [rax + 4], 4
	jne	.label_360
.label_362:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf8]
	nop	
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
.label_360:
	jmp	.label_357
.label_357:
	jmp	.label_304
.label_304:
	lea	rdi, [rdi]
	jmp	.label_326
.label_326:
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_375
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_448
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_381
	jmp	.label_383
.label_381:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27_0
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5e8], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5e8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5f0]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	jmp	.label_256
.label_383:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_394
	lea	rdi, [rdi]
	jmp	.label_405
.label_394:
	nop	
	movabs	rdi, OFFSET FLAT:.str.28_0
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x5f8], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5fc], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x5fc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5f8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x18], 1
	mov	rbp, rbp
	je	.label_400
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_400
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_400:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_252
.label_405:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	lea	rdi, [rdi]
	je	.label_403
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_409
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	nop	
	jne	.label_409
.label_403:
	lea	rsi, [rsi]
	jmp	.label_412
.label_409:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.29_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x608], rax
	nop	
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x610], rax
	nop	
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x608]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x610]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_256
.label_412:
	nop	
	jmp	.label_423
.label_423:
	jmp	.label_425
.label_425:
	jmp	.label_426
.label_448:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	lea	rsi, [rsi]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_437
	jmp	.label_256
.label_437:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_252
.label_426:
	jmp	.label_375
.label_375:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	nop	
	je	.label_438
	cmp	dword ptr [rbp - 0x1b8], 0x11
	lea	rsi, [rsi]
	jne	.label_440
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	rename
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_444
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x614], eax
	lea	rsi, [rsi]
	jmp	.label_447
.label_444:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x614], ecx
.label_447:
	nop	
	mov	eax, dword ptr [rbp - 0x614]
	mov	dword ptr [rbp - 0x1b8], eax
.label_440:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_454
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_459
	movabs	rdi, OFFSET FLAT:.str.30_0
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x618], eax
	mov	rbp, rbp
	call	emit_verbose
.label_459:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x21], 1
	lea	rsi, [rsi]
	je	.label_328
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x619], al
.label_328:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_473
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_473:
	test	byte ptr [rbp - 0x49], 1
	mov	rbp, rbp
	je	.label_428
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	nop	
	jne	.label_428
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xf8]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_428:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	jmp	.label_252
.label_454:
	cmp	dword ptr [rbp - 0x1b8], 0x16
	jne	.label_480
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x630], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x628]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x630]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_252
.label_480:
	cmp	dword ptr [rbp - 0x1b8], 0x12
	je	.label_271
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.32
	nop	
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x634], esi
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x640], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x648], rax
	call	quotearg_n_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x634]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x648]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_252
.label_271:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_297
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	rmdir
	nop	
	mov	dword ptr [rbp - 0x64c], eax
	mov	rbp, rbp
	jmp	.label_293
.label_297:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	unlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64c], eax
.label_293:
	mov	eax, dword ptr [rbp - 0x64c]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_302
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 2
	nop	
	je	.label_302
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x650], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x658], rax
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x660], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x650]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rcx, qword ptr [rbp - 0x660]
	nop	
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	forget_created
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_302:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_332
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_332
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x664], eax
	call	emit_verbose
.label_332:
	mov	byte ptr [rbp - 0x29], 1
.label_438:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_345
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x668], ecx
	lea	rdi, [rdi]
	jmp	.label_346
.label_345:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18c]
	mov	dword ptr [rbp - 0x668], eax
.label_346:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x668]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x194], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x194]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x66c], eax
	nop	
	je	.label_352
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x670], eax
	lea	rsi, [rsi]
	jmp	.label_467
.label_352:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x670], eax
.label_467:
	mov	eax, dword ptr [rbp - 0x670]
	mov	ecx, dword ptr [rbp - 0x66c]
	and	ecx, eax
	mov	dword ptr [rbp - 0x198], ecx
	mov	byte ptr [rbp - 0x1b1], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x18c]
	mov	r8b, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	r8, r9
	call	set_process_security_ctx
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_372
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_372:
	nop	
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_472
	lea	rdi, [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	is_ancestor
	test	al, 1
	jne	.label_378
	lea	rsi, [rsi]
	jmp	.label_380
.label_378:
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x678], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x67c], edi
	mov	esi, dword ptr [rbp - 0x67c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x678]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_256
.label_380:
	mov	rax, rsp
	nop	
	add	rax, -0x20
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x2b0]
	nop	
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_389
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_395
.label_389:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, dword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	lea	rdi, [rdi]
	and	eax, ecx
	lea	rsi, [rsi]
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_397
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x680], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x688], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	jmp	.label_256
.label_397:
	lea	rsi, [rbp - 0x188]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__lstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_411
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x68c], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x698], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x68c]
	mov	rdx, qword ptr [rbp - 0x698]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_256
.label_411:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	nop	
	je	.label_420
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	byte ptr [rbp - 0x199], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, 0x1c0
	lea	rdi, [rdi]
	mov	esi, eax
	call	chmod
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_432
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_5
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x69c], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6a8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x69c]
	mov	rdx, qword ptr [rbp - 0x6a8]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_256
.label_432:
	jmp	.label_420
.label_420:
	jmp	.label_443
.label_443:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	test	byte ptr [rax], 1
	jne	.label_283
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	byte ptr [rdx], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6b0], rax
.label_283:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	nop	
	je	.label_456
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	je	.label_461
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b8], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6bc], eax
	jmp	.label_470
.label_461:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	emit_verbose
.label_470:
	mov	rsp, rsp
	jmp	.label_456
.label_456:
	jmp	.label_260
.label_395:
	mov	dword ptr [rbp - 0x198], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_475
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_258
.label_475:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_251
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	mov	rbp, rbp
	je	.label_253
	lea	rdi, [rdi]
	jmp	.label_256
.label_253:
	jmp	.label_251
.label_251:
	mov	rbp, rbp
	jmp	.label_258
.label_258:
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1c], 1
	mov	rbp, rbp
	je	.label_261
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_261
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0xf8]
	je	.label_261
	jmp	.label_355
.label_261:
	lea	rcx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	r10, qword ptr [rbp - 0x60]
	and	al, 1
	nop	
	sub	rsp, 0x10
	movzx	r11d, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6c8], rdx
	lea	rdi, [rdi]
	mov	edx, r11d
	mov	rbx, qword ptr [rbp - 0x6c8]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	call	copy_dir
	add	rsp, 0x10
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b1], al
.label_355:
	jmp	.label_281
.label_472:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2c], 1
	nop	
	je	.label_421
	mov	byte ptr [rbp - 0x1b3], 1
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	je	.label_288
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	dir_name
	mov	rbp, rbp
	mov	cl, 1
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rsi, qword ptr [rbp - 0x3d8]
	mov	edx, OFFSET FLAT:.str_3
	mov	edi, edx
	mov	byte ptr [rbp - 0x6c9], cl
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x6c9]
	mov	byte ptr [rbp - 0x6ca], cl
	lea	rsi, [rsi]
	je	.label_298
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x340]
	mov	rbp, rbp
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	lea	rsi, [rsi]
	jne	.label_298
	mov	rsp, rsp
	lea	rsi, [rbp - 0x3d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x3d8]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	mov	cl, 1
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6ca], cl
	mov	rbp, rbp
	jne	.label_298
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x338]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x3c8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6cb], cl
	jne	.label_308
	mov	rax, qword ptr [rbp - 0x340]
	cmp	rax, qword ptr [rbp - 0x3d0]
	lea	rsi, [rsi]
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6cb], cl
.label_308:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x6cb]
	mov	byte ptr [rbp - 0x6ca], al
.label_298:
	mov	al, byte ptr [rbp - 0x6ca]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d9], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	free
	test	byte ptr [rbp - 0x3d9], 1
	jne	.label_325
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6d8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x6d8]
	nop	
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_256
.label_325:
	mov	rsp, rsp
	jmp	.label_288
.label_288:
	mov	rbp, rbp
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	nop	
	and	cl, 1
	nop	
	movzx	ecx, cl
	call	force_symlinkat
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3e0], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x3e0]
	jge	.label_347
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	esi, dword ptr [rbp - 0x3e0]
	nop	
	mov	dword ptr [rbp - 0x6dc], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6e8], rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6f0], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6dc]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x6f0]
	nop	
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	jmp	.label_256
.label_347:
	jmp	.label_334
.label_421:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_366
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x16], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6f1], al
	mov	rsp, rsp
	jne	.label_368
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax + 8], 3
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6f1], cl
.label_368:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x6f1]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x3e1], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x3e1]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x1c1]
	lea	rdi, [rdi]
	and	al, 1
	and	dl, 1
	mov	rbp, rbp
	movzx	r8d, al
	mov	byte ptr [rbp - 0x6f2], dl
	nop	
	mov	edx, r8d
	mov	al, byte ptr [rbp - 0x6f2]
	movzx	r8d, al
	call	create_hard_link
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_384
	lea	rsi, [rsi]
	jmp	.label_256
.label_384:
	jmp	.label_315
.label_366:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_386
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x14], 1
	nop	
	je	.label_388
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	nop	
	and	eax, 0xf000
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_388
.label_386:
	lea	rdi, [rdi]
	lea	r9, [rbp - 0x29]
	lea	rax, [rbp - 0xf8]
	mov	byte ptr [rbp - 0x1b2], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x194]
	and	ecx, 0x1ff
	mov	r8d, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	call	copy_reg
	add	rsp, 0x10
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_408
	lea	rdi, [rdi]
	jmp	.label_256
.label_408:
	mov	rsp, rsp
	jmp	.label_330
.label_388:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_396
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x198]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	nop	
	and	eax, ecx
	mov	esi, eax
	call	__mknod
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_361
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	mov	rbp, rbp
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_404
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6f8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x700], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6f8]
	mov	rdx, qword ptr [rbp - 0x700]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_256
.label_404:
	jmp	.label_361
.label_361:
	jmp	.label_329
.label_396:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_416
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_416
	nop	
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	jne	.label_392
.label_416:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	__mknod
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_436
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x704], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x710], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x704]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_256
.label_436:
	jmp	.label_327
.label_392:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_446
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	areadlink_with_size
	nop	
	mov	qword ptr [rbp - 0x3f0], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b3], 1
	cmp	qword ptr [rbp - 0x3f0], 0
	mov	rsp, rsp
	jne	.label_453
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44_0
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x714], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x720], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x714]
	mov	rdx, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_256
.label_453:
	mov	esi, 0xffffff9c
	mov	rbp, rbp
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	mov	rsp, rsp
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3f4], eax
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x3f4]
	jge	.label_257
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2d], 1
	je	.label_257
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	jne	.label_257
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	qword ptr [rbp - 0x728], rax
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x728]
	nop	
	cmp	rdi, rax
	jne	.label_257
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x158]
	call	areadlink_with_size
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x400], rax
	cmp	qword ptr [rbp - 0x400], 0
	je	.label_263
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x400]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x3f0]
	nop	
	call	strcmp
	cmp	eax, 0
	jne	.label_356
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3f4], 0
.label_356:
	mov	rdi, qword ptr [rbp - 0x400]
	call	free
.label_263:
	nop	
	jmp	.label_257
.label_257:
	mov	rdi, qword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x3f4]
	jge	.label_276
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45_0
	mov	esi, dword ptr [rbp - 0x3f4]
	mov	dword ptr [rbp - 0x72c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x738], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x72c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x738]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_256
.label_276:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x25], 1
	je	.label_294
	call	restore_default_fscreatecon_or_die
.label_294:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x1d], 1
	lea	rsi, [rsi]
	je	.label_296
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	edx, dword ptr [rbp - 0xd8]
	call	lchown
	cmp	eax, 0
	je	.label_300
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	chown_failure_ok
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_300
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x73c], esi
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x73c]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_306
	mov	rsp, rsp
	jmp	.label_256
.label_306:
	jmp	.label_313
.label_300:
	jmp	.label_313
.label_313:
	jmp	.label_296
.label_296:
	jmp	.label_316
.label_446:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x748], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x74c], edi
	mov	esi, dword ptr [rbp - 0x74c]
	mov	rdx, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_256
.label_316:
	lea	rsi, [rsi]
	jmp	.label_327
.label_327:
	jmp	.label_329
.label_329:
	jmp	.label_330
.label_330:
	mov	rsp, rsp
	jmp	.label_315
.label_315:
	mov	rbp, rbp
	jmp	.label_334
.label_334:
	mov	rbp, rbp
	jmp	.label_281
.label_281:
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	jne	.label_335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	jne	.label_335
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_335
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	nop	
	jne	.label_342
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x25], 1
	je	.label_335
.label_342:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	call	set_file_security_ctx
	nop	
	test	al, 1
	jne	.label_351
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_353
	lea	rdi, [rdi]
	jmp	.label_256
.label_353:
	mov	rbp, rbp
	jmp	.label_351
.label_351:
	jmp	.label_335
.label_335:
	test	byte ptr [rbp - 0x49], 1
	je	.label_358
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	je	.label_358
	lea	rsi, [rbp - 0x490]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_363
	mov	rbp, rbp
	lea	rdx, [rbp - 0x490]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_363:
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x17], 1
	je	.label_367
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_367
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	jmp	.label_252
.label_367:
	test	byte ptr [rbp - 0x1b2], 1
	nop	
	je	.label_374
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1b1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_252
.label_374:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1f], 1
	je	.label_406
	lea	rdi, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	get_stat_atime
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x4c0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b8], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4a8], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x4d0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	qword ptr [rbp - 0x4a0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x498], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1b3], 1
	lea	rsi, [rsi]
	je	.label_387
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	utimens_symlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x750], eax
	jmp	.label_393
.label_387:
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x750], eax
.label_393:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x750]
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_285
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x754], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x760], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x754]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x760]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_402
	mov	byte ptr [rbp - 0x11], 0
	mov	rbp, rbp
	jmp	.label_252
.label_402:
	jmp	.label_285
.label_285:
	jmp	.label_406
.label_406:
	test	byte ptr [rbp - 0x1b3], 1
	jne	.label_407
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_407
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	jne	.label_309
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x16c]
	jne	.label_309
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, dword ptr [rbp - 0x168]
	mov	rsp, rsp
	je	.label_407
.label_309:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	eax, 1
	mov	edx, 0xffffffff
	mov	rsp, rsp
	lea	rcx, [rbp - 0xf8]
	lea	r9, [rbp - 0x188]
	mov	r8d, eax
	call	set_owner
	mov	rbp, rbp
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x764], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x768], eax
	je	.label_350
	jmp	.label_422
.label_422:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x764]
	test	eax, eax
	nop	
	je	.label_424
	jmp	.label_427
.label_350:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_424:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x18c], eax
.label_427:
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x27], 1
	mov	rbp, rbp
	je	.label_435
	nop	
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, eax
	nop	
	mov	ecx, eax
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x28], 1
	lea	rdi, [rdi]
	je	.label_435
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_435:
	test	byte ptr [rbp - 0x1b3], 1
	mov	rsp, rsp
	je	.label_441
	mov	al, byte ptr [rbp - 0x1b1]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	jmp	.label_252
.label_441:
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	nop	
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_author
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_452
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_457
.label_452:
	mov	eax, 0xffffffff
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	call	copy_acl
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_466
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x24], 1
	mov	rsp, rsp
	je	.label_466
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_252
.label_466:
	jmp	.label_341
.label_457:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x2b], 1
	je	.label_471
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	call	set_acl
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_476
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_476:
	jmp	.label_340
.label_471:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x20], 1
	je	.label_478
	test	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	je	.label_478
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x769], al
	lea	rdi, [rdi]
	je	.label_479
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x769], cl
.label_479:
	mov	al, byte ptr [rbp - 0x769]
	mov	ecx, 0x1b6
	mov	edx, 0x1ff
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4d4], ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x778], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x77c], ecx
	mov	rsp, rsp
	call	cached_umask
	nop	
	mov	esi, 0xffffffff
	xor	eax, 0xffffffff
	mov	ecx, dword ptr [rbp - 0x77c]
	and	ecx, eax
	mov	rdi, qword ptr [rbp - 0x778]
	mov	edx, ecx
	mov	rbp, rbp
	call	set_acl
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_273
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	mov	rsp, rsp
	jmp	.label_252
.label_273:
	jmp	.label_277
.label_478:
	nop	
	cmp	dword ptr [rbp - 0x198], 0
	mov	rbp, rbp
	je	.label_278
	lea	rdi, [rdi]
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x198], eax
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_310
	nop	
	test	byte ptr [rbp - 0x199], 1
	nop	
	jne	.label_310
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	je	.label_287
	lea	rsi, [rbp - 0x188]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__lstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_287
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x780], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x788], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x780]
	mov	rdx, qword ptr [rbp - 0x788]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_252
.label_287:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x190], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x198]
	mov	ecx, dword ptr [rbp - 0x190]
	xor	ecx, 0xffffffff
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_318
	mov	byte ptr [rbp - 0x199], 1
.label_318:
	jmp	.label_310
.label_310:
	mov	rsp, rsp
	jmp	.label_278
.label_278:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x199], 1
	nop	
	je	.label_312
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, dword ptr [rbp - 0x198]
	mov	esi, eax
	nop	
	call	chmod
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_319
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x78c], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x798], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x78c]
	mov	rdx, qword ptr [rbp - 0x798]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	nop	
	je	.label_291
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_252
.label_291:
	nop	
	jmp	.label_319
.label_319:
	lea	rdi, [rdi]
	jmp	.label_312
.label_312:
	lea	rdi, [rdi]
	jmp	.label_277
.label_277:
	lea	rdi, [rdi]
	jmp	.label_340
.label_340:
	jmp	.label_341
.label_341:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x1b1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_252
.label_256:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	lea	rdi, [rdi]
	je	.label_344
	lea	rsi, [rsi]
	call	restore_default_fscreatecon_or_die
.label_344:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1a8], 0
	lea	rdi, [rdi]
	jne	.label_348
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	mov	rsi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	call	forget_created
.label_348:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1b0], 0
	je	.label_354
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	rename
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_359
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x79c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x79c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x7a8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_369
.label_359:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	lea	rsi, [rsi]
	je	.label_371
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x7b0], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7b8], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rdi, qword ptr [rbp - 0x7b0]
	nop	
	mov	rsi, qword ptr [rbp - 0x7b8]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x7bc], eax
.label_371:
	jmp	.label_369
.label_369:
	mov	rsp, rsp
	jmp	.label_354
.label_354:
	mov	byte ptr [rbp - 0x11], 0
.label_252:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	lea	rsp, [rbp - 0x10]
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c90

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x50
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	memset
	call	geteuid
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, cl
	and	r8b, 1
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x1b], r8b
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x1a], cl
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x34], 0xffffffff
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d00

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_481
	mov	rsp, rsp
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_482
.label_481:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x1a]
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_482:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d70

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_483
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	umask
	mov	rbp, rbp
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	mov	rsp, rsp
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_483:
	nop	
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dd0

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	mov	cl, 1
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	nop	
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi + 4], 4
	mov	byte ptr [rbp - 0xa], cl
	mov	rsp, rsp
	je	.label_484
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 4], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb], cl
	mov	rbp, rbp
	jne	.label_485
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xb], al
.label_485:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa], al
.label_484:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e50

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	xor	eax, eax
	mov	rsp, rsp
	mov	r10b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x17a], r10b
	lea	rsi, [rsi]
	jne	.label_502
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17a], dl
.label_502:
	mov	al, byte ptr [rbp - 0x17a]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x16a], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x16a], 1
	nop	
	je	.label_519
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_519
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_519:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_490
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x16a]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	lea	rsi, [rsi]
	cmp	edx, 0xa000
	jne	.label_494
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_494
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	same_name
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16b], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x16b], 1
	mov	rsp, rsp
	jne	.label_489
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_515
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_486
.label_515:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x169], 1
	lea	rsi, [rsi]
	je	.label_520
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_486
.label_520:
	nop	
	jmp	.label_489
.label_489:
	mov	al, byte ptr [rbp - 0x16b]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jmp	.label_486
.label_494:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_492
.label_490:
	test	byte ptr [rbp - 0x16a], 1
	jne	.label_498
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_486
.label_498:
	mov	rsp, rsp
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_508
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_513
.label_508:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_513:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 0xd8]
	lea	rsi, [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x17b], cl
	mov	rbp, rbp
	jne	.label_514
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17b], dl
.label_514:
	mov	al, byte ptr [rbp - 0x17b]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	lea	rdi, [rdi]
	jne	.label_487
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_487
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_487
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_487:
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_507
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x169], 1
	jne	.label_512
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x18], 1
	jne	.label_496
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	je	.label_496
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_496
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	je	.label_496
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_486
.label_496:
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_486
.label_512:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_486
.label_507:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_495
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	nop	
	je	.label_499
.label_495:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_503
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_503:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x169], 1
	mov	rsp, rsp
	je	.label_506
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jae	.label_506
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jmp	.label_486
.label_506:
	mov	rbp, rbp
	jmp	.label_499
.label_499:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	nop	
	je	.label_488
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_488
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_491
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_510
.label_491:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_510:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_504
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_486
.label_504:
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	je	.label_497
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	jne	.label_497
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_497
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x178], rax
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_521
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x179], al
	mov	rdi, qword ptr [rbp - 0x178]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0x179]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_486
.label_521:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2c], 1
	je	.label_501
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_501
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_486
.label_501:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	nop	
	jne	.label_493
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_500
	nop	
	mov	eax, 0x90
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x168]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	jmp	.label_517
.label_500:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	je	.label_522
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_486
.label_522:
	mov	rbp, rbp
	jmp	.label_517
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	je	.label_523
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_509
.label_523:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_505
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_486
.label_505:
	jmp	.label_509
.label_509:
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	cmp	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	jne	.label_511
	mov	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xd8]
	je	.label_518
.label_511:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_486
.label_518:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	mov	rbp, rbp
	je	.label_516
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	sete	dl
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_516:
	jmp	.label_493
.label_493:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_486:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x180
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a630

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	al, r8b
	mov	r9b, cl
	lea	rdi, [rdi]
	mov	r10b, dl
	lea	rdi, [rdi]
	mov	ecx, 0xffffff9c
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	and	r10b, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], r10b
	mov	rsp, rsp
	and	r9b, 1
	mov	byte ptr [rbp - 0x1a], r9b
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1b]
	nop	
	test	al, 1
	cmovne	r8d, r11d
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x2c], edx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	r9d, al
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xffffffff
	call	force_linkat
	mov	rbp, rbp
	xor	edx, edx
	mov	dword ptr [rbp - 0x20], eax
	cmp	edx, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jge	.label_526
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_525
.label_526:
	cmp	dword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jge	.label_524
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	je	.label_524
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_524:
	mov	byte ptr [rbp - 1], 1
.label_525:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7f0

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	je	.label_528
	jmp	.label_531
.label_528:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.53
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	edx, 0x6d2
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	mov	rsp, rsp
	call	__assert_fail
.label_531:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 8], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	je	.label_530
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 3
	lea	rsi, [rsi]
	je	.label_529
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 8], 4
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a], cl
	lea	rsi, [rsi]
	jne	.label_527
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x2f], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], cl
	nop	
	je	.label_527
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	cl, sil
	lea	rsi, [rsi]
	test	al, 1
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_527
.label_529:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1a], al
.label_527:
	mov	al, byte ptr [rbp - 0x1a]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
.label_530:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a940

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdx + 0x18]
	nop	
	call	writable_destination
	mov	rsp, rsp
	test	al, 1
	jne	.label_536
	lea	rsi, [rbp - 0x24]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x1a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x18], 1
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	jne	.label_535
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	nop	
	jne	.label_535
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x16], 1
	je	.label_533
.label_535:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_532
.label_533:
	nop	
	movabs	rdi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_532:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, 4
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	lea	rdx, [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	and	edi, 0xfff
	mov	edi, edi
	nop	
	mov	r8d, edi
	nop	
	add	rdx, 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_534
.label_536:
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_534:
	lea	rsi, [rsi]
	call	yesno
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab30

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_537
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	sil, byte ptr [rdi + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_538
	movsx	eax, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12], cl
.label_538:
	mov	al, byte ptr [rbp - 0x12]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_539
.label_537:
	mov	byte ptr [rbp - 1], 0
.label_539:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abe0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	last_component
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_540
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_540
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rsp, rsp
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_543
.label_540:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_544
.label_543:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	call	mempcpy
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	call	stat
	nop	
	mov	dword ptr [rbp - 0xe4], eax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xe4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	jne	.label_542
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xfa], cl
	lea	rsi, [rsi]
	jne	.label_541
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xe0]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xfa], cl
.label_541:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xfa]
	mov	byte ptr [rbp - 0xf9], al
.label_542:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xf9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
.label_544:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae30

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	xor	eax, eax
	mov	ecx, 4
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ecx
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
	je	.label_545
	movabs	rdi, OFFSET FLAT:.str.58
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x34], eax
.label_545:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af10

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
.label_548:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_547
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_546
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_546
	mov	byte ptr [rbp - 1], 1
	jmp	.label_549
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_548
.label_547:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_549:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afa0

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x118
	mov	al, dl
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	edx, 2
	mov	rsp, rsp
	mov	ebx, 0x50
	lea	rsi, [rsi]
	mov	r14d, ebx
	lea	rsi, [rsi]
	lea	r15, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r10
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, r15
	mov	rsi, rcx
	mov	dword ptr [rbp - 0xe0], edx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [rbp - 0xc1], 1
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xe0]
	call	savedir
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jne	.label_555
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.59_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_550
.label_555:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	jne	.label_553
	mov	dword ptr [rbp - 0xbc], 2
.label_553:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc2], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_552:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_551
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	file_name_concat
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0xd0], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	file_name_concat
	mov	rbp, rbp
	lea	r9, [rbp - 0xc0]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	lea	rdx, [rbp - 0xd9]
	mov	rsp, rsp
	lea	rsi, [rbp - 0xc3]
	xor	r8d, r8d
	mov	edi, r8d
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rax]
	lea	rsi, [rsi]
	and	r10b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], r10b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	mov	r11, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	r10b, byte ptr [rbp - 0x31]
	nop	
	mov	rbx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x48]
	and	r10b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsp, rsp
	mov	rsi, r11
	movzx	r14d, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rdx
	mov	rsp, rsp
	mov	edx, r14d
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rcx, rbx
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r11, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	call	copy_internal
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	r14d, al
	and	r14d, edx
	mov	rbp, rbp
	cmp	r14d, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xc1], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xc3]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	mov	al, byte ptr [rcx]
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	r14d, al
	or	r14d, edx
	mov	rbp, rbp
	cmp	r14d, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	byte ptr [rcx], al
	mov	rdi, qword ptr [rbp - 0xd8]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	test	byte ptr [rbp - 0xc3], 1
	nop	
	je	.label_554
	jmp	.label_551
.label_554:
	mov	al, byte ptr [rbp - 0xd9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xc2]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc2], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_552
.label_551:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0xc2]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
.label_550:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x118
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b380

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x4d8
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, 0x20000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x68], ecx
	mov	byte ptr [rbp - 0x189], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	bl, byte ptr [rax + 0x23]
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x18a], bl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	dword ptr [rax + 4], 2
	cmove	r10d, r11d
	nop	
	or	r10d, 0
	mov	esi, r10d
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_602
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.60_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
	mov	rbp, rbp
	jmp	.label_588
.label_602:
	lea	rsi, [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_633
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e0], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2d4]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_590
.label_633:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	jne	.label_611
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	je	.label_614
.label_611:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e8], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2ec], edi
	mov	esi, dword ptr [rbp - 0x2ec]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_590
.label_614:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_565
	nop	
	xor	eax, eax
	nop	
	mov	ecx, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + 0x23]
	test	sil, 1
	nop	
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x190], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	jne	.label_566
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_574
.label_566:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	jg	.label_574
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	nop	
	jne	.label_585
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_587
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_586
.label_587:
	jmp	.label_585
.label_585:
	mov	rsp, rsp
	jmp	.label_574
.label_574:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_562
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x16], 1
	je	.label_562
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	unlink
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_605
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2f0], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2f8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2f0]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f8]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_590
.label_605:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2e], 1
	mov	rbp, rbp
	je	.label_617
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x300], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x304], eax
.label_617:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	lea	rdi, [rdi]
	je	.label_558
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	r8, qword ptr [rbp - 0x28]
	and	cl, 1
	nop	
	movzx	ecx, cl
	lea	rsi, [rsi]
	call	set_process_security_ctx
	test	al, 1
	mov	rbp, rbp
	jne	.label_634
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_590
.label_634:
	nop	
	jmp	.label_558
.label_558:
	jmp	.label_562
.label_562:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	nop	
	je	.label_567
	jmp	.label_571
.label_571:
	mov	dword ptr [rbp - 0x194], 0x41
	mov	rdi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x194]
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, dword ptr [rbp - 0x30]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	nop	
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	jge	.label_580
	cmp	dword ptr [rbp - 0x60], 0x11
	jne	.label_580
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_580
	lea	rsi, [rbp - 0x228]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_595
	nop	
	mov	eax, dword ptr [rbp - 0x210]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_595
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	lea	rdi, [rdi]
	je	.label_636
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x194]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_627
.label_636:
	nop	
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x310], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x314], edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x314]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_590
.label_627:
	jmp	.label_595
.label_595:
	jmp	.label_580
.label_580:
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_626
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x60], 0x15
	lea	rsi, [rsi]
	jne	.label_626
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_626
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	strlen
	sub	rax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rdi + rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_626
	mov	dword ptr [rbp - 0x60], 0x14
.label_626:
	jmp	.label_624
.label_567:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], 0
.label_624:
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_637
	nop	
	cmp	dword ptr [rbp - 0x60], 2
	nop	
	jne	.label_561
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0x18], 1
	jne	.label_561
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	jmp	.label_571
.label_561:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.64
	mov	esi, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x318], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x320], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x189], 0
	nop	
	jmp	.label_590
.label_637:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xf8]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_601
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x324], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x330], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x324]
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_586
.label_601:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x18a], 1
	je	.label_613
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_613
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	clone_file
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x229], cl
	test	byte ptr [rbp - 0x229], 1
	jne	.label_620
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 2
	lea	rsi, [rsi]
	jne	.label_592
.label_620:
	test	byte ptr [rbp - 0x229], 1
	mov	rbp, rbp
	jne	.label_625
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.65
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x334], esi
	nop	
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x340], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x348], rax
	nop	
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x334]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rcx, qword ptr [rbp - 0x348]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_586
.label_625:
	nop	
	mov	byte ptr [rbp - 0x18a], 0
.label_592:
	nop	
	jmp	.label_613
.label_613:
	test	byte ptr [rbp - 0x18a], 1
	mov	rbp, rbp
	je	.label_579
	mov	rsp, rsp
	call	getpagesize
	mov	rbp, rbp
	lea	rcx, [rbp - 0xf8]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x238], rdx
	mov	rdx, rsp
	mov	rsp, rsp
	mov	eax, 0x12
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x350], rcx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x358], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x358]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	rsp, rsp
	call	io_blksize
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	cmp	rcx, qword ptr [rbp - 0xc0]
	jge	.label_598
	movabs	rax, 0x2000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	ja	.label_598
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x360], rax
	jmp	.label_607
.label_598:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x360], rcx
	jmp	.label_607
.label_607:
	nop	
	mov	rax, qword ptr [rbp - 0x360]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x248], rax
	mov	edi, dword ptr [rbp - 0x64]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	fdadvise
	lea	rdi, [rbp - 0x188]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x249], 0
	lea	rdi, [rdi]
	call	is_probably_sparse
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24a], al
	mov	ecx, dword ptr [rbp - 0xe0]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	jne	.label_621
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_622
	mov	byte ptr [rbp - 0x249], 1
.label_622:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	nop	
	jne	.label_576
	test	byte ptr [rbp - 0x24a], 1
	mov	rsp, rsp
	je	.label_576
	mov	byte ptr [rbp - 0x249], 1
.label_576:
	lea	rsi, [rsi]
	jmp	.label_621
.label_621:
	test	byte ptr [rbp - 0x249], 1
	jne	.label_619
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x188]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x258], rcx
	mov	rcx, rsp
	nop	
	mov	edx, 0x12
	mov	esi, edx
	nop	
	lea	rdi, [rbp - 0x188]
	mov	qword ptr [rbp - 0x368], rcx
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x368]
	mov	qword ptr [rbp - 0x370], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x370]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x378], rax
	lea	rsi, [rsi]
	call	io_blksize
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x240]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	buffer_lcm
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
	mov	r8d, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	and	r8d, 0xf000
	cmp	r8d, 0x8000
	jne	.label_583
	mov	rax, qword ptr [rbp - 0x158]
	nop	
	cmp	rax, qword ptr [rbp - 0x240]
	lea	rsi, [rsi]
	jae	.label_583
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x158]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], rax
.label_583:
	mov	rax, qword ptr [rbp - 0x260]
	sub	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x240]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x260]
	mov	rsi, qword ptr [rbp - 0x240]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x240], rsi
	cmp	qword ptr [rbp - 0x240], 0
	lea	rsi, [rsi]
	je	.label_630
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_612
.label_630:
	mov	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x240], rax
.label_612:
	lea	rdi, [rdi]
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x238]
	call	ptr_align
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x24a], 1
	je	.label_609
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, qword ptr [rbp - 0x248]
	mov	r9, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x37c], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x380], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x388], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x390], rcx
	mov	qword ptr [rbp - 0x398], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3a0], r9
	lea	rdi, [rdi]
	je	.label_628
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3a4], ecx
	mov	rbp, rbp
	jmp	.label_569
.label_628:
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x3a4], eax
	lea	rdi, [rdi]
	jmp	.label_569
.label_569:
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rcx, [rbp - 0x261]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x37c]
	mov	r8d, dword ptr [rbp - 0x380]
	mov	qword ptr [rbp - 0x3b0], rsi
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x388]
	mov	qword ptr [rbp - 0x3b8], rdx
	nop	
	mov	rdx, r9
	mov	r10, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rbp, rbp
	mov	rcx, r10
	mov	r8, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x3a0]
	mov	dword ptr [rsp], eax
	mov	r11, qword ptr [rbp - 0x3b8]
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x3b0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	r11, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rsp + 0x18], r11
	call	extent_copy
	test	al, 1
	jne	.label_604
	jmp	.label_610
.label_604:
	jmp	.label_600
.label_610:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x261], 1
	jne	.label_616
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_586
.label_616:
	jmp	.label_609
.label_609:
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	test	byte ptr [rbp - 0x249], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c4], edi
	mov	dword ptr [rbp - 0x3c8], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3d8], rcx
	mov	rsp, rsp
	je	.label_581
	mov	rax, qword ptr [rbp - 0x248]
	mov	qword ptr [rbp - 0x3e0], rax
	nop	
	jmp	.label_572
.label_581:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e0], rcx
	jmp	.label_572
.label_572:
	nop	
	mov	rax, qword ptr [rbp - 0x3e0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rcx + 0xc], 3
	nop	
	sete	dl
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rsp
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x271]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x20], r8
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x270]
	mov	qword ptr [rdi + 0x18], r8
	mov	qword ptr [rdi + 8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 0x10], -1
	and	dl, 1
	mov	rsp, rsp
	movzx	r9d, dl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x3c4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x3c8]
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rcx, qword ptr [rbp - 0x3d8]
	mov	r8, rax
	lea	rdi, [rdi]
	call	sparse_copy
	test	al, 1
	jne	.label_568
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_586
.label_568:
	test	byte ptr [rbp - 0x271], 1
	mov	rsp, rsp
	je	.label_575
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	mov	rsi, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	call	ftruncate
	cmp	eax, 0
	nop	
	jge	.label_575
	mov	rsp, rsp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.66
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3e4], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x3f0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3e4]
	mov	rdx, qword ptr [rbp - 0x3f0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	nop	
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_586
.label_575:
	jmp	.label_596
.label_596:
	mov	rsp, rsp
	jmp	.label_579
.label_579:
	mov	rbp, rbp
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	mov	rsp, rsp
	je	.label_564
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	get_stat_atime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	qword ptr [rbp - 0x2a8], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	get_stat_mtime
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2c0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2b8], rdx
	mov	rax, qword ptr [rbp - 0x2c0]
	nop	
	mov	qword ptr [rbp - 0x290], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rax
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3f8], rdi
	mov	edi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3f8]
	lea	rsi, [rsi]
	call	fdutimens
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_559
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3fc], esi
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x408], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3fc]
	mov	rdx, qword ptr [rbp - 0x408]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rcx + 0x24], 1
	je	.label_632
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x189], 0
	mov	rbp, rbp
	jmp	.label_586
.label_632:
	lea	rdi, [rdi]
	jmp	.label_559
.label_559:
	mov	rsp, rsp
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	test	byte ptr [rax + 0x1d], 1
	lea	rdi, [rdi]
	je	.label_577
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0xdc]
	jne	.label_573
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x20]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	je	.label_577
.label_573:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rax]
	mov	rbp, rbp
	and	r8d, 1
	lea	r9, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	set_owner
	lea	rsi, [rsi]
	mov	edx, eax
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x40c], edx
	mov	dword ptr [rbp - 0x410], eax
	lea	rdi, [rdi]
	je	.label_589
	jmp	.label_597
.label_597:
	mov	eax, dword ptr [rbp - 0x40c]
	test	eax, eax
	mov	rbp, rbp
	je	.label_599
	jmp	.label_603
.label_589:
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_586
.label_599:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xfffff1ff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
.label_603:
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	test	byte ptr [rax + 0x27], 1
	lea	rdi, [rdi]
	je	.label_606
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2c1], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_608
	call	geteuid
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_608
	lea	rdi, [rdi]
	mov	edx, 0x180
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fchmod_or_lchmod
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2c1], cl
.label_608:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_623
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x28], 1
	nop	
	je	.label_623
	mov	byte ptr [rbp - 0x189], 0
.label_623:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x2c1], 1
	nop	
	je	.label_629
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	and	eax, ecx
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x414], eax
.label_629:
	jmp	.label_606
.label_606:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	set_author
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x1e], 1
	nop	
	jne	.label_557
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0x18], 1
	je	.label_584
.label_557:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8d, dword ptr [rbp - 0x68]
	call	copy_acl
	cmp	eax, 0
	je	.label_578
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	test	byte ptr [rax + 0x24], 1
	nop	
	je	.label_578
	mov	byte ptr [rbp - 0x189], 0
.label_578:
	lea	rsi, [rsi]
	jmp	.label_563
.label_584:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2b], 1
	je	.label_582
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	nop	
	cmp	eax, 0
	je	.label_631
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x189], 0
.label_631:
	lea	rdi, [rdi]
	jmp	.label_560
.label_582:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x20], 1
	mov	rsp, rsp
	je	.label_591
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	test	byte ptr [rax], 1
	je	.label_591
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x420], rdi
	mov	dword ptr [rbp - 0x424], esi
	call	cached_umask
	xor	eax, 0xffffffff
	mov	rsp, rsp
	and	eax, 0x1b6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x420]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x424]
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	set_acl
	cmp	eax, 0
	je	.label_593
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x189], 0
.label_593:
	mov	rsp, rsp
	jmp	.label_556
.label_591:
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_615
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	mov	rbp, rbp
	and	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	je	.label_618
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	nop	
	call	fchmod_or_lchmod
	nop	
	cmp	eax, 0
	je	.label_618
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x428], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x430], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x428]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x430]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_635
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], 0
.label_635:
	jmp	.label_618
.label_618:
	jmp	.label_615
.label_615:
	jmp	.label_556
.label_556:
	jmp	.label_560
.label_560:
	jmp	.label_563
.label_563:
	mov	rbp, rbp
	jmp	.label_586
.label_586:
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_570
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x434], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x440], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x434]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x440]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], 0
.label_570:
	jmp	.label_590
.label_590:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x64]
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_594
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x444], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x450], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x444]
	nop	
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x189], 0
.label_594:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x189]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_588:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x4d8
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c960

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	setfscreatecon
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_638
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.75
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_638:
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9d0

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	lutimens
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_639
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x26
	jne	.label_639
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
.label_639:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca40

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x40], edx
	test	byte ptr [rbp - 0x29], 1
	jne	.label_647
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_644
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	jne	.label_644
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2b], 1
	lea	rsi, [rsi]
	je	.label_647
.label_644:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_652
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	je	.label_655
.label_652:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x60], ecx
	lea	rdi, [rdi]
	jmp	.label_640
.label_655:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x60], ecx
.label_640:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	and	eax, dword ptr [rbp - 0x48]
	and	eax, 0x1c0
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x48]
	xor	ecx, 0xffffffff
	lea	rsi, [rsi]
	or	ecx, 0x800
	lea	rdi, [rdi]
	or	ecx, 0x400
	or	ecx, 0x200
	mov	rbp, rbp
	and	eax, ecx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_643
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x4c]
	call	qset_acl
	nop	
	cmp	eax, 0
	nop	
	je	.label_643
	mov	rdi, qword ptr [rbp - 0x10]
	call	owner_failure_ok
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_645
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.76
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_645:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x24]
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_641
.label_643:
	jmp	.label_647
.label_647:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], -1
	mov	rbp, rbp
	je	.label_648
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	cmp	eax, 0
	jne	.label_651
	mov	dword ptr [rbp - 4], 1
	jmp	.label_641
.label_651:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	mov	rsp, rsp
	je	.label_654
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_657
.label_654:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	fchown
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x74]
	mov	dword ptr [rax], ecx
.label_657:
	jmp	.label_649
.label_648:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	lchown
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_653
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_641
.label_653:
	call	__errno_location
	cmp	dword ptr [rax], 1
	lea	rdi, [rdi]
	je	.label_656
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_642
.label_656:
	mov	rsp, rsp
	call	__errno_location
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x78], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
.label_642:
	lea	rdi, [rdi]
	jmp	.label_649
.label_649:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	chown_failure_ok
	test	al, 1
	mov	rsp, rsp
	jne	.label_646
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_650
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_641
.label_650:
	lea	rdi, [rdi]
	jmp	.label_646
.label_646:
	mov	dword ptr [rbp - 4], 0
.label_641:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x90
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce20

	.globl copy_attr
	.type copy_attr, @function
copy_attr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce60

	.globl set_author
	.type set_author, @function
set_author:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce80

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	esi, 0xf000
	cmp	esi, 0xa000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], al
	je	.label_658
	mov	rsp, rsp
	call	can_write_any_file
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_658
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	euidaccess
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0xd], cl
.label_658:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf20

	.globl clone_file
	.type clone_file, @function
clone_file:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x40049409
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	al, 0
	nop	
	call	ioctl
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf60

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x10]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jge	.label_659
	nop	
	movabs	rax, 0x2000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_659
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_660
.label_659:
	mov	rbp, rbp
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jle	.label_663
	mov	eax, 0x20000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	jmp	.label_662
.label_663:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_661
	mov	rbp, rbp
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_661
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	jmp	.label_664
.label_661:
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_662:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d080

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	jne	.label_665
	lea	rdi, [rdi]
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	setl	dil
	mov	byte ptr [rbp - 9], dil
.label_665:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d110

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d180

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x198
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x20], edi
	nop	
	mov	dword ptr [rbp - 0x24], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	dword ptr [rbp - 0x4c], ebx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], r11
	nop	
	mov	qword ptr [rbp - 0x60], r10
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xa0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], 0
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, r14
	mov	rsp, rsp
	call	extent_scan_init
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], 1
.label_674:
	lea	rdi, [rbp - 0x98]
	lea	rsi, [rsi]
	call	extent_scan_read
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0xb2], al
	test	byte ptr [rbp - 0xb2], 1
	jne	.label_676
	mov	rbp, rbp
	test	byte ptr [rbp - 0x77], 1
	mov	rsp, rsp
	je	.label_680
	mov	rsp, rsp
	jmp	.label_685
.label_680:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x78], 1
	mov	rbp, rbp
	je	.label_690
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_670
.label_690:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_670
.label_676:
	nop	
	mov	byte ptr [rbp - 0xb3], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], 0
.label_667:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], al
	jb	.label_692
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xf1], al
.label_692:
	nop	
	mov	al, byte ptr [rbp - 0xf1]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_679
	lea	rdi, [rdi]
	jmp	.label_683
.label_679:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	jae	.label_688
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rbp - 0xc0], rcx
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_672
.label_688:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, -1
	mov	dword ptr [rbp - 0xb8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], 0
.label_672:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, rcx
	jge	.label_669
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jge	.label_675
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
.label_675:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_669:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xb1], 0
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	je	.label_695
	lea	rdi, [rdi]
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_684
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.69
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_696:
	lea	rdi, [rbp - 0x98]
	mov	rbp, rbp
	call	extent_scan_free
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_670
.label_684:
	test	byte ptr [rbp - 0xb3], 1
	lea	rsi, [rsi]
	je	.label_678
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	nop	
	je	.label_681
.label_678:
	test	byte ptr [rbp - 0xb3], 1
	jne	.label_687
	cmp	dword ptr [rbp - 0x4c], 1
	nop	
	je	.label_687
.label_681:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	dword ptr [rbp - 0x4c], 3
	nop	
	sete	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	call	create_hole
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_698
	mov	rbp, rbp
	jmp	.label_696
.label_698:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], 1
	lea	rsi, [rsi]
	jmp	.label_699
.label_687:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	test	byte ptr [rbp - 0xb3], 1
	lea	rsi, [rsi]
	je	.label_700
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	jge	.label_704
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	jmp	.label_668
.label_704:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
.label_668:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_700:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	write_zeros
	test	al, 1
	mov	rbp, rbp
	jne	.label_689
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.70
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x10c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10c]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_696
.label_689:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jge	.label_701
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_703
.label_701:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x120], rax
.label_703:
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
.label_699:
	jmp	.label_695
.label_695:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	byte ptr [rbp - 0xb3], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x4c], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], edi
	nop	
	mov	dword ptr [rbp - 0x128], esi
	mov	qword ptr [rbp - 0x130], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rcx
	jne	.label_673
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_693
.label_673:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_693
.label_693:
	mov	rax, qword ptr [rbp - 0x140]
	mov	r9d, 1
	mov	rbp, rbp
	lea	rcx, [rbp - 0xe0]
	lea	rdx, [rbp - 0xe1]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x124]
	nop	
	mov	qword ptr [rbp - 0x148], rdi
	lea	rdi, [rdi]
	mov	edi, r10d
	mov	r11d, dword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, r11d
	mov	rbx, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x158], rdx
	mov	rdx, rbx
	mov	r14, qword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x160], rcx
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], r8
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	mov	qword ptr [rsp], rax
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	call	sparse_copy
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_694
	jmp	.label_696
.label_694:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rbp, rbp
	je	.label_697
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], al
.label_697:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jne	.label_702
	mov	byte ptr [rbp - 0x77], 1
	lea	rdi, [rdi]
	jmp	.label_683
.label_702:
	nop	
	jmp	.label_666
.label_666:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	mov	rbp, rbp
	jmp	.label_667
.label_683:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0x77]
	nop	
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_674
.label_685:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_677
	test	byte ptr [rbp - 0xb1], 1
	je	.label_682
.label_677:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_686
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	ftruncate
	cmp	eax, 0
	nop	
	jne	.label_691
	jmp	.label_682
.label_686:
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	write_zeros
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_682
.label_691:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x16c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	nop	
	jmp	.label_670
.label_682:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	mov	rbp, rbp
	jne	.label_671
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jge	.label_671
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	mov	rbp, rbp
	call	punch_hole
	nop	
	cmp	eax, 0
	jge	.label_671
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x17c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_670
.label_671:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
.label_670:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x198
	nop	
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db20

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xe8
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x30]
	mov	r11, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x18]
	nop	
	mov	r15, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x20], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	qword ptr [rbp - 0x50], r15
	mov	qword ptr [rbp - 0x58], r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rbx
	nop	
	mov	qword ptr [rbp - 0x68], r11
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
.label_730:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_723
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0xa8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	rbp, rbp
	jae	.label_726
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_736
.label_726:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
.label_736:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	read
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_720
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_727
	mov	rsp, rsp
	jmp	.label_730
.label_727:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xbc], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_709
.label_720:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	jne	.label_728
	mov	rsp, rsp
	jmp	.label_723
.label_728:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_735
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_717
.label_735:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
.label_717:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
.label_725:
	cmp	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	je	.label_737
	mov	al, byte ptr [rbp - 0x71]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	jae	.label_716
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	jmp	.label_719
.label_716:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xd8], rax
.label_719:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_729
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_729
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
.label_729:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	dl, byte ptr [rbp - 0x71]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	dl, byte ptr [rbp - 0xa1]
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], cl
	mov	rsp, rsp
	je	.label_714
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xd9], al
.label_714:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa2], al
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rcx, qword ptr [rbp - 0x90]
	jne	.label_733
	mov	al, 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x71], 1
	mov	byte ptr [rbp - 0xda], al
	je	.label_707
.label_733:
	cmp	qword ptr [rbp - 0x90], 0
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xda], al
.label_707:
	nop	
	mov	al, byte ptr [rbp - 0xda]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0xa3], al
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_722
	test	byte ptr [rbp - 0xa3], 1
	je	.label_731
.label_722:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa2], 1
	lea	rsi, [rsi]
	jne	.label_734
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_734:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_710
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	je	.label_721
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.73
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_709
.label_721:
	mov	rbp, rbp
	jmp	.label_706
.label_710:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rsp, rsp
	call	create_hole
	test	al, 1
	nop	
	jne	.label_732
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_709
.label_732:
	mov	rsp, rsp
	jmp	.label_706
.label_706:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [rbp - 0xa3], 1
	je	.label_708
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_715
	mov	qword ptr [rbp - 0x88], 0
.label_715:
	test	byte ptr [rbp - 0xa2], 1
	je	.label_711
	nop	
	mov	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	jmp	.label_718
.label_711:
	mov	qword ptr [rbp - 0x80], 0
.label_718:
	jmp	.label_708
.label_708:
	jmp	.label_713
.label_731:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x90]
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_724
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_712
.label_724:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf4], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xf4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_709
.label_712:
	nop	
	jmp	.label_713
.label_713:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_725
.label_737:
	mov	al, byte ptr [rbp - 0x71]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	jmp	.label_730
.label_723:
	test	byte ptr [rbp - 0x71], 1
	lea	rsi, [rsi]
	je	.label_705
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	mov	rsp, rsp
	test	al, 1
	jne	.label_705
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_709
.label_705:
	mov	byte ptr [rbp - 0x19], 1
.label_709:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1f0

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	jg	.label_738
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_739
.label_738:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	nop	
	mov	dword ptr [rbp - 4], eax
.label_739:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e260

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2b0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jge	.label_742
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2c], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_740
.label_742:
	nop	
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_741
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	punch_hole
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_741
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_740
.label_741:
	mov	byte ptr [rbp - 1], 1
.label_740:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e410

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_746
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	mov	rsp, rsp
	jne	.label_747
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	nop	
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_747:
	nop	
	jmp	.label_746
.label_746:
	jmp	.label_743
.label_743:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_748
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_744
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_750
.label_744:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_750:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	je	.label_745
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_749
.label_745:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	jmp	.label_743
.label_748:
	mov	byte ptr [rbp - 1], 1
.label_749:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	fallocate
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	jge	.label_751
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_752
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	nop	
	jne	.label_751
.label_752:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_751:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e600

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	nop	
	je	.label_753
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], cl
	lea	rsi, [rsi]
	jmp	.label_753
.label_753:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e640

	.globl is_nul
	.type is_nul, @function
is_nul:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_754
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_756
.label_754:
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	and	rax, 0
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_763
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_759
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_756
.label_759:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_758
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_756
.label_758:
	jmp	.label_757
.label_763:
	jmp	.label_761
.label_761:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	cmp	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	je	.label_762
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_756
.label_762:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_755
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_756
.label_755:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	nop	
	cmp	rax, 0
	jne	.label_764
	jmp	.label_760
.label_764:
	mov	rsp, rsp
	jmp	.label_761
.label_760:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_756:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e7c0

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_766
	call	__errno_location
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], dl
	jne	.label_765
.label_766:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_765:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e820

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_delete
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_767
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	src_to_dest_free
.label_767:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8a0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8f0

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsp, rsp
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_768
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_769
.label_768:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e980

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_771
	call	xalloc_die
.label_771:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	je	.label_772
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_770
.label_772:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_770:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl hash_init
	.type hash_init, @function
hash_init:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x67
	nop	
	mov	edi, eax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:src_to_dest_hash
	movabs	rcx, OFFSET FLAT:src_to_dest_compare
	movabs	r8, OFFSET FLAT:src_to_dest_free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [word ptr [src_to_dest]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [src_to_dest]],  0
	jne	.label_773
	call	xalloc_die
.label_773:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eae0

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb20

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	jne	.label_774
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], dl
.label_774:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	nop	
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	setne	al
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebc0
	.globl forget_all
	.type forget_all, @function
forget_all:

	nop
	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	call	hash_free
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebe0

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x20], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x21], 0
	lea	rsi, [rsi]
	call	extent_need_sync
	xor	edi, edi
	mov	ecx, 1
	test	al, 1
	cmovne	edi, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x10], edi
	mov	rsp, rsp
	add	rsp, 0x10
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec70

	.globl extent_need_sync
	.type extent_need_sync, @function
extent_need_sync:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec90

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1060
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x20], rdi
.label_793:
	mov	eax, 0xc020660b
	mov	esi, eax
	mov	rcx, -1
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, 0x1000
	nop	
	lea	rdi, [rbp - 0x1020]
	mov	r8, rdi
	mov	qword ptr [rbp - 0x1028], r8
	nop	
	mov	r8, qword ptr [rbp - 0x1028]
	nop	
	add	r8, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1030], r8
	mov	qword ptr [rbp - 0x1058], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x1060], rcx
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x1028]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x10], eax
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x18], 0x48
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1060]
	sub	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	rsi, qword ptr [rbp - 0x1058]
	lea	rdi, [rdi]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jge	.label_779
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_781
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x20], 1
.label_781:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_792
.label_779:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1028]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_790
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_792
.label_790:
	mov	rax, -1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1028]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	mov	rsp, rsp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_799
	jmp	.label_787
.label_799:
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 0x7e
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_787:
	mov	eax, 0x18
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	eax, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	add	rdx, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdi, [rdi]
	sub	rdx, rsi
	nop	
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x1038], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	xnrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x1038], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x103c], 0
	nop	
	mov	dword ptr [rbp - 0x103c], 0
.label_797:
	mov	eax, dword ptr [rbp - 0x103c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_783
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1030]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	esi, ecx
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x1030]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rsi + 0x10]
	cmp	rdx, rax
	ja	.label_789
	jmp	.label_777
.label_789:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_777:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	je	.label_788
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x103c]
	mov	eax, edx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	mov	rbp, rbp
	jne	.label_788
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	lea	rdi, [rdi]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	nop	
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jne	.label_788
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	mov	rsp, rsp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + 8], rcx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x1030]
	mov	eax, dword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x10], eax
	jmp	.label_786
.label_788:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jne	.label_800
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	ja	.label_794
.label_800:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_791
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	ecx, edx
	mov	rbp, rbp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	nop	
	jbe	.label_791
.label_794:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_776
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1048], rax
	mov	rsp, rsp
	jmp	.label_780
.label_776:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1048], rax
.label_780:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1030]
	sub	rax, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1050], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1050]
	mov	ecx, dword ptr [rbp - 0x103c]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx + 0x10]
	jae	.label_796
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_778
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_778:
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_792
.label_796:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1050]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rsi, qword ptr [rdx + 0x10]
	sub	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rsi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x103c]
	nop	
	add	ecx, -1
	mov	dword ptr [rbp - 0x103c], ecx
	jmp	.label_795
.label_791:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	lea	rsi, [rsi]
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x103c]
	nop	
	mov	eax, ecx
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x10], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_786
.label_786:
	mov	rsp, rsp
	jmp	.label_795
.label_795:
	mov	eax, dword ptr [rbp - 0x103c]
	add	eax, 1
	mov	dword ptr [rbp - 0x103c], eax
	jmp	.label_797
.label_783:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	nop	
	je	.label_775
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x21], 1
.label_775:
	cmp	dword ptr [rbp - 0x14], 0x48
	lea	rdi, [rdi]
	jbe	.label_785
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x21], 1
	jne	.label_785
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	nop	
	mov	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	nop	
	add	rax, -0x18
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_785:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x21], 1
	je	.label_798
	lea	rsi, [rsi]
	jmp	.label_782
.label_798:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x14], 0x48
	jb	.label_784
	mov	rbp, rbp
	jmp	.label_782
.label_784:
	jmp	.label_793
.label_782:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
.label_792:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x1060
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f400

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	lea	rdi, [rdi]
	mov	al, r9b
	nop	
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	mov	dword ptr [rbp - 0x2c], r9d
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_801
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_805
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	lea	rdi, [rdi]
	jmp	.label_808
.label_805:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x158], ecx
.label_808:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_801:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x25], 1
	mov	rsp, rsp
	je	.label_804
	nop	
	cmp	dword ptr [rbp - 0x2c], 0x11
	nop	
	je	.label_807
.label_804:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_812
.label_807:
	lea	rsi, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	samedir_template
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	lea	rsi, [rsi]
	jne	.label_803
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_812
.label_803:
	mov	rbp, rbp
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	lea	rdx, [rbp - 0x150]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	call	try_tempname_len
	cmp	eax, 0
	je	.label_811
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_802
.label_811:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_806
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x15c], eax
	lea	rsi, [rsi]
	jmp	.label_809
.label_806:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x15c], ecx
.label_809:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_802:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_810
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_810:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x154]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_812:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f650

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0x100
	lea	rsi, [rsi]
	ja	.label_815
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_813
.label_815:
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_814
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_816
.label_814:
	mov	rbp, rbp
	jmp	.label_813
.label_813:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	mempcpy
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_816:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f740

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7a0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	dword ptr [rbp - 0x28], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jge	.label_823
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	symlinkat
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_827
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], eax
	nop	
	jmp	.label_820
.label_827:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], ecx
.label_820:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_823:
	test	byte ptr [rbp - 0x21], 1
	je	.label_828
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_822
.label_828:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_817
.label_822:
	lea	rsi, [rbp - 0x130]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_824
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	jmp	.label_817
.label_824:
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rbp, rbp
	mov	r8d, eax
	lea	rdx, [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rdi
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x138]
	call	try_tempname_len
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_818
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_825
.label_818:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	nop	
	je	.label_821
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_819
.label_821:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_819:
	jmp	.label_825
.label_825:
	lea	rax, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	cmp	rcx, rax
	je	.label_826
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	call	free
.label_826:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_817:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x160
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f9c0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	symlinkat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa10

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], r8d
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	call	qcopy_acl
	mov	dword ptr [rbp - 0x24], eax
	mov	ecx, eax
	sub	eax, -2
	mov	dword ptr [rbp - 0x28], ecx
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_831
	mov	rbp, rbp
	jmp	.label_833
.label_833:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_830
	lea	rdi, [rdi]
	jmp	.label_829
.label_831:
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], esi
	nop	
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	jmp	.label_832
.label_830:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	jmp	.label_832
.label_829:
	lea	rsi, [rsi]
	jmp	.label_832
.label_832:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb20

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	qset_acl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_834
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_834:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fbd0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_840
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_837
.label_840:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_837:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_845
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_838
.label_845:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_838:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_843:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jne	.label_835
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_836
.label_835:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_842
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_842
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_836
.label_842:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_841
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_836
.label_841:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_847
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_839
.label_847:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_844
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_846
.label_844:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_836
.label_846:
	jmp	.label_839
.label_839:
	lea	rdi, [rdi]
	jmp	.label_843
.label_836:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe10

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_848
	nop	
	movabs	rdi, OFFSET FLAT:.str_8
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_848:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_849
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_849
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	call	last_component
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_849
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_850
.label_849:
	movabs	rax, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_850
.label_850:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fed0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_854
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	call	set_simple_backup_suffix
.label_854:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_863
	mov	qword ptr [rbp - 0x40], 9
.label_863:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_859
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_857
.label_859:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_864:
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
.label_2433:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memcpy
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 1
	nop	
	jne	.label_853
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_860
.label_853:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, rsp
	lea	rsi, [rbp - 0x5c]
	mov	qword ptr [rax], rsi
	mov	rbp, rbp
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x58]
	mov	rbp, rbp
	call	numbered_backup
	mov	edi, eax
	nop	
	mov	ecx, edi
	mov	rbp, rbp
	sub	eax, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	ja	.label_851
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_856]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2327:
	lea	rdi, [rdi]
	jmp	.label_851
.label_2328:
	nop	
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_858
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 1
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_858:
	jmp	.label_868
.label_868:
	mov	rbp, rbp
	mov	edx, 0x7e
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_851
.label_2329:
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_857
.label_851:
	lea	rdi, [rdi]
	jmp	.label_860
.label_860:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d], 1
	nop	
	jne	.label_861
	mov	rsp, rsp
	jmp	.label_862
.label_861:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_865
	nop	
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
.label_865:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	nop	
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x50]
	nop	
	add	r8, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	lea	rdi, [rdi]
	call	renameatu
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_855
	mov	rbp, rbp
	jmp	.label_862
.label_855:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x70], 0x11
	lea	rsi, [rsi]
	je	.label_867
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_852
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
.label_852:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_857
.label_867:
	jmp	.label_864
.label_862:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_866
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
.label_866:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_857:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4102c0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xc0
	nop	
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	base_len
	nop	
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_883
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_888
.label_883:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], edx
	call	strcpy
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	edx, dword ptr [rbp - 0xac]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	call	opendirat
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_877
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_877
	mov	dword ptr [rbp - 0x3c], 3
.label_877:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	nop	
	mov	word ptr [rax], cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_869
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_876
.label_869:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_888:
	jmp	.label_870
.label_870:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	readdir
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_880
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	add	rdi, 4
	lea	rsi, [rsi]
	cmp	rax, rdi
	jae	.label_885
	jmp	.label_870
.label_885:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0x70]
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
	je	.label_879
	jmp	.label_870
.label_879:
	nop	
	mov	eax, 0x31
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rcx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_882
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	jle	.label_871
.label_882:
	lea	rsi, [rsi]
	jmp	.label_870
.label_871:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	lea	rsi, [rsi]
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 0x89], dl
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 1
.label_887:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rdi, [rdi]
	cmp	edx, 9
	ja	.label_886
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x39
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x89]
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
	mov	byte ptr [rbp - 0x89], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_887
.label_886:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_874
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax + 1], 0
	lea	rdi, [rdi]
	jne	.label_874
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_878
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_874
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jle	.label_878
.label_874:
	jmp	.label_870
.label_878:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x89]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rdi, 2
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	jae	.label_875
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jb	.label_872
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_872:
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_881
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 3
	lea	rsi, [rsi]
	jmp	.label_876
.label_881:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_875:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2e
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x7e
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x89]
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsxd	rcx, esi
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
.label_873:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	lea	rsi, [rsi]
	jne	.label_884
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	lea	rdi, [rdi]
	jmp	.label_873
.label_884:
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	add	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
	jmp	.label_870
.label_880:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
.label_876:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4108f0

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	mov	qword ptr [rbp - 0x20], r8
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	base_len
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_896
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_892
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_894
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:.str_3
	nop	
	mov	esi, edx
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	pathconf
	mov	qword ptr [rbp - 0x40], rax
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
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	cx, word ptr [rbp - 0x42]
	mov	word ptr [rax], cx
	nop	
	jmp	.label_890
.label_894:
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	fpathconf
	mov	qword ptr [rbp - 0x40], rax
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
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdx
.label_890:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_891
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_891
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_889
.label_891:
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	mov	rbp, rbp
	cmovl	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_889:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_892:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_896:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jae	.label_893
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	ja	.label_895
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_895:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_893:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x410b70

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	call	backupfile_internal
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410bb0
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
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	backupfile_internal
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_897
	call	xalloc_die
.label_897:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c10

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_898
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_899
.label_898:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 2
	jmp	.label_900
.label_899:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 4], r10d
.label_900:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410cc0

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
	je	.label_901
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_901
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	get_version
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_902
.label_901:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rsi, rax
	mov	rsp, rsp
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_902:
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
	#Procedure 0x410d60

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_903
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_914
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_907
.label_914:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_905
.label_903:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_911
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_904:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rdx
	cmp	rdx, 0
	je	.label_910
	jmp	.label_906
.label_906:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_904
.label_910:
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_909
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_912
.label_909:
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_905:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_913
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_908
.label_913:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
.label_908:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_912:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e90
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
	#Procedure 0x410ec0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_918
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
	jne	.label_919
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_919
	mov	byte ptr [rbp - 1], 1
.label_919:
	jmp	.label_918
.label_918:
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	close_stream
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_916
	mov	byte ptr [rbp - 1], 1
.label_916:
	test	byte ptr [rbp - 1], 1
	je	.label_917
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_10
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_921
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_920
.label_921:
	nop	
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_920:
	lea	rsi, [rsi]
	jmp	.label_917
.label_917:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	nop	
	je	.label_915
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rsi, [rsi]
	call	_exit
.label_915:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411030
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
	#Procedure 0x411060
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
	#Procedure 0x411090

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
	je	.label_922
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_926
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_922
.label_926:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_11
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_924
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_923
.label_924:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_923:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_922:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_925
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_925:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4111c0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_927
	lea	rsi, [rsi]
	call	xalloc_die
.label_927:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411210

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
	je	.label_928
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_931
.label_928:
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
.label_931:
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
.label_933:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_932
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_929
	jmp	.label_932
.label_929:
	jmp	.label_930
.label_930:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_933
.label_932:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411300

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
	je	.label_935
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	jmp	.label_935
.label_935:
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
	jne	.label_937
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_934
.label_937:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_936
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
.label_936:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_934:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411420

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
.label_942:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_944
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_942
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_939:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_943
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_938
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_941
.label_938:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_940
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_940:
	jmp	.label_941
.label_941:
	jmp	.label_945
.label_945:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_939
.label_943:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4114f0

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
.label_947:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_946
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
.label_946:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_948
	mov	rbp, rbp
	jmp	.label_949
.label_948:
	jmp	.label_950
.label_950:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_947
.label_949:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115b0

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
	jne	.label_951
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_951:
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
	#Procedure 0x411630

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
	#Procedure 0x411670
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
	je	.label_952
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
.label_952:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4116d0

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
	je	.label_953
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
.label_953:
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
	je	.label_955
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
	ja	.label_956
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
	jmp	.label_954
.label_956:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdx
.label_954:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_955:
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
	.align	32
	#Procedure 0x411950

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_957
	jmp	.label_959
.label_957:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_958
	mov	rbp, rbp
	call	xalloc_die
.label_958:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_959
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	triple_free
.label_959:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411a30

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_960
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_961
.label_960:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 1], dl
.label_961:
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x411ad0

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_968
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_974
	movabs	rdi, OFFSET FLAT:.str_12
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_971
.label_974:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_971:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_962
.label_968:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_970
	movabs	rdi, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_962
.label_970:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_969
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_3
	nop	
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_969:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_967
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_1
	call	gettext
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_967:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_966
	movabs	rdi, OFFSET FLAT:.str.5_2
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_962
.label_966:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_963
	movabs	rdi, OFFSET FLAT:.str.6_1
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_963:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	lea	rdi, [rdi]
	jne	.label_964
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7_1
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_962
.label_964:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	lea	rdi, [rdi]
	jne	.label_973
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_973:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	nop	
	jne	.label_965
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_962
.label_965:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xc000
	mov	rsp, rsp
	jne	.label_972
	movabs	rdi, OFFSET FLAT:.str.10_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_962
.label_972:
	movabs	rdi, OFFSET FLAT:.str.11_2
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_962:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411dc0

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_976
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_978
.label_976:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_978:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_977
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_980
.label_977:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_980:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0x200
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_975
	mov	eax, 0x54
	lea	rsi, [rsi]
	mov	ecx, 0x74
	nop	
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_979
.label_975:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_979:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412060

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_981
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_982
.label_981:
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_984
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x64
	nop	
	jmp	.label_982
.label_984:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_985
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x62
	nop	
	jmp	.label_982
.label_985:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_987
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_982
.label_987:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_986
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_982
.label_986:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_988
	mov	byte ptr [rbp - 1], 0x70
	mov	rbp, rbp
	jmp	.label_982
.label_988:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_983
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x73
	lea	rsi, [rsi]
	jmp	.label_982
.label_983:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x3f
.label_982:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412180
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_994
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_990
.label_994:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_991
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_989
.label_991:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_992
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x53
	jmp	.label_993
.label_992:
	lea	rsi, [rsi]
	jmp	.label_993
.label_993:
	mov	rbp, rbp
	jmp	.label_989
.label_989:
	jmp	.label_990
.label_990:
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412260

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
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_995
	lea	rsi, [rsi]
	call	xalloc_die
.label_995:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4122d0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1001
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_999
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_999
	nop	
	mov	byte ptr [rbp - 0x41], 0x2f
.label_999:
	jmp	.label_997
.label_1001:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_998
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], 0x2e
.label_998:
	jmp	.label_997
.label_997:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1002
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_996
.label_1002:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
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
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_1000:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_996:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4124b0

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
.label_1005:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1004
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1006
	jmp	.label_1004
.label_1006:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1003
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_1004
.label_1003:
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
	jmp	.label_1005
.label_1004:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412560

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
	#Procedure 0x412580

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
	#Procedure 0x4125a0

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
	#Procedure 0x4125c0

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
.label_1012:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1007
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1009
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1013:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1008
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1013
.label_1008:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1010
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1010:
	jmp	.label_1009
.label_1009:
	mov	rbp, rbp
	jmp	.label_1011
.label_1011:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1012
.label_1007:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126a0
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
.label_1014:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1019
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1018
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
.label_1015:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1016
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1015
.label_1016:
	jmp	.label_1018
.label_1018:
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1014
.label_1019:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1020
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1020
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1017
.label_1020:
	mov	byte ptr [rbp - 1], 0
.label_1017:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127d0
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
	movabs	rax, OFFSET FLAT:.str.2_5
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
	mov	ecx, OFFSET FLAT:.str_13
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
	mov	ecx, OFFSET FLAT:.str.1_8
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1022]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1023]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1024]]
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
	movabs	rsi, OFFSET FLAT:.str.3_4
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
	.align	32
	#Procedure 0x412950

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
	jne	.label_1031
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1030
.label_1031:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1029:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1026
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1025
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
	jne	.label_1025
	mov	rsp, rsp
	jmp	.label_1028
.label_1025:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1030
.label_1028:
	nop	
	jmp	.label_1027
.label_1027:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1029
.label_1026:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1030:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412a40

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
	jb	.label_1032
	call	abort
.label_1032:
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
	.align	32
	#Procedure 0x412ad0
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
	jne	.label_1033
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1036
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1035:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1034
	lea	rsi, [rsi]
	call	abort
.label_1034:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1037
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1036
.label_1037:
	jmp	.label_1038
.label_1038:
	nop	
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1035
.label_1036:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b90
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
.label_1043:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1041
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1041
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1045
.label_1041:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1043
	jmp	.label_1040
.label_1040:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1044
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1042
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1045
.label_1042:
	jmp	.label_1040
.label_1044:
	mov	qword ptr [rbp - 8], 0
.label_1045:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c90
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
.label_1049:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1046
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1048
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1047:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_1053
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1050
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1052
.label_1050:
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
	jmp	.label_1047
.label_1053:
	lea	rsi, [rsi]
	jmp	.label_1048
.label_1048:
	jmp	.label_1051
.label_1051:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1049
.label_1046:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1052:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412da0
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
.label_1059:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1058
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1055
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1057:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1061
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
	jne	.label_1056
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1060
.label_1056:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1057
.label_1061:
	mov	rbp, rbp
	jmp	.label_1055
.label_1055:
	nop	
	jmp	.label_1054
.label_1054:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1059
.label_1058:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1060:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412eb0
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
.label_1062:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1063
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
	jmp	.label_1062
.label_1063:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f20
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
	mov	rax,  qword ptr [word ptr [label_1064]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1065]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f70

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
	jne	.label_1072
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1072:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1074
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1074:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1071
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1067
.label_1071:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1069
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1069:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1066
	jmp	.label_1068
.label_1066:
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
	jne	.label_1070
	mov	rsp, rsp
	jmp	.label_1068
.label_1070:
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
	jne	.label_1073
	jmp	.label_1068
.label_1073:
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
	jmp	.label_1067
.label_1068:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1067:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413190

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
	#Procedure 0x4131e0

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
	.align	32
	#Procedure 0x413210

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
	jne	.label_1078
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1075
.label_1078:
	movss	xmm0,  dword ptr [dword ptr [label_1076]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1077
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1077
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1077
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1077
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1077
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1077
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
	jbe	.label_1077
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1075
.label_1077:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1075:
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
	#Procedure 0x413380

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
	jne	.label_1080
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1081]]
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
	js	.label_1082
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1082:
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
	jb	.label_1086
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1084
.label_1086:
	nop	
	movss	xmm0, dword ptr [rbp - 0x1c]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
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
.label_1080:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1083
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1084
.label_1083:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1084:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134f0
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
.label_1093:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1092
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1089
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1087:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1088
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1094
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1094:
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
	jmp	.label_1087
.label_1088:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1091
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1091:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1089:
	jmp	.label_1090
.label_1090:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1093
.label_1092:
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
	.align	32
	#Procedure 0x413660

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
	je	.label_1097
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1097
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1104:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1106
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1096
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1099:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1101
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
	jmp	.label_1099
.label_1101:
	jmp	.label_1096
.label_1096:
	jmp	.label_1108
.label_1108:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1104
.label_1106:
	jmp	.label_1097
.label_1097:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1095:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1098
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1103:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_1105
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
	jmp	.label_1103
.label_1105:
	jmp	.label_1107
.label_1107:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1095
.label_1098:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_1100:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1102
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
	jmp	.label_1100
.label_1102:
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
	.align	32
	#Procedure 0x413850

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
	jne	.label_1109
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1110
.label_1109:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1112
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1110
.label_1112:
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
	jne	.label_1114
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1110
.label_1114:
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
	jne	.label_1113
	lea	rsi, [rsi]
	jmp	.label_1117
.label_1113:
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
	jmp	.label_1110
.label_1117:
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
	jne	.label_1115
	mov	rbp, rbp
	jmp	.label_1116
.label_1115:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1111
.label_1116:
	call	abort
.label_1111:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 1], 0
.label_1110:
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
	.align	32
	#Procedure 0x413b20

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
.label_1129:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1120
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1127
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1123:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1119
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
	je	.label_1131
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
	jmp	.label_1122
.label_1131:
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
.label_1122:
	mov	rbp, rbp
	jmp	.label_1118
.label_1118:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1123
.label_1119:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_1126
	jmp	.label_1128
.label_1126:
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
	je	.label_1124
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1130
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1121
.label_1130:
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
	jmp	.label_1125
.label_1124:
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
.label_1125:
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
.label_1127:
	jmp	.label_1128
.label_1128:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1129
.label_1120:
	mov	byte ptr [rbp - 1], 1
.label_1121:
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
	.align	32
	#Procedure 0x413db0

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
	jne	.label_1146
	lea	rsi, [rsi]
	call	abort
.label_1146:
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
	je	.label_1150
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1140
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1140:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1141
.label_1150:
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
	js	.label_1132
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1132:
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
	js	.label_1144
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x70], xmm0
.label_1144:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1139
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
	js	.label_1136
	movss	xmm0, dword ptr [rbp - 0x8c]
	nop	
	movss	dword ptr [rbp - 0x90], xmm0
.label_1136:
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
	js	.label_1137
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1137:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1135
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1134
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
	js	.label_1143
	movss	xmm0, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1143:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	mov	rbp, rbp
	jmp	.label_1149
.label_1134:
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
	js	.label_1145
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1145:
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
.label_1149:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1081]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1133
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1141
.label_1133:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
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
	jne	.label_1138
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1141
.label_1138:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1148
	call	abort
.label_1148:
	jmp	.label_1135
.label_1135:
	lea	rdi, [rdi]
	jmp	.label_1139
.label_1139:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1142
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_1147
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1141
.label_1147:
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
	jmp	.label_1141
.label_1142:
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
.label_1141:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414380

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
	jne	.label_1162
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1157
.label_1162:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1155
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
	jne	.label_1155
	jmp	.label_1159
.label_1155:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1153
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1151
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
	jmp	.label_1156
.label_1151:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1156:
	jmp	.label_1153
.label_1153:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1157
.label_1159:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1158:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1163
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1154
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
	jne	.label_1154
	lea	rsi, [rsi]
	jmp	.label_1160
.label_1154:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1161
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
.label_1161:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1157
.label_1160:
	mov	rbp, rbp
	jmp	.label_1152
.label_1152:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1158
.label_1163:
	mov	qword ptr [rbp - 8], 0
.label_1157:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4145c0

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
	je	.label_1164
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
	jmp	.label_1165
.label_1164:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1165:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414640

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
	jne	.label_1168
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_1166
.label_1168:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1169
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1167
.label_1169:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1166:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146e0

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
	jne	.label_1175
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1181
.label_1175:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1174
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
	js	.label_1176
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1176:
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
	js	.label_1171
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1171:
	movss	xmm0, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1172
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
	js	.label_1182
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1182:
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
	js	.label_1178
	movss	xmm0, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1178:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1170
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1177
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
	js	.label_1185
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1185:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1173
.label_1177:
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
	js	.label_1184
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1184:
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
.label_1173:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
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
	jne	.label_1180
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1183:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1179
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
	jmp	.label_1183
.label_1179:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1180:
	lea	rsi, [rsi]
	jmp	.label_1170
.label_1170:
	jmp	.label_1172
.label_1172:
	nop	
	jmp	.label_1174
.label_1174:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1181:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414bb0

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
	jae	.label_1186
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0xa
.label_1186:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1190:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1188
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
.label_1188:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1189
	jmp	.label_1187
.label_1189:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1190
.label_1187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414c60

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
.label_1192:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	jae	.label_1191
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
.label_1191:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1194
	jmp	.label_1193
.label_1194:
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
	jmp	.label_1192
.label_1193:
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
	.align	32
	#Procedure 0x414d60

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
	#Procedure 0x414db0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
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
	#Procedure 0x414e20

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e60

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
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1195
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1195
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_1195:
	mov	al, byte ptr [rbp - 0x21]
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
	#Procedure 0x414f20
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	jne	.label_1196
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	jne	.label_1196
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1196:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
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
	#Procedure 0x415000

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
	#Procedure 0x415050

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
	jge	.label_1199
	nop	
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1199:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	je	.label_1197
	nop	
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1200
.label_1197:
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
.label_1200:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1198:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415150

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
	#Procedure 0x415160
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
	#Procedure 0x415170

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
	jne	.label_1203
	movabs	rdi, OFFSET FLAT:.str_14
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_1203:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1201
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1205
.label_1201:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1205:
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
	jl	.label_1204
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_9
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
	jne	.label_1204
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_6
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
	jne	.label_1202
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1202:
	jmp	.label_1204
.label_1204:
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
	#Procedure 0x4152f0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	call	get_permissions
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1206
	mov	dword ptr [rbp - 4], 0xfffffffe
	nop	
	jmp	.label_1207
.label_1206:
	lea	rdi, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	set_permissions
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1207:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415390

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rsp, rsp
	lea	rax, [rbp - 0x18]
	xor	ecx, ecx
	mov	r8d, 4
	mov	rsp, rsp
	mov	r9d, r8d
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, rax
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	memset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_permissions
	lea	rdi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415410
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
	je	.label_1209
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1208
.label_1209:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1208
.label_1208:
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
	#Procedure 0x4154c0
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
	je	.label_1210
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1211
.label_1210:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1211
.label_1211:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415520
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
	je	.label_1212
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1213
.label_1212:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415580

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
	je	.label_1214
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1215
.label_1214:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1215
.label_1215:
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
	#Procedure 0x415680
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
	jne	.label_1216
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1216:
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
	#Procedure 0x4156e0

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
	jne	.label_1217
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1217:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1219
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1218
.label_1219:
	call	abort
.label_1218:
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
	#Procedure 0x415780
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
	je	.label_1220
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1221
.label_1220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1221
.label_1221:
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
	#Procedure 0x415880

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
.label_1229:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1293
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1296]]
	jmp	rcx
.label_2361:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2360:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1307
	jmp	.label_1310
.label_1310:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1386
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1386:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1307
.label_1307:
	movabs	rax, OFFSET FLAT:.str.10_3
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1332
.label_2362:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1332
.label_2363:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1334
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_3
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_2
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1334:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1346
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1365:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1352
	jmp	.label_1353
.label_1353:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1356
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1360
.label_1360:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1365
.label_1352:
	mov	rbp, rbp
	jmp	.label_1346
.label_1346:
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
	jmp	.label_1332
.label_2358:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_2357:
	mov	byte ptr [rbp - 0x7b], 1
.label_2359:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1376
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_1376:
	jmp	.label_1371
.label_1371:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1381
	jmp	.label_1387
.label_1387:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1403
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1403:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1381
.label_1381:
	movabs	rax, OFFSET FLAT:.str.12_2
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_1332
.label_2356:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1332
.label_1293:
	call	abort
.label_1332:
	mov	qword ptr [rbp - 0x58], 0
.label_1378:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1408
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
	jmp	.label_1410
.label_1408:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_1410:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1223
	mov	rbp, rbp
	jmp	.label_1233
.label_1223:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1236
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_1236
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1236
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_1258
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1258
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1264
.label_1258:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1264:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1236
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
	jne	.label_1236
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_1284
	jmp	.label_1224
.label_1284:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_1236:
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
	ja	.label_1288
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1297]]
	nop	
	jmp	rcx
.label_2392:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_1305
	mov	rsp, rsp
	jmp	.label_1309
.label_1309:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1313
	jmp	.label_1224
.label_1313:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1335
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_1335
	nop	
	jmp	.label_1323
.label_1323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1324
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1333
.label_1333:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1338
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1345
.label_1345:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1350
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1350:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1335:
	lea	rsi, [rsi]
	jmp	.label_1380
.label_1380:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1358:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1362
.label_1362:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1299
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1299
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1299
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1299
	nop	
	jmp	.label_1246
.label_1246:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1379
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1388
.label_1388:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1392
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1392:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1299
.label_1299:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_1354
.label_1305:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1404
	mov	rbp, rbp
	jmp	.label_1359
.label_1404:
	jmp	.label_1354
.label_1354:
	jmp	.label_1247
.label_2403:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_1411
	mov	rbp, rbp
	jmp	.label_1416
.label_1416:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_1418
	jmp	.label_1225
.label_1411:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1228
	jmp	.label_1224
.label_1228:
	jmp	.label_1231
.label_1418:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1234
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1234
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
	je	.label_1252
	nop	
	jmp	.label_1409
.label_1409:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_1252
	jmp	.label_1266
.label_1266:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_1252
	jmp	.label_1269
.label_1269:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1252
	jmp	.label_1275
.label_1275:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_1277
	jmp	.label_1252
.label_1252:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1285
	jmp	.label_1224
.label_1285:
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
	jae	.label_1291
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1291:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1306
.label_1306:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1312
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1312:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1317
.label_1317:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1322
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1322:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1331
.label_1331:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1239
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1239:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1343
.label_1277:
	jmp	.label_1343
.label_1343:
	jmp	.label_1234
.label_1234:
	jmp	.label_1231
.label_1225:
	jmp	.label_1231
.label_1231:
	jmp	.label_1247
.label_2393:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1351
.label_2394:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1351
.label_2398:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_1351
.label_2396:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_1340
.label_2399:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_1340
.label_2395:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1340
.label_2397:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1351
.label_2404:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1419
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1364
	nop	
	jmp	.label_1224
.label_1364:
	lea	rsi, [rsi]
	jmp	.label_1245
.label_1419:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1369
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1369
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_1369
	jmp	.label_1245
.label_1369:
	jmp	.label_1340
.label_1340:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_1375
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1375
	jmp	.label_1224
.label_1375:
	mov	rsp, rsp
	jmp	.label_1351
.label_1351:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1383
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1272
.label_1383:
	jmp	.label_1247
.label_2405:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1390
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1393
	jmp	.label_1396
.label_1390:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1393
.label_1396:
	nop	
	jmp	.label_1247
.label_1393:
	jmp	.label_1401
.label_1401:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1303
	lea	rsi, [rsi]
	jmp	.label_1247
.label_1303:
	nop	
	jmp	.label_1407
.label_1407:
	mov	byte ptr [rbp - 0x83], 1
.label_2400:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1363
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1363
	jmp	.label_1224
.label_1363:
	lea	rsi, [rsi]
	jmp	.label_1247
.label_2402:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1415
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1422
	jmp	.label_1224
.label_1422:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1227
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1227
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1227:
	jmp	.label_1240
.label_1240:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1241
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1249
.label_1249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1255
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1255:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1262
.label_1262:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1282
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1282:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1415:
	lea	rsi, [rsi]
	jmp	.label_1247
.label_2401:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1247
.label_1288:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1279
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
	jmp	.label_1254
.label_1279:
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
	jne	.label_1308
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1308:
	jmp	.label_1318
.label_1318:
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
	jne	.label_1336
	jmp	.label_1271
.label_1336:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1344
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1271
.label_1344:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1347
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1367:
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
	jae	.label_1349
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1349:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1267
	jmp	.label_1366
.label_1267:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1367
.label_1366:
	jmp	.label_1271
.label_1347:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1302
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1302
	mov	qword ptr [rbp - 0xb8], 1
.label_1384:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_1374
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
	jb	.label_1377
	jmp	.label_1394
.label_1394:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1377
	jmp	.label_1398
.label_1398:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_1377
	jmp	.label_1405
.label_1405:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1406
	mov	rsp, rsp
	jmp	.label_1377
.label_1377:
	mov	rsp, rsp
	jmp	.label_1224
.label_1406:
	jmp	.label_1412
.label_1412:
	mov	rsp, rsp
	jmp	.label_1373
.label_1373:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1384
.label_1374:
	mov	rbp, rbp
	jmp	.label_1302
.label_1302:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1226
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1226:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1230
.label_1230:
	lea	rsi, [rsi]
	jmp	.label_1304
.label_1304:
	jmp	.label_1242
.label_1242:
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
	jne	.label_1318
.label_1271:
	jmp	.label_1254
.label_1254:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_1256
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1263
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_1263
.label_1256:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_1232:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_1270
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1270
	jmp	.label_1274
.label_1274:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1276
	jmp	.label_1224
.label_1276:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1283
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1283
	lea	rdi, [rdi]
	jmp	.label_1289
.label_1289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1292
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1292:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1295
.label_1295:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1301
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1301:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1314
.label_1314:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1341
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1341:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1283:
	jmp	.label_1325
.label_1325:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1328
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1328:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1315
.label_1315:
	jmp	.label_1339
.label_1339:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1342
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
.label_1342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1320
.label_1320:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1286
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
.label_1286:
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
	jmp	.label_1361
.label_1270:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_1368
	lea	rdi, [rdi]
	jmp	.label_1370
.label_1370:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1372
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1372:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_1368:
	nop	
	jmp	.label_1361
.label_1361:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1382
	jmp	.label_1389
.label_1382:
	lea	rsi, [rsi]
	jmp	.label_1414
.label_1414:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1391
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1391
	lea	rsi, [rsi]
	jmp	.label_1395
.label_1395:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1397
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1397:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1402
.label_1402:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1329
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1329:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1391:
	nop	
	jmp	.label_1417
.label_1417:
	mov	rsp, rsp
	jmp	.label_1420
.label_1420:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1421
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1421:
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
	jmp	.label_1232
.label_1389:
	mov	rsp, rsp
	jmp	.label_1245
.label_1263:
	lea	rsi, [rsi]
	jmp	.label_1247
.label_1247:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_1250
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1253
.label_1250:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1257
.label_1253:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1257
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
	jne	.label_1259
.label_1257:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_1259
	mov	rsp, rsp
	jmp	.label_1245
.label_1259:
	nop	
	jmp	.label_1272
.label_1272:
	jmp	.label_1327
.label_1327:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_1273
	jmp	.label_1224
.label_1273:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1281
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_1281
	lea	rdi, [rdi]
	jmp	.label_1287
.label_1287:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1290
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1290:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1294
.label_1294:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1300
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1300:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1311
.label_1311:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1316
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1316:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1281:
	jmp	.label_1326
.label_1326:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1399
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1399:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1337
.label_1337:
	nop	
	jmp	.label_1245
.label_1245:
	jmp	.label_1278
.label_1278:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1298
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1298
	lea	rdi, [rdi]
	jmp	.label_1348
.label_1348:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1330
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1330:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1355
.label_1355:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1357
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1357:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1298:
	jmp	.label_1260
.label_1260:
	nop	
	jmp	.label_1265
.label_1265:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1413
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1413:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1321
	mov	byte ptr [rbp - 0x7e], 0
.label_1321:
	mov	rbp, rbp
	jmp	.label_1359
.label_1359:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1378
.label_1233:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_1385
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_1385
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1385
	nop	
	jmp	.label_1224
.label_1385:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1237
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1237
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1237
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1400
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
	jmp	.label_1319
.label_1400:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1222
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_1222
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1229
.label_1222:
	jmp	.label_1235
.label_1235:
	mov	rbp, rbp
	jmp	.label_1237
.label_1237:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1238
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1238
	mov	rbp, rbp
	jmp	.label_1243
.label_1243:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1244
	lea	rdi, [rdi]
	jmp	.label_1248
.label_1248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1251
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1251:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1261
.label_1261:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1243
.label_1244:
	jmp	.label_1238
.label_1238:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1268
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1268:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1319
.label_1224:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1280
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1280
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_1280:
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
.label_1319:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4171a0
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
	#Procedure 0x417210

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
	je	.label_1423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1424
.label_1423:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1424
.label_1424:
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
	je	.label_1425
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1425:
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
	#Procedure 0x4173e0
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
.label_1430:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1429
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
	jmp	.label_1430
.label_1429:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1428
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1426]],  rax
.label_1428:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1427
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1427:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4174f0

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
	#Procedure 0x417540

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
	jge	.label_1436
	call	abort
.label_1436:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1432
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
	jge	.label_1433
	call	xalloc_die
.label_1433:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1434
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1437
.label_1434:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1437:
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
	je	.label_1435
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1426]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1435:
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
.label_1432:
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
	ja	.label_1431
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
	je	.label_1438
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_1438:
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
.label_1431:
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
	#Procedure 0x417870

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
	#Procedure 0x4178b0
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
	#Procedure 0x4178e0
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
	#Procedure 0x417920

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
	#Procedure 0x417980

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
	jne	.label_1439
	call	abort
.label_1439:
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
	#Procedure 0x417a20

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
	#Procedure 0x417a90

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
	#Procedure 0x417ad0
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
	#Procedure 0x417b10

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
	#Procedure 0x417bc0

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
	#Procedure 0x417c00

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
	#Procedure 0x417c30
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
	#Procedure 0x417c70

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
	#Procedure 0x417d60

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
	#Procedure 0x417db0

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
	#Procedure 0x417e50
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
	#Procedure 0x417ea0
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
	#Procedure 0x417f00

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
	#Procedure 0x417f40
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
	#Procedure 0x417f80

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
	#Procedure 0x417fc0

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
	#Procedure 0x418000

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
	je	.label_1443
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1441
.label_1443:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_2
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1442
	movabs	rax, OFFSET FLAT:.str.15_3
	movabs	rcx, OFFSET FLAT:.str.14_2
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1441
.label_1442:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1440
	nop	
	movabs	rax, OFFSET FLAT:.str.18_2
	movabs	rcx, OFFSET FLAT:.str.17_3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1441
.label_1440:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_2
	movabs	rcx, OFFSET FLAT:.str.10_3
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1441:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418140

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x180
	mov	eax, 0x13c
	mov	rsp, rsp
	mov	r9d, eax
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	dword ptr [rbp - 0x2c], 0x16
	nop	
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x24]
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
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jge	.label_1467
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_1462
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0x26
	mov	rbp, rbp
	je	.label_1462
	cmp	dword ptr [rbp - 0x2c], 0x5f
	lea	rsi, [rsi]
	je	.label_1462
.label_1467:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1445
.label_1462:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	je	.label_1447
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	and	eax, 0xfffffffe
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1458
	mov	rbp, rbp
	mov	edi, 0x5f
	mov	rsp, rsp
	call	errno_fail
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1445
.label_1458:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x178]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	lstatat
	cmp	eax, 0
	je	.label_1449
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1452
.label_1449:
	lea	rsi, [rsi]
	mov	edi, 0x11
	lea	rdi, [rdi]
	call	errno_fail
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1445
.label_1452:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	lea	rdi, [rdi]
	je	.label_1459
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1445
.label_1459:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_1447
.label_1447:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_1448
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1453
.label_1448:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1445
.label_1453:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x2f
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x52], sil
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	jne	.label_1456
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1456
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1445
.label_1456:
	mov	rbp, rbp
	lea	rdx, [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	lstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1465
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1445
.label_1465:
	test	byte ptr [rbp - 0x179], 1
	je	.label_1450
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_1457
	mov	edi, 2
	call	errno_fail
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1445
.label_1457:
	mov	rbp, rbp
	jmp	.label_1460
.label_1450:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x178]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_1464
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_1446
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1451
.label_1446:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1445
.label_1451:
	jmp	.label_1455
.label_1464:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_1461
	mov	edi, 0x14
	nop	
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1445
.label_1461:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_1466
	mov	rsp, rsp
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_1445
.label_1466:
	jmp	.label_1454
.label_1454:
	lea	rdi, [rdi]
	jmp	.label_1455
.label_1455:
	jmp	.label_1460
.label_1460:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	renameat
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], edx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	je	.label_1463
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	free
.label_1463:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1444
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_1444:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x180]
	nop	
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_1445:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x180
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4185d0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 8]
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
	#Procedure 0x418610

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
	je	.label_1469
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1468
.label_1469:
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
.label_1468:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4186a0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1471:
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
	jg	.label_1473
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1472
.label_1473:
	call	__errno_location
	cmp	dword ptr [rax], 4
	nop	
	jne	.label_1476
	nop	
	jmp	.label_1471
.label_1476:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_1474
	mov	eax, 0x7ff00000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1474
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1470
.label_1474:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1472
.label_1470:
	jmp	.label_1475
.label_1475:
	jmp	.label_1477
.label_1477:
	jmp	.label_1471
.label_1472:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418780

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
	#Procedure 0x4187d0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x181], r8b
	lea	rsi, [rsi]
	jne	.label_1482
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x181], cl
.label_1482:
	mov	al, byte ptr [rbp - 0x181]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	lea	rsi, [rsi]
	je	.label_1478
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1481
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_1481:
	nop	
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1480
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x180]
	nop	
	mov	al, 0
	nop	
	call	error
.label_1480:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	lea	rdi, [rdi]
	jne	.label_1479
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x182], cl
.label_1479:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	call	free
.label_1478:
	mov	al, byte ptr [rbp - 0x43]
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
	#Procedure 0x418a30

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	esi, dword ptr [rbp - 0x14]
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [+ (rdi * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1490
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1491
.label_1490:
	jmp	.label_1493
.label_1493:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1497
	jmp	.label_1499
.label_1497:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1500
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	jmp	.label_1485
.label_1500:
	mov	eax, 2
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	movsx	esi, byte ptr [rdx + 1]
	mov	rsp, rsp
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
.label_1485:
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1495
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	nop	
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1501
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jne	.label_1484
	lea	rsi, [rbp - 0x78]
	mov	eax, 0x10
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1484:
	mov	rdi, qword ptr [rbp - 0x68]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1498
.label_1501:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	ja	.label_1488
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jae	.label_1492
	call	xalloc_die
.label_1492:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x80]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1488:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	memcpy
.label_1498:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1495:
	jmp	.label_1493
.label_1499:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	je	.label_1494
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x98], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1491
.label_1494:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	je	.label_1486
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1502
	mov	rbp, rbp
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	call	qsort
.label_1502:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	qword ptr [rbp - 0x88], 0
.label_1489:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1487
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x90]
	sub	rax, rsi
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1489
.label_1487:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	jmp	.label_1483
.label_1486:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_1496
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1496:
	mov	rbp, rbp
	jmp	.label_1483
.label_1483:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1491:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ec0

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	opendir_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_1505
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1503
.label_1505:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	closedir
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1504
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1503
.label_1504:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1503:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418f80

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	call	strcmp
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418fd0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jae	.label_1506
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jmp	.label_1507
.label_1506:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], esi
.label_1507:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419060
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419090

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4190a0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4190d0

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419110
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, esi
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419150
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419190

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4191d0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419210
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419250
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419290
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4192d0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419310
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419350
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419390
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ax, dx
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4193e0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419410
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419450

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
	.align	32
	#Procedure 0x419470

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
	.align	32
	#Procedure 0x419490

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
	.align	32
	#Procedure 0x4194b0
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
	.align	32
	#Procedure 0x4194d0

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
	.align	32
	#Procedure 0x419500
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
	.align	32
	#Procedure 0x419530

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
	.align	32
	#Procedure 0x419560
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
	.align	32
	#Procedure 0x4195a0
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
	.align	32
	#Procedure 0x4195c0
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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419600

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
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419650

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x48], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], esi
	nop	
	mov	dword ptr [rbp - 0x5c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1512
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	nop	
	call	check_x_suffix
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1519
.label_1512:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1508
.label_1519:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	call	randint_all_new
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1509
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1508
.label_1509:
	mov	dword ptr [rbp - 0x44], 0
.label_1511:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_1515
	mov	qword ptr [rbp - 0x68], 0
.label_1517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jae	.label_1510
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	nop	
	jmp	.label_1517
.label_1510:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	nop	
	jl	.label_1518
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	nop	
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_1513
.label_1518:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x11
	lea	rdi, [rdi]
	je	.label_1514
	mov	dword ptr [rbp - 0x48], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1513
.label_1514:
	jmp	.label_1516
.label_1516:
	jmp	.label_1520
.label_1520:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_1511
.label_1515:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1508
.label_1513:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x78], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 4], ecx
.label_1508:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4198e0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.2_7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rax
	call	strspn
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
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
	#Procedure 0x419940

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	je	.label_1521
	mov	rsp, rsp
	jmp	.label_1526
.label_1526:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1527
	jmp	.label_1524
.label_1524:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1525
	mov	rbp, rbp
	jmp	.label_1523
.label_1521:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1522
.label_1527:
	movabs	rax, OFFSET FLAT:try_dir
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1522
.label_1525:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1522
.label_1523:
	movabs	rdi, OFFSET FLAT:.str_15
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_1522:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
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
	#Procedure 0x419a50

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
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
	#Procedure 0x419ab0

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
	#Procedure 0x419af0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	__lstat
	cmp	eax, 0
	je	.label_1529
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1528
.label_1529:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1528:
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
	#Procedure 0x419b70
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	dword ptr [rbp - 0x10], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419bc0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x419c20

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
	jg	.label_1530
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1530
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
.label_1530:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419cb0

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	edi, eax
	call	utimecmpat
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d10

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1d0
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x58]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	mov	rsp, rsp
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	mov	r8d, dword ptr [rbp - 0x24]
	and	r8d, 1
	lea	rsi, [rsi]
	cmp	r8d, 0
	je	.label_1543
	mov	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jne	.label_1553
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_1553
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_1531
.label_1553:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 2
	cmp	rax, rcx
	nop	
	jg	.label_1567
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1531
.label_1567:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, 2
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jg	.label_1574
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1531
.label_1574:
	nop	
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1536
	lea	rsi, [rsi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1536:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1549
	nop	
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1551
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edi, eax
	call	malloc
	nop	
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1557
	mov	rsp, rsp
	jmp	.label_1537
.label_1557:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1551:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_insert
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1533
	mov	rbp, rbp
	jmp	.label_1537
.label_1533:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	jne	.label_1538
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1538:
	nop	
	jmp	.label_1566
.label_1549:
	jmp	.label_1537
.label_1537:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1544
	lea	rax, [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	mov	rbp, rbp
	call	hash_lookup
	mov	qword ptr [rbp - 0x48], rax
.label_1544:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1555
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 0
.label_1555:
	mov	rsp, rsp
	jmp	.label_1566
.label_1566:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0xc], 1
	lea	rdi, [rdi]
	jne	.label_1568
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	get_stat_atime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	get_stat_ctime_ns
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x80], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rax, qword ptr [rbp - 0x68]
	or	rax, qword ptr [rbp - 0x70]
	or	rax, qword ptr [rbp - 0x78]
	and	rax, 1
	cmp	rax, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x85], dl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x94], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], 1
	imul	ecx, dword ptr [rbp - 0x98], 0xa
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x90]
	mov	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x168], edx
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x168]
	or	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [rbp - 0x98]
	or	ecx, edx
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1541
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1535
.label_1541:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x16c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x16c]
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x170], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	nop	
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	idiv	edi
	mov	dword ptr [rbp - 0x94], eax
.label_1559:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x175], cl
	jge	.label_1573
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x17c], eax
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x17c]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x180], edx
	cdq	
	nop	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	or	esi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	or	esi, edx
	cmp	esi, 0
	mov	rbp, rbp
	sete	dil
	mov	byte ptr [rbp - 0x175], dil
.label_1573:
	mov	al, byte ptr [rbp - 0x175]
	test	al, 1
	jne	.label_1542
	jmp	.label_1546
.label_1542:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	lea	rdi, [rdi]
	jne	.label_1547
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x85], 1
	jne	.label_1550
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	shl	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
.label_1550:
	jmp	.label_1546
.label_1547:
	jmp	.label_1563
.label_1563:
	mov	eax, 0xa
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x5c], 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	ecx, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x184], eax
	mov	rsp, rsp
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0x184]
	nop	
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x90], eax
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_1559
.label_1546:
	mov	rsp, rsp
	jmp	.label_1535
.label_1535:
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rdx + 8], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	jge	.label_1534
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x188], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	mov	esi, dword ptr [rbp - 0x40]
	sub	esi, edx
	mov	dword ptr [rbp - 0x40], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	mov	edx, dword ptr [rbp - 0x188]
	cmove	edx, ecx
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	movsxd	r8, edx
	mov	rsp, rsp
	and	rdi, r8
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rbp - 0x30]
	jl	.label_1540
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jne	.label_1556
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_1556
.label_1540:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1531
.label_1556:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	jl	.label_1561
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	jne	.label_1569
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x18c]
	cmp	edx, ecx
	jge	.label_1569
.label_1561:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1531
.label_1569:
	lea	rdi, [rdi]
	mov	ecx, 0x100
	lea	rdx, [rbp - 0xc0]
	mov	eax, 9
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc0], rsi
	movsxd	rsi, dword ptr [rbp - 0x7c]
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	sete	dil
	and	dil, 1
	movzx	r8d, dil
	nop	
	movsxd	r9, r8d
	mov	rsp, rsp
	or	rsi, r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rsi
	nop	
	mov	r8d, dword ptr [rbp - 0x84]
	mov	r10d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, r10d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], rdx
	cdq	
	mov	r10d, dword ptr [rbp - 0x190]
	mov	rbp, rbp
	idiv	r10d
	add	r8d, eax
	mov	rsp, rsp
	movsxd	rsi, r8d
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x198]
	mov	rdx, r9
	call	utimensat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1571
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1531
.label_1571:
	lea	rdx, [rbp - 0x150]
	mov	ecx, 0x100
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	fstatat
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x150]
	mov	dword ptr [rbp - 0x15c], eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x15c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	xor	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	or	rdx, rsi
	mov	qword ptr [rbp - 0x1a0], rdx
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	movsxd	rdx, dword ptr [rbp - 0x84]
	xor	rax, rdx
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	or	rdx, rax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1545
	mov	ecx, 0x100
	mov	rsp, rsp
	lea	rdx, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	movsxd	rax, dword ptr [rbp - 0x84]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	utimensat
	mov	dword ptr [rbp - 0x1a4], eax
.label_1545:
	nop	
	cmp	dword ptr [rbp - 0x15c], 0
	je	.label_1565
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1531
.label_1565:
	lea	rdi, [rbp - 0x150]
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x160], eax
	nop	
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	and	rcx, 1
	mov	rbp, rbp
	imul	rcx, rcx, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], rcx
	call	get_stat_mtime_ns
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b0]
	add	rcx, rax
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], edx
	mov	dword ptr [rbp - 0x5c], 1
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	mov	eax, dword ptr [rbp - 0x164]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x1b4]
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0x164], eax
.label_1572:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x164]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b8], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	idiv	ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1539
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	mov	rsp, rsp
	jne	.label_1558
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	jmp	.label_1539
.label_1558:
	nop	
	imul	eax, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	cmp	eax, dword ptr [rbp - 0x160]
	mov	rbp, rbp
	jne	.label_1564
	jmp	.label_1539
.label_1564:
	mov	rbp, rbp
	jmp	.label_1548
.label_1548:
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1bc]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x164], eax
	mov	rbp, rbp
	jmp	.label_1572
.label_1539:
	jmp	.label_1534
.label_1534:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0xc], 1
.label_1568:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	cmove	eax, ecx
	xor	eax, 0xffffffff
	movsxd	rdx, eax
	mov	rbp, rbp
	and	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x40]
	sub	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x40], ecx
.label_1543:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jge	.label_1552
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rbp, rbp
	jmp	.label_1554
.label_1552:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	jle	.label_1560
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_1562
.label_1560:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_1532
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c8], eax
	mov	rsp, rsp
	jmp	.label_1570
.label_1532:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	setg	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0x1c8], eax
.label_1570:
	mov	eax, dword ptr [rbp - 0x1c8]
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
.label_1562:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [rbp - 0x1c0], eax
.label_1554:
	mov	eax, dword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_1531:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a850

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rdx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a890

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a8e0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	ecx, 0x100
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	utimensat
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a920

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_1608
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x188], rax
	jmp	.label_1589
.label_1608:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rcx
	lea	rsi, [rsi]
	jmp	.label_1589
.label_1589:
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1583
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	validate_timespec
	mov	dword ptr [rbp - 0x4c], eax
.label_1583:
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	jge	.label_1609
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1577
.label_1609:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1575
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1575
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1577
.label_1575:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1580
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1586
	cmp	dword ptr [rbp - 8], 0
	nop	
	jge	.label_1607
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1593
	mov	rbp, rbp
	jmp	.label_1599
.label_1607:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	je	.label_1599
.label_1593:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1577
.label_1599:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	qword ptr [rax + 8], 0x3ffffffe
	lea	rdi, [rdi]
	jne	.label_1605
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x190]
	nop	
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1598
.label_1605:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1579
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x198], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rax
.label_1579:
	jmp	.label_1598
.label_1598:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1586:
	nop	
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jge	.label_1581
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	nop	
	jge	.label_1613
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
.label_1613:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xe4], 0
	nop	
	je	.label_1585
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1611
.label_1585:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1577
.label_1611:
	mov	rsp, rsp
	jmp	.label_1581
.label_1581:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	jg	.label_1582
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	futimens
	mov	rsp, rsp
	xor	edi, edi
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	cmp	edi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	jge	.label_1587
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
.label_1587:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1594
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rbp, rbp
	je	.label_1600
.label_1594:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xe4]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1577
.label_1600:
	mov	rbp, rbp
	jmp	.label_1582
.label_1582:
	jmp	.label_1580
.label_1580:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1601
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1584
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jge	.label_1596
	mov	rbp, rbp
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	stat
	cmp	eax, 0
	jne	.label_1576
	mov	rsp, rsp
	jmp	.label_1584
.label_1596:
	nop	
	lea	rsi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1584
.label_1576:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1577
.label_1584:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1590
	lea	rdi, [rbp - 0xe0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x48]
	mov	rsp, rsp
	call	update_timespec
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1597
	jmp	.label_1590
.label_1597:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1577
.label_1590:
	jmp	.label_1601
.label_1601:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_1602
	lea	rax, [rbp - 0x130]
	mov	ecx, 0x3e8
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x130], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	idiv	rsi
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cqo	
	idiv	rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1606
.label_1602:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], 0
.label_1606:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1591
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1577
.label_1591:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	call	futimesat
	cmp	eax, 0
	jne	.label_1603
	cmp	qword ptr [rbp - 0x138], 0
	nop	
	je	.label_1592
	mov	eax, 0x7a120
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x139], sil
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x13a], sil
	mov	rbp, rbp
	mov	sil, byte ptr [rbp - 0x139]
	and	sil, 1
	movzx	eax, sil
	mov	sil, byte ptr [rbp - 0x13a]
	and	sil, 1
	mov	rbp, rbp
	movzx	edi, sil
	nop	
	or	eax, edi
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1588
	mov	rsp, rsp
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_1588
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x138]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x148], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x150], rax
	mov	qword ptr [rbp - 0x158], 0
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x178], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x170], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x139], 1
	lea	rdi, [rdi]
	je	.label_1578
	cmp	qword ptr [rbp - 0x148], 1
	mov	rbp, rbp
	jne	.label_1578
	lea	rdi, [rbp - 0xe0]
	mov	rsp, rsp
	call	get_stat_atime_ns
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1578
	lea	rax, [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_1578:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13a], 1
	nop	
	je	.label_1595
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x150], 1
	jne	.label_1595
	lea	rdi, [rbp - 0xe0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1595
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
.label_1595:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_1604
	xor	eax, eax
	nop	
	mov	esi, eax
	nop	
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x158]
	call	futimesat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], eax
.label_1604:
	nop	
	jmp	.label_1588
.label_1588:
	lea	rdi, [rdi]
	jmp	.label_1592
.label_1592:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1577
.label_1603:
	lea	rsi, [rsi]
	jmp	.label_1610
.label_1610:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1612
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1577
.label_1612:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x138]
	call	utimes
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_1577:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x1b0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b140

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], 0x3fffffff
	je	.label_1614
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rbp, rbp
	je	.label_1614
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1616
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	lea	rsi, [rsi]
	jge	.label_1616
.label_1614:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rsp, rsp
	je	.label_1617
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	je	.label_1617
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	jg	.label_1616
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	mov	rbp, rbp
	jl	.label_1617
.label_1616:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1622
.label_1617:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	mov	rbp, rbp
	je	.label_1618
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1620
.label_1618:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1619
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1619:
	jmp	.label_1620
.label_1620:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1621
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1623
.label_1621:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1615
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1615:
	mov	rbp, rbp
	jmp	.label_1623
.label_1623:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	dword ptr [rbp - 0x18], 1
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 4], eax
.label_1622:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b330

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1626
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1626
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1624
.label_1626:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	lea	rsi, [rsi]
	jne	.label_1625
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rbp, rbp
	jne	.label_1625
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1624
.label_1625:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1630
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rax
	lea	rdi, [rdi]
	jmp	.label_1628
.label_1630:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0x3fffffff
	nop	
	jne	.label_1629
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	gettime
.label_1629:
	jmp	.label_1628
.label_1628:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1632
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rax
	mov	rbp, rbp
	jmp	.label_1627
.label_1632:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1631
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rdi, rax
	call	gettime
.label_1631:
	nop	
	jmp	.label_1627
.label_1627:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
.label_1624:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b510

	.globl utimens
	.type utimens, @function
utimens:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	fdutimens
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b550

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1648
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	jmp	.label_1633
.label_1648:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rcx
	lea	rsi, [rsi]
	jmp	.label_1633
.label_1633:
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1638
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	validate_timespec
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1638:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1646
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1635
.label_1646:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	nop	
	jg	.label_1634
	cmp	dword ptr [rbp - 0x4c], 2
	lea	rsi, [rsi]
	jne	.label_1640
	mov	rbp, rbp
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1647
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1635
.label_1647:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1651
	lea	rdi, [rbp - 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1639
.label_1651:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1649
	mov	rsp, rsp
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	qword ptr [rdx + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x18], rax
.label_1649:
	nop	
	jmp	.label_1639
.label_1639:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1640:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	jge	.label_1643
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1643:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1652
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1641
.label_1652:
	nop	
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1635
.label_1641:
	mov	rsp, rsp
	jmp	.label_1634
.label_1634:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	je	.label_1636
	nop	
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1642
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1642
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1635
.label_1642:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_1645
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1650
	jmp	.label_1645
.label_1650:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_1635
.label_1645:
	mov	rsp, rsp
	jmp	.label_1636
.label_1636:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1637
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1637
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1635
.label_1637:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_1644
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	fdutimens
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1635
.label_1644:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1635:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b930

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
	je	.label_1656
	movabs	rsi, OFFSET FLAT:.str_16
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
	jmp	.label_1655
.label_1656:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1655:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_8
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
	mov	ecx, OFFSET FLAT:.str.3_5
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
	ja	.label_1653
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1657]]
	jmp	rcx
.label_2410:
	jmp	.label_1654
.label_2411:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_2
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
	jmp	.label_1654
.label_2412:
	movabs	rdi, OFFSET FLAT:.str.5_3
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
	jmp	.label_1654
.label_2413:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_2
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
	jmp	.label_1654
.label_2414:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_2
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
	jmp	.label_1654
.label_2415:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_2
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
	jmp	.label_1654
.label_2416:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_2
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
	jmp	.label_1654
.label_2417:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_4
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
	jmp	.label_1654
.label_2418:
	movabs	rdi, OFFSET FLAT:.str.11_4
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
	jmp	.label_1654
.label_2419:
	movabs	rdi, OFFSET FLAT:.str.12_3
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
	jmp	.label_1654
.label_1653:
	movabs	rdi, OFFSET FLAT:.str.13_3
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
.label_1654:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c0a0
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
.label_1658:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1659
	mov	rbp, rbp
	jmp	.label_1660
.label_1660:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1658
.label_1659:
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
	#Procedure 0x41c150

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
.label_1663:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1662
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1665
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
	jmp	.label_1666
.label_1665:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1666:
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
.label_1662:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1661
	mov	rsp, rsp
	jmp	.label_1664
.label_1661:
	jmp	.label_1667
.label_1667:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1663
.label_1664:
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
	#Procedure 0x41c2b0

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
	je	.label_1668
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
.label_1668:
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
	#Procedure 0x41c460
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_3
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
	movabs	rdi, OFFSET FLAT:.str.19_2
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
	#Procedure 0x41c510

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
	jne	.label_1669
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
.label_1669:
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
	.align	32
	#Procedure 0x41c580
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
	jae	.label_1670
	mov	rbp, rbp
	call	xalloc_die
.label_1670:
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
	#Procedure 0x41c5e0

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
	jne	.label_1671
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1671
	lea	rdi, [rdi]
	call	xalloc_die
.label_1671:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c640

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
	jae	.label_1672
	mov	rsp, rsp
	call	xalloc_die
.label_1672:
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
	#Procedure 0x41c6c0

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
	jne	.label_1673
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1673
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1675
.label_1673:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1674
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1674
	lea	rsi, [rsi]
	call	xalloc_die
.label_1674:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1675:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c770

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
	jne	.label_1676
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1678
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
.label_1678:
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
	jae	.label_1680
	call	xalloc_die
.label_1680:
	lea	rsi, [rsi]
	jmp	.label_1679
.label_1676:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1677
	call	xalloc_die
.label_1677:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1679:
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
	#Procedure 0x41c8a0

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
	#Procedure 0x41c8d0
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
	#Procedure 0x41c910
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
	#Procedure 0x41c960
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
	jb	.label_1681
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1682
.label_1681:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1682:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c9d0

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
	#Procedure 0x41ca20

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
	#Procedure 0x41ca80

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_12
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_7
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41cae0

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
	jne	.label_1685
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_1684
	lea	rdi, [rdi]
	jmp	.label_1683
.label_1684:
	nop	
	movabs	rdi, OFFSET FLAT:.str_17
	movabs	rsi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1683:
	lea	rdi, [rdi]
	call	xalloc_die
.label_1685:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cb90
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
	je	.label_1686
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
	je	.label_1688
.label_1686:
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
	je	.label_1687
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
	je	.label_1687
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_1687:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_1688:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cc60

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x10]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jg	.label_1690
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1689
.label_1690:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	jne	.label_1691
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1691:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpmatch
	nop	
	xor	ecx, ecx
	nop	
	cmp	ecx, eax
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1689:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x41cd30

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
	je	.label_1692
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1693
.label_1692:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1694
.label_1693:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1694:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cda0

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
	je	.label_1695
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
.label_1695:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ce00

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x20]
	nop	
	jbe	.label_1696
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1697
.label_1696:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	mov	rbp, rbp
	cmp	edx, 0
	mov	qword ptr [rbp - 0x18], rax
	je	.label_1698
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1699
.label_1698:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	jmp	.label_1699
.label_1699:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
.label_1697:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ced0

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
	jne	.label_1700
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1700
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1700
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
	jne	.label_1701
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1702
.label_1701:
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
	jmp	.label_1702
.label_1700:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1702:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cfe0

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
	je	.label_1737
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1710
.label_1737:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1712
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x200
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1712
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1710
.label_1712:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x12
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1726
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1710
.label_1726:
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
	jne	.label_1734
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1710
.label_1734:
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
	je	.label_1706
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
.label_1706:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1728
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1728
	jmp	.label_1738
.label_1738:
	movabs	rdi, OFFSET FLAT:.str_3
	xor	esi, esi
	mov	al, 0
	nop	
	call	open_safer
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jge	.label_1732
	mov	rsp, rsp
	jmp	.label_1733
.label_1732:
	mov	edi, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0x74], eax
.label_1733:
	jmp	.label_1728
.label_1728:
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
	jbe	.label_1740
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_1708
.label_1740:
	mov	rsp, rsp
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1708
.label_1708:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	rsp, rsp
	call	fts_palloc
	test	al, 1
	jne	.label_1719
	jmp	.label_1721
.label_1719:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1722
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
	jne	.label_1729
	mov	rsp, rsp
	jmp	.label_1730
.label_1729:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x68], -1
.label_1722:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x89], al
	mov	rbp, rbp
	je	.label_1735
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], dl
.label_1735:
	mov	al, byte ptr [rbp - 0x89]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_1727:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1715
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
	jne	.label_1714
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
	jae	.label_1713
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_1713
	nop	
	jmp	.label_1709
.label_1709:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x8a], cl
	jae	.label_1724
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
.label_1724:
	nop	
	mov	al, byte ptr [rbp - 0x8a]
	test	al, 1
	jne	.label_1703
	mov	rbp, rbp
	jmp	.label_1707
.label_1703:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_1709
.label_1707:
	lea	rdi, [rdi]
	jmp	.label_1713
.label_1713:
	jmp	.label_1714
.label_1714:
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
	jne	.label_1718
	jmp	.label_1704
.label_1718:
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
	je	.label_1723
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_1723
	nop	
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x30]
	call	fts_set_stat_required
	jmp	.label_1736
.label_1723:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	word ptr [rsi + 0x70], ax
.label_1736:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1741
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1705
.label_1741:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_1711
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1731
.label_1711:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_1731:
	lea	rsi, [rsi]
	jmp	.label_1705
.label_1705:
	lea	rsi, [rsi]
	jmp	.label_1725
.label_1725:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1727
.label_1715:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1716
	cmp	qword ptr [rbp - 0x40], 1
	nop	
	jbe	.label_1716
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	fts_sort
	mov	qword ptr [rbp - 0x38], rax
.label_1716:
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
	jne	.label_1739
	jmp	.label_1704
.label_1739:
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
	jne	.label_1717
	lea	rsi, [rsi]
	jmp	.label_1704
.label_1717:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_1720
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1720
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	diropen
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_1720
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_1720:
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
	jmp	.label_1710
.label_1704:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	free
.label_1730:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_1721:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1710:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d770

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
.label_1744:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_1743
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
	jbe	.label_1745
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1745:
	jmp	.label_1742
.label_1742:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1744
.label_1743:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d7f0

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
	jae	.label_1746
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
	jmp	.label_1748
.label_1746:
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
	jne	.label_1747
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
	jmp	.label_1748
.label_1747:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_1748:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d900

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
	jne	.label_1749
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1750
.label_1749:
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
.label_1750:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41da40

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
	je	.label_1751
	lea	rdi, [rdi]
	call	abort
.label_1751:
	nop	
	jmp	.label_1752
.label_1752:
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
	.align	32
	#Procedure 0x41dac0

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
	jne	.label_1753
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_1753
	mov	byte ptr [rbp - 0x19], 1
.label_1753:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1763
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_1769
.label_1763:
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
	je	.label_1764
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1761
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1761
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp - 2], 0xd
	jmp	.label_1757
.label_1761:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_1756
.label_1764:
	jmp	.label_1755
.label_1769:
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
	je	.label_1754
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], ecx
.label_1756:
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
	jmp	.label_1757
.label_1754:
	lea	rdi, [rdi]
	jmp	.label_1755
.label_1755:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1758
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_1767
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_1759
.label_1767:
	mov	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1766
.label_1759:
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
.label_1766:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax + 0x108]
	lea	rdi, [rdi]
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	jne	.label_1760
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_1765
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x109]
	nop	
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_1760
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_1760
.label_1765:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	nop	
	mov	word ptr [rbp - 2], si
	mov	rbp, rbp
	jmp	.label_1757
.label_1760:
	mov	word ptr [rbp - 2], 1
	jmp	.label_1757
.label_1758:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	nop	
	jne	.label_1768
	mov	rsp, rsp
	mov	word ptr [rbp - 2], 0xc
	jmp	.label_1757
.label_1768:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_1762
	lea	rsi, [rsi]
	mov	word ptr [rbp - 2], 8
	jmp	.label_1757
.label_1762:
	mov	rbp, rbp
	mov	word ptr [rbp - 2], 3
.label_1757:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 2]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ddf0

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
	jne	.label_1773
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1771
.label_1773:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1771
.label_1771:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	jbe	.label_1774
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
	jb	.label_1777
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
	jne	.label_1775
.label_1777:
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
	jmp	.label_1778
.label_1775:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_1774:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1779:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1776
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
	jmp	.label_1779
.label_1776:
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
.label_1770:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_1772
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
	jmp	.label_1770
.label_1772:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1778:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e050

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
	je	.label_1780
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
	jne	.label_1783
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1781
.label_1783:
	jmp	.label_1784
.label_1780:
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
	jne	.label_1782
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1781
.label_1782:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_1784:
	mov	byte ptr [rbp - 1], 1
.label_1781:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e150

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
	je	.label_1785
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
	jmp	.label_1786
.label_1785:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	al, 0
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_1786:
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
	.align	32
	#Procedure 0x41e200

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
.label_1788:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_1789
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1787
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_1787:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	jmp	.label_1788
.label_1789:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e270

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
	je	.label_1804
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jl	.label_1792
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1797
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1802
.label_1797:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1802:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_1805
.label_1792:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_1804:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1794
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_1794:
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
	je	.label_1806
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x2c]
	mov	rsp, rsp
	jg	.label_1791
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	nop	
	cmp	eax, 0
	nop	
	je	.label_1795
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
.label_1795:
	lea	rsi, [rsi]
	jmp	.label_1791
.label_1791:
	jmp	.label_1800
.label_1806:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1801
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1798
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1798:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rax + 0x28]
	nop	
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1793
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	jne	.label_1796
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
.label_1796:
	jmp	.label_1793
.label_1793:
	lea	rdi, [rdi]
	jmp	.label_1801
.label_1801:
	jmp	.label_1800
.label_1800:
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
	je	.label_1790
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	call	hash_free
.label_1790:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	je	.label_1799
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1803
.label_1799:
	mov	dword ptr [rbp - 4], 0
.label_1803:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e520

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_1807:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_1809
	nop	
	jmp	.label_1810
.label_1809:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc], eax
	cmp	ecx, dword ptr [rbp - 0xc]
	jg	.label_1808
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_1808:
	jmp	.label_1807
.label_1810:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e590

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
	je	.label_1811
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_1813
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	call	hash_free
.label_1813:
	lea	rdi, [rdi]
	jmp	.label_1812
.label_1811:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
.label_1812:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e610

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
	je	.label_1820
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1834
.label_1820:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1819
.label_1834:
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
	jne	.label_1850
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	jmp	.label_1819
.label_1850:
	movzx	eax, word ptr [rbp - 0x22]
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_1870
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	nop	
	je	.label_1878
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rsp, rsp
	cmp	ecx, 0xd
	jne	.label_1870
.label_1878:
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
	jne	.label_1828
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1828
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1873
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 7
	jmp	.label_1861
.label_1873:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	nop	
	or	ecx, 2
	mov	dx, cx
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x72], dx
.label_1861:
	jmp	.label_1828
.label_1828:
	jmp	.label_1833
.label_1870:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1872
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_1877
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1815
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_1815
.label_1877:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	and	ecx, 2
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1875
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x3c], eax
.label_1875:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_1842
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
.label_1842:
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
	jmp	.label_1819
.label_1815:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_1866
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x1000
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1866
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
.label_1866:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1821
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
	je	.label_1858
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
.label_1862:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1829
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
	jmp	.label_1862
.label_1829:
	jmp	.label_1858
.label_1858:
	lea	rdi, [rdi]
	jmp	.label_1855
.label_1821:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_1879
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1882
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1819
.label_1882:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x40], 0
	je	.label_1827
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_1827
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
.label_1827:
	nop	
	jmp	.label_1871
.label_1871:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1819
.label_1879:
	lea	rdi, [rdi]
	jmp	.label_1855
.label_1855:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1857
.label_1872:
	mov	rsp, rsp
	jmp	.label_1846
.label_1846:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	jne	.label_1863
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_1863
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
	jne	.label_1814
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x2000
	nop	
	cmp	ecx, 0
	je	.label_1839
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1819
.label_1839:
	jmp	.label_1831
.label_1814:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	jmp	.label_1857
.label_1863:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_1860
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
	jne	.label_1869
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	restore_initial_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1876
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x48], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1819
.label_1876:
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
	jmp	.label_1833
.label_1869:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_1838
	lea	rdi, [rdi]
	jmp	.label_1846
.label_1838:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + 0x74]
	nop	
	cmp	ecx, 2
	nop	
	jne	.label_1848
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
	jne	.label_1824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1824
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_1844
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	mov	rbp, rbp
	jmp	.label_1883
.label_1844:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_1883:
	jmp	.label_1824
.label_1824:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
.label_1848:
	mov	rbp, rbp
	jmp	.label_1857
.label_1857:
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
	jne	.label_1840
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1864
.label_1840:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x50], rax
.label_1864:
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
.label_1833:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 2
	mov	rsp, rsp
	jne	.label_1835
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	nop	
	jne	.label_1843
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1843
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1843
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_1843
	nop	
	jmp	.label_1841
.label_1843:
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
	jne	.label_1816
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	je	.label_1816
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	jae	.label_1816
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_1816
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x68]
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x68], rcx
.label_1816:
	mov	rbp, rbp
	jmp	.label_1841
.label_1841:
	jmp	.label_1849
.label_1835:
	nop	
	jmp	.label_1851
.label_1851:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_1853
	nop	
	call	abort
.label_1853:
	jmp	.label_1830
.label_1830:
	mov	rsp, rsp
	jmp	.label_1849
.label_1849:
	mov	rsp, rsp
	jmp	.label_1822
.label_1822:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1818
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1867
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_1867:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	enter_dir
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1859
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1819
.label_1859:
	mov	rbp, rbp
	jmp	.label_1818
.label_1818:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1819
.label_1860:
	jmp	.label_1831
.label_1831:
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
	jne	.label_1832
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
	jmp	.label_1819
.label_1832:
	jmp	.label_1825
.label_1825:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rsp, rsp
	jne	.label_1868
	call	abort
.label_1868:
	jmp	.label_1874
.label_1874:
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
	jne	.label_1884
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_1817
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
.label_1817:
	jmp	.label_1836
.label_1884:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	je	.label_1880
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1845
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1854
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
	jne	.label_1865
	jmp	.label_1845
.label_1854:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	fchdir
	cmp	eax, 0
	je	.label_1845
.label_1865:
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
.label_1845:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1856
.label_1880:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1837
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	nop	
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1837
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
.label_1837:
	jmp	.label_1856
.label_1856:
	nop	
	jmp	.label_1836
.label_1836:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rbp, rbp
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_1823
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
	jne	.label_1847
	lea	rdi, [rdi]
	jmp	.label_1881
.label_1881:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	leave_dir
	jmp	.label_1847
.label_1847:
	mov	rsp, rsp
	jmp	.label_1823
.label_1823:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1826
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	jmp	.label_1852
.label_1826:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_1852:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1819:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f370

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
	je	.label_1889
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
	jne	.label_1887
	call	abort
.label_1887:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1886
.label_1889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1891
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_1891
	mov	rsp, rsp
	jmp	.label_1890
.label_1890:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1892
	lea	rsi, [rsi]
	call	abort
.label_1892:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1888
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_1888
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
.label_1888:
	mov	rsp, rsp
	jmp	.label_1885
.label_1885:
	mov	rsp, rsp
	jmp	.label_1891
.label_1891:
	jmp	.label_1886
.label_1886:
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f510

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
	je	.label_1896
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
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
.label_1896:
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
	je	.label_1906
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_1898
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1898
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
.label_1898:
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1902
.label_1906:
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jge	.label_1893
	mov	rsp, rsp
	test	byte ptr [rbp - 0x2d], 1
	je	.label_1893
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1893
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_1901
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
	jg	.label_1904
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_1904:
	jmp	.label_1901
.label_1901:
	jmp	.label_1893
.label_1893:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	jge	.label_1894
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
	jge	.label_1894
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_1902
.label_1894:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 2
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1905
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_1897
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_1
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1897
.label_1905:
	lea	rsi, [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x34]
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1900
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_1895
.label_1900:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_1903
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc0]
	nop	
	je	.label_1907
.label_1903:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1895
.label_1907:
	jmp	.label_1897
.label_1897:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1899
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
	jmp	.label_1902
.label_1899:
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_1895:
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1908
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
.label_1908:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1902:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f860

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
	je	.label_1926
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
	jge	.label_1946
	jmp	.label_1949
.label_1949:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xb0], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1953
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
.label_1953:
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1910
.label_1946:
	mov	rbp, rbp
	jmp	.label_1931
.label_1926:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1929
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1929
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	dword ptr [rbp - 0xb4], ecx
	mov	rsp, rsp
	jmp	.label_1969
.label_1929:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_1969
.label_1969:
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
	je	.label_1973
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
	je	.label_1913
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0xc2], cl
.label_1913:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc2]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc1], al
.label_1973:
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
	jne	.label_1936
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	nop	
	jne	.label_1939
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 4
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_1939:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1936:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rbp, rbp
	jne	.label_1947
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
	jmp	.label_1927
.label_1947:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1957
	jmp	.label_1962
.label_1962:
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
	jne	.label_1964
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1964:
	jmp	.label_1957
.label_1957:
	jmp	.label_1927
.label_1927:
	jmp	.label_1931
.label_1931:
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
	je	.label_1971
	mov	byte ptr [rbp - 0x45], 1
	lea	rsi, [rsi]
	jmp	.label_1909
.label_1971:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc5], cl
	lea	rdi, [rdi]
	je	.label_1912
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
	je	.label_1918
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	lea	rdi, [rdi]
	je	.label_1918
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
	jne	.label_1918
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdx + 0x88], 2
	nop	
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_1918
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	leaf_optimization
	mov	rbp, rbp
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc6], cl
.label_1918:
	mov	al, byte ptr [rbp - 0xc6]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc5], al
.label_1912:
	mov	al, byte ptr [rbp - 0xc5]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], al
	test	byte ptr [rbp - 0x45], 1
	mov	rsp, rsp
	jne	.label_1948
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1925
.label_1948:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1954
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x74], eax
.label_1954:
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_1963
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
	je	.label_1967
.label_1963:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x45], 1
	je	.label_1968
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1968
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], ecx
.label_1968:
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
	je	.label_1916
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x74]
	jg	.label_1916
	mov	edi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	call	close
	nop	
	mov	dword ptr [rbp - 0xd0], eax
.label_1916:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_1923
.label_1967:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], 1
.label_1923:
	nop	
	jmp	.label_1925
.label_1925:
	jmp	.label_1909
.label_1909:
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
	jne	.label_1928
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	jmp	.label_1934
.label_1928:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
.label_1934:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1942
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
	jmp	.label_1950
.label_1942:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
.label_1950:
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
.label_1943:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	je	.label_1974
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
	jne	.label_1976
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_1979
.label_2353:
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
	jne	.label_1911
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_1911:
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
.label_1979:
	jmp	.label_1974
.label_1976:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x14], 0
	mov	rsp, rsp
	je	.label_1935
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_1930
.label_1935:
	mov	rsp, rsp
	jmp	.label_1943
.label_1930:
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
	jne	.label_1956
	jmp	.label_1959
.label_1956:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_1960
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
	jne	.label_1966
	jmp	.label_1959
.label_1959:
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
	jmp	.label_1910
.label_1966:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	je	.label_1917
	nop	
	mov	byte ptr [rbp - 0x46], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1921
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
.label_1921:
	jmp	.label_1917
.label_1917:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_1960:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_1924
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
	jmp	.label_1910
.label_1924:
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
	je	.label_1955
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
	jmp	.label_1972
.label_1955:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
.label_1972:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1978
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	nop	
	je	.label_1980
.label_1978:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe9], cl
	je	.label_1914
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
	je	.label_1914
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0xe9], cl
	nop	
	je	.label_1914
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
.label_1914:
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
	jmp	.label_1952
.label_1980:
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
.label_1952:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1958
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1961
.label_1958:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_1961:
	cmp	qword ptr [rbp - 0x30], 0x2710
	jne	.label_1965
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1965
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	call	dirent_inode_sort_may_be_useful
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x82], al
.label_1965:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_1970
	mov	rsp, rsp
	jmp	.label_1919
.label_1970:
	nop	
	jmp	.label_1943
.label_1974:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1915
	jmp	.label_1975
.label_1975:
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
	jmp	.label_1915
.label_1915:
	lea	rdi, [rdi]
	jmp	.label_1919
.label_1919:
	test	byte ptr [rbp - 0x46], 1
	mov	rsp, rsp
	je	.label_1920
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	fts_padjust
.label_1920:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1932
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1937
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1933
.label_1937:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
.label_1933:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_1932:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1938
	nop	
	test	byte ptr [rbp - 0x45], 1
	lea	rsi, [rsi]
	je	.label_1938
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_1940
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1938
.label_1940:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1945
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	restore_initial_cwd
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1951
	jmp	.label_1938
.label_1945:
	mov	edx, 0xffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	fts_safe_changedir
	nop	
	cmp	eax, 0
	je	.label_1938
.label_1951:
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
	jmp	.label_1910
.label_1938:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1941
	cmp	dword ptr [rbp - 0x14], 3
	mov	rsp, rsp
	jne	.label_1944
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_1944
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	lea	rdi, [rdi]
	je	.label_1944
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 6
.label_1944:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1941:
	test	byte ptr [rbp - 0x82], 1
	je	.label_1977
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
.label_1977:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1922
	cmp	qword ptr [rbp - 0x30], 1
	mov	rsp, rsp
	jbe	.label_1922
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
.label_1922:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1910:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0xf0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x420890

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
	jne	.label_1986
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1985
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
	je	.label_1984
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_1982
.label_1984:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
.label_1982:
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
	jmp	.label_1983
.label_1985:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_1981
	mov	eax, 0xffffff9c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_1987
.label_1981:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_1987:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x20], eax
.label_1983:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], cl
.label_1986:
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
	.align	32
	#Procedure 0x4209f0

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
	je	.label_1988
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x108
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_1989
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1988
.label_1989:
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
.label_1988:
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
	.align	32
	#Procedure 0x420b50

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
	je	.label_2003
	jmp	.label_1991
.label_1991:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	je	.label_1993
	lea	rdi, [rdi]
	jmp	.label_1999
.label_1999:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	je	.label_2002
	jmp	.label_1992
.label_1992:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	je	.label_1994
	mov	rsp, rsp
	jmp	.label_2000
.label_2000:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x40], rax
	je	.label_1996
	jmp	.label_1990
.label_1990:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x48], rax
	je	.label_1994
	lea	rsi, [rsi]
	jmp	.label_1997
.label_1997:
	mov	eax, 0xff534d42
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	je	.label_2001
	lea	rdi, [rdi]
	jmp	.label_1998
.label_1994:
	mov	dword ptr [rbp - 4], 2
	lea	rsi, [rsi]
	jmp	.label_1995
.label_2003:
	lea	rdi, [rdi]
	jmp	.label_1996
.label_1996:
	lea	rsi, [rsi]
	jmp	.label_2001
.label_2001:
	jmp	.label_1993
.label_1993:
	mov	rbp, rbp
	jmp	.label_2002
.label_2002:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_1995
.label_1998:
	mov	dword ptr [rbp - 4], 1
.label_1995:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420ca0

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
	je	.label_2004
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
	jne	.label_2010
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2005
.label_2010:
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
	je	.label_2009
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2011
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2005
.label_2011:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 2
.label_2009:
	mov	rbp, rbp
	jmp	.label_2007
.label_2004:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_2006
	jmp	.label_2008
.label_2006:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_2008:
	jmp	.label_2007
.label_2007:
	mov	byte ptr [rbp - 1], 1
.label_2005:
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
	.align	32
	#Procedure 0x420e30

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
	jne	.label_2015
	cmp	dword ptr [rbp - 0x14], -0x64
	mov	rsp, rsp
	je	.label_2015
	call	abort
.label_2015:
	mov	rsp, rsp
	jmp	.label_2013
.label_2013:
	nop	
	test	byte ptr [rbp - 0xd], 1
	je	.label_2012
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
	jg	.label_2018
	mov	edi, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
.label_2018:
	mov	rsp, rsp
	jmp	.label_2016
.label_2012:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_2014
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_2017
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
.label_2017:
	jmp	.label_2014
.label_2014:
	lea	rdi, [rdi]
	jmp	.label_2016
.label_2016:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x2c], eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x420f40

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
	je	.label_2019
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_2019
	cmp	dword ptr [rbp - 0x1c], 2
	lea	rsi, [rsi]
	je	.label_2019
	cmp	dword ptr [rbp - 0x1c], 3
	nop	
	je	.label_2019
	nop	
	cmp	dword ptr [rbp - 0x1c], 4
	mov	rsp, rsp
	je	.label_2019
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_2020
.label_2019:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x74], cx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_2020:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420fe0
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
	je	.label_2022
	nop	
	cmp	dword ptr [rbp - 0x14], 0x1000
	mov	rbp, rbp
	je	.label_2022
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2024
.label_2022:
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
	je	.label_2023
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2024
.label_2023:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_2033
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2024
.label_2033:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_2027
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2024
.label_2027:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2021
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
.label_2021:
	cmp	dword ptr [rbp - 0x14], 0x1000
	jne	.label_2029
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 2
	nop	
	jmp	.label_2034
.label_2029:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 1
.label_2034:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2028
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_2028
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2025
.label_2028:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2024
.label_2025:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	nop	
	jge	.label_2030
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2024
.label_2030:
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
	je	.label_2032
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x24]
	call	cwd_advance_fd
	jmp	.label_2026
.label_2032:
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	call	fchdir
	cmp	eax, 0
	je	.label_2031
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
	jmp	.label_2024
.label_2031:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_2026:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_2024:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4212c0

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
	.align	32
	#Procedure 0x421300

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
	jne	.label_2035
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
.label_2035:
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421380

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
	jne	.label_2036
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2037
.label_2036:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2044
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
.label_2044:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_2042
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
	je	.label_2047
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2037
.label_2047:
	nop	
	jmp	.label_2042
.label_2042:
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jl	.label_2043
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	call	fstatfs
	cmp	eax, 0
	nop	
	je	.label_2049
.label_2043:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2037
.label_2049:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_2040
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	lea	rsi, [rsi]
	je	.label_2046
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
	je	.label_2041
	mov	rsp, rsp
	jmp	.label_2048
.label_2048:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_2045
	call	abort
.label_2045:
	nop	
	jmp	.label_2038
.label_2038:
	jmp	.label_2039
.label_2041:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_2039:
	jmp	.label_2046
.label_2046:
	jmp	.label_2040
.label_2040:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2037:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4215d0

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
	.align	32
	#Procedure 0x421620

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
	.align	32
	#Procedure 0x421680

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
	ja	.label_2050
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2052]]
	jmp	rcx
.label_2449:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0x6000
	jmp	.label_2051
.label_2447:
	mov	dword ptr [rbp - 0x10], 0x2000
	mov	rsp, rsp
	jmp	.label_2051
.label_2448:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0x4000
	mov	rbp, rbp
	jmp	.label_2051
.label_2446:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0x1000
	mov	rbp, rbp
	jmp	.label_2051
.label_2451:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0xa000
	mov	rsp, rsp
	jmp	.label_2051
.label_2450:
	mov	dword ptr [rbp - 0x10], 0x8000
	jmp	.label_2051
.label_2452:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0xc000
	jmp	.label_2051
.label_2050:
	mov	dword ptr [rbp - 0x10], 0
.label_2051:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421750

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
	je	.label_2055
	lea	rdi, [rdi]
	jmp	.label_2056
.label_2056:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x1021994
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	je	.label_2055
	jmp	.label_2057
.label_2057:
	lea	rsi, [rsi]
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	jne	.label_2053
	jmp	.label_2055
.label_2055:
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_2054
.label_2053:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
.label_2054:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421800

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
.label_2061:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_2062
	nop	
	jmp	.label_2058
.label_2058:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 0x108
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_2059
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
.label_2059:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2065
.label_2065:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2061
.label_2062:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2068:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_2060
	lea	rdi, [rdi]
	jmp	.label_2067
.label_2067:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2064
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
.label_2064:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2066
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2063
.label_2066:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_2063:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2068
.label_2060:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421990

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
	jae	.label_2069
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_2070
.label_2069:
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
.label_2070:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421a20

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
	.align	32
	#Procedure 0x421a90

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
	jne	.label_2071
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2071:
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
	ja	.label_2072
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2072
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2072
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
	jmp	.label_2073
.label_2072:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2073:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421b80

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421b90

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, 4
	mov	r9d, r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r9
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c00

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], -1
	mov	rsp, rsp
	je	.label_2074
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x18]
	call	fchmod
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2075
.label_2074:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_2075:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c70

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d], 0
	mov	byte ptr [rbp - 0x1f], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0
	mov	byte ptr [rbp - 0x1e], 1
	test	byte ptr [rbp - 0x1e], 1
	je	.label_2079
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	call	chmod_or_fchmod
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	je	.label_2081
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2077
.label_2081:
	mov	rbp, rbp
	jmp	.label_2079
.label_2079:
	test	byte ptr [rbp - 0x1f], 1
	nop	
	je	.label_2076
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1e], 1
	nop	
	jne	.label_2076
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2080
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2078
.label_2080:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jmp	.label_2078
.label_2078:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	nop	
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_2082
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x30], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x24], 0xffffffff
.label_2082:
	jmp	.label_2076
.label_2076:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_2077:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421db0

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
	#Procedure 0x421dd0

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
.label_2092:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2090
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
	jne	.label_2087
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_2093
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2083
.label_2093:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_2088
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_2086
.label_2088:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2094
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
	je	.label_2084
.label_2094:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_2084:
	lea	rsi, [rsi]
	jmp	.label_2086
.label_2086:
	mov	rbp, rbp
	jmp	.label_2089
.label_2089:
	mov	rsp, rsp
	jmp	.label_2087
.label_2087:
	nop	
	jmp	.label_2091
.label_2091:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2092
.label_2090:
	test	byte ptr [rbp - 0x41], 1
	je	.label_2085
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2083
.label_2085:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2083:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421f80

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
	jne	.label_2095
	movabs	rdi, OFFSET FLAT:.str_18
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_2096
.label_2095:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_14
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_2096:
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
	.align	32
	#Procedure 0x422060

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_9
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
.label_2099:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2101
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2100
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
	je	.label_2098
.label_2100:
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
	movabs	rsi, OFFSET FLAT:.str.3_6
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
	jmp	.label_2102
.label_2098:
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
	movabs	rsi, OFFSET FLAT:.str.4_3
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_2102:
	jmp	.label_2097
.label_2097:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2099
.label_2101:
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
	.align	32
	#Procedure 0x422210

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
	jl	.label_2103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2104
.label_2103:
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
.label_2104:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4222d0
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
.label_2107:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2109
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
	jne	.label_2106
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2105
.label_2106:
	lea	rdi, [rdi]
	jmp	.label_2108
.label_2108:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2107
.label_2109:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2105:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4223a0
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
	.align	32
	#Procedure 0x4223f0
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
	.align	32
	#Procedure 0x422440
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
	#Procedure 0x422490
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
	.align	32
	#Procedure 0x4224d0
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
	#Procedure 0x422530

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
	.align	32
	#Procedure 0x422590
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
	.align	32
	#Procedure 0x4225e0
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
	#Procedure 0x422630
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
	.align	32
	#Procedure 0x422690
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
	#Procedure 0x4226e0

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
	jne	.label_2110
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2112
.label_2110:
	mov	rbp, rbp
	jmp	.label_2111
.label_2111:
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
	jne	.label_2114
	jmp	.label_2113
.label_2114:
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
	je	.label_2111
.label_2113:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2112:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4227d0

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
	jne	.label_2117
	test	byte ptr [rbp - 0x13], 1
	je	.label_2116
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_2117
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2116
.label_2117:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_2115
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2115:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2118
.label_2116:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2118:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4228b0

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
	.align	32
	#Procedure 0x4228e0

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
	jne	.label_2119
	mov	rsp, rsp
	jmp	.label_2121
.label_2119:
	movabs	rdi, OFFSET FLAT:.str_19
	movabs	rsi, OFFSET FLAT:.str.1_15
	lea	rsi, [rsi]
	mov	edx, 0x3c
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	mov	rbp, rbp
	call	__assert_fail
.label_2121:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2123
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_2123
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2123
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2120
.label_2123:
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
	jne	.label_2124
	mov	rsp, rsp
	jmp	.label_2125
.label_2124:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2122
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_2120
.label_2122:
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
.label_2125:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_2120:
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
	.align	32
	#Procedure 0x422a30

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
	.align	32
	#Procedure 0x422a70

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_2127
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	nop	
	cmp	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	jg	.label_2126
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rdi, [rdi]
	jg	.label_2126
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	al, 0
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2129
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_2128
.label_2129:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2130
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_2130:
	nop	
	jmp	.label_2128
.label_2128:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	closedir
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_2126:
	jmp	.label_2127
.label_2127:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422ba0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422be0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422c30

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
	je	.label_2132
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_20
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2133
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_16
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2131
.label_2133:
	mov	byte ptr [rbp - 5], 0
.label_2131:
	jmp	.label_2132
.label_2132:
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
	#Procedure 0x422cd0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2135:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_2134
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2135
.label_2134:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422d60

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
.label_2137:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 4
	mov	rbp, rbp
	jge	.label_2136
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_2137
.label_2136:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x422df0

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
	.align	32
	#Procedure 0x422e10

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
	jne	.label_2138
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
.label_2138:
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
	.align	32
	#Procedure 0x422ee0

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
	jne	.label_2140
	mov	rsp, rsp
	jmp	.label_2141
.label_2140:
	lea	rsi, [rsi]
	call	abort
.label_2141:
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
	jne	.label_2139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_2142
.label_2139:
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
.label_2142:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422fc0

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
	jne	.label_2144
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2144:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2143
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2143:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423040

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
	je	.label_2145
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
.label_2145:
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
	je	.label_2146
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
	ja	.label_2147
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
	jmp	.label_2148
.label_2147:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_2148:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_2146:
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
	.align	32
	#Procedure 0x4232c0

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
	#Procedure 0x423320

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_2150
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2149
.label_2150:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	jmp	.label_2149
.label_2149:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423390
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
	#Procedure 0x4233b0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x38], rsi
.label_2152:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2154
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_2156:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	shift_left
	add	rax, 0xff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_2156
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_2155:
	mov	rdi, qword ptr [rbp - 0x28]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + rdi - 0x50]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	shift_left
	nop	
	add	rax, 0xff
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_2155
	jmp	.label_2154
.label_2154:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2153
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2151
.label_2153:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x68]
	ja	.label_2157
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2151
.label_2157:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2152
.label_2151:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423610

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
	#Procedure 0x423630

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
	#Procedure 0x423670

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	randint_free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4236d0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_2164
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2165
.label_2164:
	nop	
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_2158
	nop	
	movabs	rsi, OFFSET FLAT:.str_21
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2162
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_2165
.label_2162:
	mov	rsp, rsp
	jmp	.label_2158
.label_2158:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2159
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	jae	.label_2160
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	jmp	.label_2161
.label_2160:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_2161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2163
.label_2159:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_2163:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2165:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423890

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
	#Procedure 0x423910

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_7
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	jg	.label_2177
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_2176
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2170
.label_2176:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_2170:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_2182
	mov	qword ptr [rbp - 0x28], 0
.label_2182:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_2177:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_2168
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_2179
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	jmp	.label_2171
.label_2179:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
.label_2171:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_2168:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_2181
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_2178
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	jmp	.label_2174
.label_2178:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
.label_2174:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
.label_2181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_2166
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_2169
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_2173
.label_2169:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_2173:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_2166:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2172
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_2175
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2180
.label_2175:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
.label_2180:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_2172:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2167
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_2184
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rbp, rbp
	jmp	.label_2183
.label_2184:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_2183:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
.label_2167:
	add	rsp, 0x100
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x423dc0
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
	#Procedure 0x423df0
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
	#Procedure 0x423e10

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_2185
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	readsource
	jmp	.label_2186
.label_2185:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	call	readisaac
.label_2186:
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423e90

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2190:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2188
	jmp	.label_2191
.label_2188:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_2189
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2187
.label_2189:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2187
.label_2187:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_2190
.label_2191:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423fa0

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
.label_2196:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_2198
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
	jmp	.label_2193
.label_2198:
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
	jne	.label_2194
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_2197:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_2192
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
	jne	.label_2195
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_2193
.label_2195:
	lea	rdi, [rdi]
	jmp	.label_2197
.label_2192:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_2194:
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
	jmp	.label_2196
.label_2193:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4241a0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2199
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_2200
.label_2199:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_2200
.label_2200:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424230

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2201
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_2203
	movabs	rdi, OFFSET FLAT:.str.1_18
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_2202
.label_2203:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_10
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_2202:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_2201:
	mov	rsp, rsp
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4242f0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2205:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
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
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0x400
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_2205
	jmp	.label_2204
.label_2204:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	mov	rbp, rbp
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_2204
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424990

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
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
	#Procedure 0x424a00

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
	#Procedure 0x424a30

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0
.label_2209:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0x100
	mov	rbp, rbp
	jge	.label_2207
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2209
.label_2207:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], 0
.label_2208:
	cmp	dword ptr [rbp - 0x50], 0x100
	mov	rsp, rsp
	jge	.label_2206
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_2208
.label_2206:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4252f0

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
	#Procedure 0x425330

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425370

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
	jge	.label_2214
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2212
.label_2214:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2211
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
	je	.label_2210
.label_2211:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2210
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2210:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2213
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
.label_2213:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2212:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425490

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
	je	.label_2220
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
.label_2220:
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
	je	.label_2225
	nop	
	jmp	.label_2234
.label_2234:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2238
	jmp	.label_2241
.label_2225:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2243
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
	jmp	.label_2235
.label_2243:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2235:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2227
.label_2238:
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
	ja	.label_2215
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
	jmp	.label_2226
.label_2215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2226:
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
	jmp	.label_2227
.label_2241:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_2219
	nop	
	jmp	.label_2229
.label_2229:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_2221
	jmp	.label_2239
.label_2239:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_2219
	nop	
	jmp	.label_2245
.label_2245:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_2221
	nop	
	jmp	.label_2223
.label_2223:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_2219
	lea	rsi, [rsi]
	jmp	.label_2231
.label_2231:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_2219
	lea	rsi, [rsi]
	jmp	.label_2240
.label_2240:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2221
	mov	rsp, rsp
	jmp	.label_2216
.label_2216:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2219
	jmp	.label_2224
.label_2224:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_2221
	lea	rsi, [rsi]
	jmp	.label_2230
.label_2230:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_2219
	jmp	.label_2242
.label_2242:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2221
	mov	rsp, rsp
	jmp	.label_2217
.label_2217:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_2219
	lea	rsi, [rsi]
	jmp	.label_2218
.label_2218:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2219
	nop	
	jmp	.label_2236
.label_2236:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_2237
	lea	rdi, [rdi]
	jmp	.label_2221
.label_2221:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_2228
.label_2219:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_2222
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
	jmp	.label_2232
.label_2222:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_2232:
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
	jmp	.label_2228
.label_2237:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_2233
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
	jmp	.label_2244
.label_2233:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_2244:
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
.label_2228:
	jmp	.label_2227
.label_2227:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425b10

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
	.align	32
	#Procedure 0x425b60

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
	jg	.label_2251
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
	jle	.label_2253
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2252
.label_2253:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2246
.label_2252:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_2250
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2250:
	mov	rbp, rbp
	jmp	.label_2246
.label_2246:
	jmp	.label_2247
.label_2251:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2247:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2249
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2249
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2248
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
	jne	.label_2254
.label_2248:
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
.label_2254:
	jmp	.label_2249
.label_2249:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x425ce0

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
	ja	.label_2255
	jmp	.label_2257
.label_2257:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2256
.label_2255:
	lea	rsi, [rsi]
	jmp	.label_2256
.label_2256:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425d40
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
	jb	.label_2258
	jmp	.label_2261
.label_2261:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2258
	jmp	.label_2259
.label_2259:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2260
	jmp	.label_2258
.label_2258:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2262
.label_2260:
	mov	byte ptr [rbp - 1], 0
.label_2262:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425db0
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
	jb	.label_2263
	jmp	.label_2266
.label_2266:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2264
	jmp	.label_2263
.label_2263:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2265
.label_2264:
	mov	byte ptr [rbp - 1], 0
.label_2265:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425e00
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2267
	jmp	.label_2268
.label_2268:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2269
.label_2267:
	mov	byte ptr [rbp - 1], 0
.label_2269:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425e30
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2270
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2270:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425e60
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
	jb	.label_2271
	jmp	.label_2273
.label_2273:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2274
	jmp	.label_2271
.label_2271:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2272
.label_2274:
	mov	byte ptr [rbp - 1], 0
.label_2272:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425eb0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2275
	jmp	.label_2277
.label_2277:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2276
.label_2275:
	mov	byte ptr [rbp - 1], 0
.label_2276:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425ef0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2278
	jmp	.label_2280
.label_2280:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2279
.label_2278:
	mov	byte ptr [rbp - 1], 0
.label_2279:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425f30
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2281
	jmp	.label_2283
.label_2283:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2282
.label_2281:
	mov	byte ptr [rbp - 1], 0
.label_2282:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425f70
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2284
	jmp	.label_2286
.label_2286:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2285
.label_2284:
	mov	byte ptr [rbp - 1], 0
.label_2285:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425fb0
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
	jb	.label_2287
	jmp	.label_2290
.label_2290:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2287
	jmp	.label_2291
.label_2291:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2287
	jmp	.label_2289
.label_2289:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_2292
	jmp	.label_2287
.label_2287:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2288
.label_2292:
	mov	byte ptr [rbp - 1], 0
.label_2288:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426030
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
	jb	.label_2293
	jmp	.label_2296
.label_2296:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2295
	jmp	.label_2293
.label_2293:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2294
.label_2295:
	mov	byte ptr [rbp - 1], 0
.label_2294:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426080
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2297
	jmp	.label_2299
.label_2299:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2298
.label_2297:
	mov	byte ptr [rbp - 1], 0
.label_2298:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4260c0
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
	jb	.label_2300
	jmp	.label_2302
.label_2302:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2300
	jmp	.label_2301
.label_2301:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2303
	jmp	.label_2300
.label_2300:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2304
.label_2303:
	mov	byte ptr [rbp - 1], 0
.label_2304:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426130

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2305
	jmp	.label_2307
.label_2307:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2306
.label_2305:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2306:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426170
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2308
	jmp	.label_2310
.label_2310:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2309
.label_2308:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2309:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4261b0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2312
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2311
	cmp	dword ptr [rbp - 0x24], 2
	lea	rsi, [rsi]
	jg	.label_2311
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_2315
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2314
.label_2315:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2316
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2313
.label_2316:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2314
.label_2313:
	jmp	.label_2311
.label_2311:
	jmp	.label_2312
.label_2312:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2314:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4263e0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4263f0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x426400

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x426410

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	.section	.text
	.align	32
	#Procedure 0x426430

	.globl __mknod
	.type __mknod, @function
__mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	