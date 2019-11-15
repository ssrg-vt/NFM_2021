	.section	.text
	.align	32
	#Procedure 0x402880

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
	mov	rcx,  qword ptr [word ptr [program_name]]
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
	call	emit_mandatory_arg_note
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
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:.str.8
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402a00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.28
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
	#Procedure 0x402a30

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a90

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
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_14
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_14:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_13
	jmp	.label_12
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.39
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
	je	.label_11
	movabs	rsi, OFFSET FLAT:.str.41
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.44
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.45
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
	#Procedure 0x402c30

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x91], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.10
	movabs	rsi, OFFSET FLAT:.str.11
	mov	qword ptr [rbp - 0x138], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0x140], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x148], rax
	call	atexit
	lea	rdi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x14c], eax
	call	cp_option_init
	call	priv_set_remove_linkdir
	mov	dword ptr [rbp - 0x150], eax
.label_18:
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_60
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x154], eax
	mov	dword ptr [rbp - 0x158], ecx
	je	.label_75
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_34
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x160], eax
	je	.label_41
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x164], eax
	je	.label_49
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x168], eax
	je	.label_55
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_61
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x170], eax
	je	.label_67
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x174], eax
	je	.label_70
	jmp	.label_76
.label_76:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x178], eax
	je	.label_19
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_74
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x180], eax
	je	.label_29
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x184], eax
	je	.label_36
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x188], eax
	je	.label_52
	jmp	.label_50
.label_61:
	mov	byte ptr [rbp - 0x16], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_51
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
.label_51:
	jmp	.label_16
.label_67:
	mov	dword ptr [rbp - 0x70], 1
	jmp	.label_16
.label_70:
	mov	dword ptr [rbp - 0x70], 3
	jmp	.label_16
.label_19:
	mov	dword ptr [rbp - 0x70], 2
	jmp	.label_16
.label_52:
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	jmp	.label_16
.label_74:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_37
	movabs	rdi, OFFSET FLAT:.str.13
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_37:
	lea	rsi, [rbp - 0x128]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	cmp	eax, 0
	je	.label_21
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.14
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_21:
	mov	eax, dword ptr [rbp - 0x110]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_45
	movabs	rdi, OFFSET FLAT:.str.15
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_45:
	jmp	.label_65
.label_65:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_16
.label_49:
	mov	byte ptr [rbp - 0x81], 1
	jmp	.label_16
.label_29:
	mov	byte ptr [rbp - 0x4b], 1
	jmp	.label_16
.label_36:
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_16
.label_41:
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_16
.label_55:
	test	byte ptr [rbp - 0x91], 1
	je	.label_47
	mov	byte ptr [rbp - 0x53], 0
	mov	byte ptr [rbp - 0x57], 1
.label_47:
	jmp	.label_16
.label_34:
	xor	edi, edi
	call	usage
.label_75:
	movabs	rsi, OFFSET FLAT:.str.8
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:.str.18_0
	movabs	rax, OFFSET FLAT:.str.19
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_50:
	mov	edi, 1
	call	usage
.label_16:
	jmp	.label_18
.label_60:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x88], eax
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	mov	eax, dword ptr [rbp - 0x88]
	cmp	qword ptr [rbp - 0x80], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	cmp	eax, edi
	jg	.label_58
	cmp	dword ptr [rbp - 0x88], 0
	jg	.label_72
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_26
.label_72:
	movabs	rdi, OFFSET FLAT:.str.21
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x1b4], edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_26:
	mov	edi, 1
	call	usage
.label_58:
	test	byte ptr [rbp - 0x81], 1
	je	.label_48
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_53
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_53:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_62
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x1c4], edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_62:
	jmp	.label_22
.label_48:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_24
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jg	.label_27
	jmp	.label_30
.label_27:
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0x1c9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_30:
	cmp	dword ptr [rbp - 0x88], 2
	jne	.label_42
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 8]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	cmp	eax, 0
	je	.label_66
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c8], ecx
	jmp	.label_23
.label_66:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x44], eax
.label_42:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_17
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	target_directory_operand
	test	al, 1
	jne	.label_73
	jmp	.label_17
.label_73:
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, -1
	mov	dword ptr [rbp - 0x88], eax
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_25
.label_17:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_28
	movabs	rdi, OFFSET FLAT:.str.15
	call	gettext
	mov	edi, 4
	mov	ecx, dword ptr [rbp - 0x88]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x1d0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_28:
	jmp	.label_25
.label_25:
	jmp	.label_24
.label_24:
	jmp	.label_22
.label_22:
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_57
	mov	byte ptr [rbp - 0x4b], 0
.label_57:
	test	byte ptr [rbp - 0x16], 1
	je	.label_32
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_32
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_32:
	test	byte ptr [rbp - 0x16], 1
	je	.label_71
	movabs	rdi, OFFSET FLAT:.str.27
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	xget_version
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_20
.label_71:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x78], eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	set_simple_backup_suffix
	call	hash_init
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_31
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jg	.label_68
	lea	rdi, [rbp - 0x78]
	call	dest_info_init
.label_68:
	mov	byte ptr [rbp - 0x15], 1
	mov	dword ptr [rbp - 0x12c], 0
.label_56:
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_44
	mov	edx, 1
	lea	rcx, [rbp - 0x78]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 0x88]
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x47], sil
	movsxd	rdi, dword ptr [rbp - 0x12c]
	mov	r8, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [r8 + rdi*8]
	mov	rsi, qword ptr [rbp - 0x80]
	call	movefile
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	r9d, al
	and	r9d, edx
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_56
.label_44:
	jmp	.label_63
.label_31:
	xor	edx, edx
	lea	rcx, [rbp - 0x78]
	mov	byte ptr [rbp - 0x47], 1
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + 8]
	call	movefile
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_63:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403540

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	call	cp_options_default
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 1
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], 2
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x16], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x17], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 8], 4
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x19], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1d], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x22], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1e], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1f], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	mov	cl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x25], cl
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x21], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x29], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x24], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x26], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x27], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2a], 1
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0xc], 2
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2b], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 0
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x2f], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x30], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x2d], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x2e], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rbp - 0x98]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	cmp	eax, 0
	jne	.label_80
	xor	eax, eax
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_78
.label_80:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
.label_78:
	mov	eax, dword ptr [rbp - 0xa4]
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0xa5], dl
	jne	.label_77
	mov	eax, dword ptr [rbp - 0x80]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	cl
	mov	byte ptr [rbp - 0xa5], cl
.label_77:
	mov	al, byte ptr [rbp - 0xa5]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	cmp	dword ptr [rbp - 0x9c], 0
	je	.label_79
	cmp	dword ptr [rbp - 0x9c], 2
	je	.label_79
	movabs	rdi, OFFSET FLAT:.str.14
	mov	esi, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0xac], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xb8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xac]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_79:
	mov	al, byte ptr [rbp - 0x9d]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037b0

	.globl movefile
	.type movefile, @function
movefile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	je	.label_82
	mov	rdi, qword ptr [rbp - 8]
	call	strip_trailing_slashes
	mov	byte ptr [rbp - 0x39], al
.label_82:
	test	byte ptr [rbp - 0x11], 1
	je	.label_81
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	file_name_concat
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x3a], al
	call	do_move
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_83
.label_81:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	do_move
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
.label_83:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403870

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	lea	r8, [rbp - 0x19]
	lea	r9, [rbp - 0x1a]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, eax
	call	copy
	and	al, 1
	mov	byte ptr [rbp - 0x1b], al
	test	byte ptr [rbp - 0x1b], 1
	je	.label_84
	test	byte ptr [rbp - 0x19], 1
	je	.label_89
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x1b], 0
	jmp	.label_88
.label_89:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_85
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_92
.label_85:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_92:
	jmp	.label_88
.label_88:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_87
	lea	rdi, [rbp - 0x48]
	call	rm_option_init
	lea	rsi, [rbp - 0x48]
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x2e]
	and	cl, 1
	mov	byte ptr [rbp - 0x2e], cl
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	call	rm
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 2
	je	.label_90
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_90
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_86
.label_90:
	jmp	.label_91
.label_86:
	movabs	rdi, OFFSET FLAT:.str.59
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0xef
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.do_move
	call	__assert_fail
.label_91:
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_93
	mov	byte ptr [rbp - 0x1b], 0
.label_93:
	jmp	.label_87
.label_87:
	jmp	.label_84
.label_84:
	mov	al, byte ptr [rbp - 0x1b]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039b0

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:rm_option_init.dev_ino_buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0xa], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 9], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 5
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x19], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1a], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1b], 1
	mov	rdi, rax
	call	get_root_dev_ino
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_94
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.60
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_94:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a80

	.globl rm
	.type rm, @function
rm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 2
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi], 0
	je	.label_95
	mov	dword ptr [rbp - 0x18], 0x218
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 8], 1
	je	.label_103
	mov	eax, dword ptr [rbp - 0x18]
	or	eax, 0x40
	mov	dword ptr [rbp - 0x18], eax
.label_103:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x18]
	call	xfts_open
	mov	qword ptr [rbp - 0x20], rax
.label_107:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_101
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_106
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x14], 4
.label_106:
	jmp	.label_105
.label_101:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	call	rm_fts
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	je	.label_96
	cmp	dword ptr [rbp - 0x2c], 3
	je	.label_96
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_100
.label_96:
	jmp	.label_102
.label_100:
	movabs	rdi, OFFSET FLAT:.str.1_0
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	edx, 0x261
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	call	__assert_fail
.label_102:
	jmp	.label_98
.label_98:
	cmp	dword ptr [rbp - 0x2c], 4
	je	.label_99
	cmp	dword ptr [rbp - 0x2c], 3
	jne	.label_104
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_104
.label_99:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x14], eax
.label_104:
	jmp	.label_108
.label_108:
	jmp	.label_107
.label_105:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fts_close
	cmp	eax, 0
	je	.label_97
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x14], 4
.label_97:
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c20

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	mov	edx, eax
	sub	eax, 0xc
	mov	qword ptr [rbp - 0xd8], rdx
	mov	dword ptr [rbp - 0xdc], eax
	ja	.label_112
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_111]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4043f0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	edx, 0x30900
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_135
	mov	byte ptr [rbp - 1], 0
	jmp	.label_134
.label_135:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_133
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	byte ptr [rbp - 1], 0
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_134
.label_133:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	readdir_ignoring_dot_and_dotdot
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	call	closedir
	cmp	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x30], eax
	je	.label_136
	mov	byte ptr [rbp - 1], 0
	jmp	.label_134
.label_136:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x24], 0
	cmove	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_134:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044c0

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_139:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_137
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_138
	jmp	.label_137
.label_138:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_139
.label_137:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404520

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 4
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x18], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404560

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_140
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdi + rcx]
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_141
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_141:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_142
.label_140:
	mov	byte ptr [rbp - 1], 0
.label_142:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x2c]
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x50], rcx
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_166
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
.label_166:
	lea	rax, [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rdi, qword ptr [rbp - 0xe8]
	call	cache_stat_init
	xor	ecx, ecx
	mov	edx, 4
	mov	sil, byte ptr [rbp - 0x19]
	test	sil, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 0xf0], 0
	mov	byte ptr [rbp - 0xf1], 0
	cmp	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x108], rax
	je	.label_163
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	call	is_empty_dir
	mov	edi, 3
	mov	ecx, 4
	and	al, 1
	mov	byte ptr [rbp - 0xf1], al
	mov	al, byte ptr [rbp - 0xf1]
	test	al, 1
	cmovne	edi, ecx
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dword ptr [rsi], edi
.label_163:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_159
	mov	dword ptr [rbp - 4], 3
	jmp	.label_143
.label_159:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 5
	jne	.label_164
	mov	dword ptr [rbp - 4], 2
	jmp	.label_143
.label_164:
	mov	dword ptr [rbp - 0xf8], 0
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	jne	.label_151
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	je	.label_148
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x19], 1
	je	.label_151
.label_148:
	cmp	dword ptr [rbp - 0xec], 0xa
	je	.label_151
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	write_protected_non_symlink
	mov	dword ptr [rbp - 0xf0], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], edi
.label_151:
	cmp	dword ptr [rbp - 0xf0], 0
	jne	.label_154
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	jne	.label_167
.label_154:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_145
	cmp	dword ptr [rbp - 0xec], 0
	jne	.label_145
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	jne	.label_155
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_156
	mov	dword ptr [rbp - 0xec], 0xa
	jmp	.label_144
.label_156:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_165
	mov	dword ptr [rbp - 0xec], 4
.label_165:
	jmp	.label_144
.label_144:
	jmp	.label_147
.label_155:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
.label_147:
	jmp	.label_145
.label_145:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_174
	mov	eax, dword ptr [rbp - 0xec]
	mov	ecx, eax
	sub	ecx, 4
	mov	dword ptr [rbp - 0x10c], eax
	mov	dword ptr [rbp - 0x110], ecx
	je	.label_158
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x10c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x114], eax
	jne	.label_152
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	je	.label_172
	mov	dword ptr [rbp - 4], 2
	jmp	.label_143
.label_172:
	jmp	.label_152
.label_158:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 9], 1
	jne	.label_150
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0xa], 1
	je	.label_153
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_150
.label_153:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	mov	dword ptr [rbp - 0xf8], 0x15
.label_150:
	jmp	.label_152
.label_152:
	jmp	.label_174
.label_174:
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	qword ptr [rbp - 0x100], rax
	cmp	dword ptr [rbp - 0xf0], 0
	jge	.label_168
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rbp - 0xf8]
	mov	dword ptr [rbp - 0x118], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 4
	jmp	.label_143
.label_168:
	cmp	dword ptr [rbp - 0xec], 4
	jne	.label_157
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_157
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_157
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x120], rdi
	je	.label_149
	movabs	rdi, OFFSET FLAT:.str.19_0
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_160
.label_149:
	movabs	rdi, OFFSET FLAT:.str.20_0
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
.label_160:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_173
.label_157:
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	je	.label_161
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x130], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 4
	jmp	.label_143
.label_161:
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x138], rdi
	je	.label_146
	movabs	rdi, OFFSET FLAT:.str.21_0
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_169
.label_146:
	movabs	rdi, OFFSET FLAT:.str.22_0
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
.label_169:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x150], rdx
	call	file_type
	mov	r8, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
.label_173:
	call	yesno
	test	al, 1
	jne	.label_171
	mov	dword ptr [rbp - 4], 3
	jmp	.label_143
.label_171:
	jmp	.label_167
.label_167:
	mov	dword ptr [rbp - 4], 2
.label_143:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b20

	.globl excise
	.type excise, @function
excise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	al, cl
	xor	ecx, ecx
	mov	r8d, 0x200
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	cmovne	ecx, r8d
	mov	dword ptr [rbp - 0x28], ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 0x2c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x30]
	mov	edx, dword ptr [rbp - 0x28]
	call	unlinkat
	cmp	eax, 0
	jne	.label_185
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x1a], 1
	je	.label_186
	test	byte ptr [rbp - 0x21], 1
	je	.label_175
	movabs	rdi, OFFSET FLAT:.str.23_0
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_179
.label_175:
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
.label_179:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xcc], eax
.label_186:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_182
.label_185:
	call	__errno_location
	cmp	dword ptr [rax], 0x1e
	jne	.label_176
	lea	rdx, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	call	lstatat
	cmp	eax, 0
	je	.label_181
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_183
.label_181:
	call	__errno_location
	mov	dword ptr [rax], 0x1e
.label_183:
	jmp	.label_176
.label_176:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd8], rdi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0xd8]
	call	ignorable_missing
	test	al, 1
	jne	.label_178
	jmp	.label_187
.label_178:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_182
.label_187:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	jne	.label_177
	call	__errno_location
	cmp	dword ptr [rax], 0x27
	je	.label_180
	call	__errno_location
	cmp	dword ptr [rax], 0x15
	je	.label_180
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_180
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_177
.label_180:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 1
	je	.label_184
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0xd
	jne	.label_177
.label_184:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
.label_177:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x18]
	call	mark_ancestor_dirs
	mov	dword ptr [rbp - 4], 4
.label_182:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d70

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_189:
	mov	rdi, qword ptr [rbp - 8]
	call	readdir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_188
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x13
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_190
.label_188:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
.label_190:
	jmp	.label_189
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x30], -1
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404de0

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	can_write_any_file
	test	al, 1
	jne	.label_195
	jmp	.label_191
.label_195:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_192
.label_191:
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	cache_fstatat
	cmp	eax, 0
	je	.label_193
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_192
.label_193:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_196
	mov	dword ptr [rbp - 4], 0
	jmp	.label_192
.label_196:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	faccessat
	cmp	eax, 0
	jne	.label_194
	mov	dword ptr [rbp - 4], 0
	jmp	.label_192
.label_194:
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	edx, 1
	cmp	dword ptr [rax], 0xd
	cmove	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_192:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x30], -1
	jne	.label_197
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	fstatat
	cmp	eax, 0
	je	.label_197
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
.label_197:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	jg	.label_198
	mov	dword ptr [rbp - 4], 0
	jmp	.label_199
.label_198:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x20], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_199:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f60

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi], 1
	mov	byte ptr [rbp - 0xd], cl
	je	.label_200
	mov	edi, dword ptr [rbp - 0xc]
	call	nonexistent_file_errno
	mov	byte ptr [rbp - 0xd], al
.label_200:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fa0

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 2
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	je	.label_201
	jmp	.label_203
.label_203:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x14
	mov	dword ptr [rbp - 0x14], eax
	je	.label_201
	jmp	.label_205
.label_205:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x16
	mov	dword ptr [rbp - 0x18], eax
	je	.label_201
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_206
	jmp	.label_201
.label_201:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_204
.label_206:
	mov	byte ptr [rbp - 1], 0
.label_204:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x28]
	test	byte ptr [rsi + 0x25], 1
	je	.label_208
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x39], al
	je	.label_216
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x39], cl
.label_216:
	mov	al, byte ptr [rbp - 0x39]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	mov	byte ptr [rbp - 0x3a], dl
	jne	.label_210
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x3a], cl
.label_210:
	mov	al, byte ptr [rbp - 0x3a]
	lea	rsi, [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	lgetfilecon
	xor	ecx, ecx
	cmp	ecx, eax
	jg	.label_209
	mov	rdi, qword ptr [rbp - 0x38]
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_211
	test	byte ptr [rbp - 0x29], 1
	jne	.label_214
	test	byte ptr [rbp - 0x2a], 1
	je	.label_215
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_215
.label_214:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_215:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_222
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	mov	byte ptr [rbp - 1], 0
	jmp	.label_212
.label_222:
	jmp	.label_211
.label_211:
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	jmp	.label_217
.label_209:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_218
	test	byte ptr [rbp - 0x2a], 1
	je	.label_221
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_221
.label_218:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_221:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_213
	mov	byte ptr [rbp - 1], 0
	jmp	.label_212
.label_213:
	jmp	.label_217
.label_217:
	jmp	.label_219
.label_208:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_220
	test	byte ptr [rbp - 0x1d], 1
	je	.label_207
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	defaultcon
	cmp	eax, 0
	jge	.label_207
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_207
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.2_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_207:
	jmp	.label_220
.label_220:
	jmp	.label_219
.label_219:
	mov	byte ptr [rbp - 1], 1
.label_212:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_223
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_223:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052a0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_224
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_224:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	r8b, sil
	mov	r9b, 1
	mov	qword ptr [rbp - 0x10], rdi
	and	r8b, 1
	mov	byte ptr [rbp - 0x11], r8b
	and	al, 1
	mov	byte ptr [rbp - 0x12], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x23], r9b
	je	.label_225
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x23], cl
.label_225:
	mov	al, byte ptr [rbp - 0x23]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x24], dl
	jne	.label_226
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x24], cl
.label_226:
	mov	al, byte ptr [rbp - 0x24]
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rbp - 0x12]
	mov	cl, byte ptr [rbp - 0x11]
	and	al, 1
	and	cl, 1
	movzx	esi, al
	movzx	edx, cl
	call	restorecon
	test	al, 1
	jne	.label_228
	test	byte ptr [rbp - 0x21], 1
	jne	.label_229
	test	byte ptr [rbp - 0x22], 1
	je	.label_227
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_227
.label_229:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_227:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_230
.label_228:
	mov	byte ptr [rbp - 1], 1
.label_230:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405420

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dl
	mov	cl, sil
	mov	qword ptr [rbp - 8], rdi
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	call	__errno_location
	xor	edx, edx
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405460

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	mov	ecx, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054c0
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	mov	ecx, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash_no_name
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl copy
	.type copy, @function
copy:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x70
	mov	al, dl
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rdi, qword ptr [rbp - 0x30]
	call	valid_options
	test	al, 1
	jne	.label_233
	jmp	.label_231
.label_233:
	jmp	.label_232
.label_231:
	movabs	rdi, OFFSET FLAT:.str.4_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb9f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.copy
	call	__assert_fail
.label_232:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	lea	rdx, [rbp - 0x41]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [top_level_src_name]],  rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [top_level_dst_name]],  rsi
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rbp - 0x21]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	ebx, r8b
	mov	qword ptr [rbp - 0x50], rdx
	mov	edx, ebx
	mov	qword ptr [rbp - 0x58], rcx
	mov	r8, qword ptr [rbp - 0x58]
	mov	dword ptr [rsp], 1
	mov	r14, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	dword ptr [rbp - 0x5c], eax
	call	copy_internal
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405610

	.globl valid_options
	.type valid_options, @function
valid_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_240
	jmp	.label_246
.label_240:
	movabs	rdi, OFFSET FLAT:.str.6_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_246:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_242
	jmp	.label_244
.label_242:
	movabs	rdi, OFFSET FLAT:.str.7_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb87
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_244:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	je	.label_238
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	je	.label_238
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_247
.label_238:
	jmp	.label_248
.label_247:
	movabs	rdi, OFFSET FLAT:.str.8_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb88
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_248:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_245
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 1
	je	.label_245
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_234
.label_245:
	jmp	.label_239
.label_234:
	movabs	rdi, OFFSET FLAT:.str.9_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb89
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_239:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x17], 1
	je	.label_249
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	jne	.label_237
.label_249:
	jmp	.label_243
.label_237:
	movabs	rdi, OFFSET FLAT:.str.10_1
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb8a
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_243:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_235
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_241
.label_235:
	jmp	.label_236
.label_241:
	movabs	rdi, OFFSET FLAT:.str.11_1
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_236:
	mov	al, 1
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x7b0
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14b, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	and	r14b, 1
	mov	byte ptr [rbp - 0x49], r14b
	mov	qword ptr [rbp - 0x58], rbx
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	mov	byte ptr [rbp - 0x199], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0
	mov	byte ptr [rbp - 0x1b2], 0
	mov	byte ptr [rbp - 0x1b3], 0
	mov	byte ptr [rbp - 0x1b4], 0
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rcx + 0x34]
	mov	dword ptr [rbp - 0x1b8], edx
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	je	.label_287
	cmp	dword ptr [rbp - 0x1b8], 0
	jge	.label_270
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	cmp	eax, 0
	je	.label_392
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4d8], ecx
	jmp	.label_279
.label_392:
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d8], eax
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x4d8]
	mov	dword ptr [rbp - 0x1b8], eax
.label_270:
	cmp	dword ptr [rbp - 0x1b8], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_285
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x68]
	and	al, 1
	mov	byte ptr [rcx], al
.label_285:
	jmp	.label_287
.label_287:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_289
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_291
	jmp	.label_294
.label_289:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_291
.label_294:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_303
.label_300:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x4e0], rax
.label_303:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_306
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	__lstat
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_311
.label_306:
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	stat
	mov	dword ptr [rbp - 0x4e4], eax
.label_311:
	mov	eax, dword ptr [rbp - 0x4e4]
	cmp	eax, 0
	je	.label_340
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4e8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x4f0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x4f0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_340:
	mov	eax, dword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_326
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	jne	.label_326
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x19], 1
	jne	.label_431
	movabs	rdi, OFFSET FLAT:.str.13_1
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
	jmp	.label_338
.label_431:
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
.label_338:
	mov	rax, qword ptr [rbp - 0x4f8]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x500], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x504], edi
	mov	esi, dword ptr [rbp - 0x504]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_326:
	jmp	.label_291
.label_291:
	test	byte ptr [rbp - 0x49], 1
	je	.label_304
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_304
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_350
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_350
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_358
	jmp	.label_350
.label_358:
	movabs	rdi, OFFSET FLAT:.str.15_2
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x510], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x514], edi
	mov	esi, dword ptr [rbp - 0x514]
	mov	rdx, qword ptr [rbp - 0x510]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_350:
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	record_file
.label_304:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	esi, al
	call	should_dereference
	and	al, 1
	mov	byte ptr [rbp - 0x1c1], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_378
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_381
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_384
.label_381:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_387
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x515], al
	je	.label_390
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x515], al
	je	.label_390
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	byte ptr [rbp - 0x515], al
	je	.label_390
.label_387:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_390
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_390
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x17], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_390
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 0x515], al
	jne	.label_390
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x15]
	mov	byte ptr [rbp - 0x515], cl
.label_390:
	mov	al, byte ptr [rbp - 0x515]
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0x188]
	xor	ecx, ecx
	mov	esi, 0x100
	and	al, 1
	mov	byte ptr [rbp - 0x1c2], al
	mov	al, byte ptr [rbp - 0x1c2]
	test	al, 1
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x1c8], ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1c8]
	call	fstatat
	cmp	eax, 0
	jne	.label_412
	mov	al, byte ptr [rbp - 0x1c2]
	and	al, 1
	mov	byte ptr [rbp - 0x1b4], al
	mov	dword ptr [rbp - 0x1b8], 0x11
	jmp	.label_414
.label_412:
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_417
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x16], 1
	je	.label_417
	jmp	.label_419
.label_417:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_464
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x51c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x528], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x51c]
	mov	rdx, qword ptr [rbp - 0x528]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_464:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_419
.label_419:
	jmp	.label_414
.label_414:
	jmp	.label_384
.label_384:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_427
	mov	byte ptr [rbp - 0x1c9], 0
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_428
	lea	rsi, [rbp - 0xf8]
	lea	rcx, [rbp - 0x188]
	lea	r9, [rbp - 0x1c9]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	call	same_file_ok
	test	al, 1
	jne	.label_428
	movabs	rdi, OFFSET FLAT:.str.16_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x530], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x538], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x530]
	mov	rcx, qword ptr [rbp - 0x538]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_428:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_436
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_436
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1f], 1
	mov	byte ptr [rbp - 0x539], cl
	je	.label_438
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x18], 1
	mov	byte ptr [rbp - 0x53a], cl
	je	.label_443
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0xf8]
	sete	cl
	mov	byte ptr [rbp - 0x53a], cl
.label_443:
	mov	al, byte ptr [rbp - 0x53a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x539], al
.label_438:
	mov	al, byte ptr [rbp - 0x539]
	lea	rsi, [rbp - 0x188]
	lea	rdx, [rbp - 0xf8]
	xor	ecx, ecx
	mov	edi, 1
	test	al, 1
	cmovne	ecx, edi
	mov	dword ptr [rbp - 0x1d0], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1d0]
	call	utimecmp
	xor	ecx, ecx
	cmp	ecx, eax
	jg	.label_452
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_453
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_453:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_460
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	test	al, 1
	jne	.label_467
	jmp	.label_266
.label_467:
	jmp	.label_460
.label_460:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_452:
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_471
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	abandon_move
	test	al, 1
	jne	.label_445
	jmp	.label_474
.label_445:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_475
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_475:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_474:
	jmp	.label_260
.label_471:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_254
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_252
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	jne	.label_254
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	overwrite_ok
	test	al, 1
	jne	.label_254
.label_252:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_254:
	jmp	.label_260
.label_260:
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_262
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_262:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_265
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_269
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_273
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_273
	jmp	.label_278
.label_273:
	movabs	rdi, OFFSET FLAT:.str.17_2
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x548], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x550], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x548]
	mov	rcx, qword ptr [rbp - 0x550]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_278:
	jmp	.label_269
.label_269:
	test	byte ptr [rbp - 0x49], 1
	je	.label_293
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_293
	lea	rdx, [rbp - 0x188]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	seen_file
	test	al, 1
	jne	.label_302
	jmp	.label_293
.label_302:
	movabs	rdi, OFFSET FLAT:.str.18_1
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x558], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x560], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x558]
	mov	rcx, qword ptr [rbp - 0x560]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_293:
	jmp	.label_265
.label_265:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_313
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_316
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_318
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_318
	jmp	.label_322
.label_318:
	movabs	rdi, OFFSET FLAT:.str.19_1
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x568], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x56c], edi
	mov	esi, dword ptr [rbp - 0x56c]
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_322:
	jmp	.label_316
.label_316:
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_335
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_339
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_339
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_339
	movabs	rdi, OFFSET FLAT:.str.20_1
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x578], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x580], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x578]
	mov	rcx, qword ptr [rbp - 0x580]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_339:
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_360
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rdi, rax
	call	dot_or_dotdot_0
	test	al, 1
	jne	.label_360
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_362
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_360
.label_362:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_367
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	source_is_dst_backup
	test	al, 1
	jne	.label_371
	jmp	.label_367
.label_371:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_373
	movabs	rdi, OFFSET FLAT:.str.21_1
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
	jmp	.label_379
.label_373:
	movabs	rdi, OFFSET FLAT:.str.22_1
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
.label_379:
	mov	rax, qword ptr [rbp - 0x588]
	xor	edi, edi
	mov	esi, 4
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x590], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x598], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rcx, qword ptr [rbp - 0x598]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_367:
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax]
	call	backup_file_rename
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_401
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x1f8], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x200], rdi
	mov	rax, qword ptr [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1f8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x5a0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	qword ptr [rbp - 0x208], rax
	mov	rdx, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1b0], rdx
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	free
	jmp	.label_413
.label_401:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_415
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5a4]
	mov	rdx, qword ptr [rbp - 0x5b0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_415:
	jmp	.label_413
.label_413:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_420
.label_360:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_422
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_422
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x15], 1
	jne	.label_425
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_426
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jb	.label_425
.label_426:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_422
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_422
.label_425:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	cmp	eax, 0
	je	.label_430
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_430
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5b4]
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_430:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_435
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5c8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x5c8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x5cc], eax
.label_435:
	jmp	.label_422
.label_422:
	jmp	.label_420
.label_420:
	jmp	.label_427
.label_427:
	jmp	.label_378
.label_378:
	test	byte ptr [rbp - 0x49], 1
	je	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_446
	mov	byte ptr [rbp - 0x209], 1
	test	byte ptr [rbp - 0x1b4], 1
	je	.label_449
	lea	rax, [rbp - 0x188]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_450
.label_449:
	lea	rsi, [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_454
	lea	rax, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_457
.label_454:
	mov	byte ptr [rbp - 0x209], 0
.label_457:
	jmp	.label_450
.label_450:
	test	byte ptr [rbp - 0x209], 1
	je	.label_423
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	seen_file
	test	al, 1
	jne	.label_469
	jmp	.label_423
.label_469:
	movabs	rdi, OFFSET FLAT:.str.26_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x5d8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5e0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5d8]
	mov	rcx, qword ptr [rbp - 0x5e0]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_423:
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_251
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_251
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_251
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	call	emit_verbose
.label_251:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_259
	mov	qword ptr [rbp - 0x1a8], 0
	jmp	.label_263
.label_259:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	je	.label_264
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_264
	test	byte ptr [rbp - 0x49], 1
	je	.label_272
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_276
.label_272:
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
.label_276:
	jmp	.label_283
.label_264:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_284
	cmp	qword ptr [rbp - 0xe8], 1
	jne	.label_284
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_288
.label_284:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_290
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	jne	.label_290
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xe8]
	jb	.label_297
	test	byte ptr [rbp - 0x49], 1
	je	.label_299
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	je	.label_297
.label_299:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	jne	.label_290
.label_297:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
.label_290:
	jmp	.label_288
.label_288:
	jmp	.label_283
.label_283:
	jmp	.label_263
.label_263:
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_310
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_312
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_314
	jmp	.label_315
.label_314:
	movabs	rdi, OFFSET FLAT:.str.27_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x5e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x5f0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5e8]
	mov	rcx, qword ptr [rbp - 0x5f0]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], 1
	jmp	.label_266
.label_315:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_432
	jmp	.label_334
.label_432:
	movabs	rdi, OFFSET FLAT:.str.28_0
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x5f8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x5fc], edi
	mov	esi, dword ptr [rbp - 0x5fc]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	je	.label_407
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_407:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_334:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	je	.label_345
	test	byte ptr [rbp - 0x49], 1
	je	.label_308
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	jne	.label_308
.label_345:
	jmp	.label_351
.label_308:
	movabs	rdi, OFFSET FLAT:.str.29_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x608], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x610], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x608]
	mov	rcx, qword ptr [rbp - 0x610]
	mov	r8, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_351:
	jmp	.label_366
.label_366:
	jmp	.label_368
.label_368:
	jmp	.label_369
.label_312:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	test	al, 1
	jne	.label_377
	jmp	.label_266
.label_377:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_369:
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_380
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_383
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	jne	.label_388
	xor	eax, eax
	mov	dword ptr [rbp - 0x614], eax
	jmp	.label_389
.label_388:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x614], ecx
.label_389:
	mov	eax, dword ptr [rbp - 0x614]
	mov	dword ptr [rbp - 0x1b8], eax
.label_383:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_396
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_399
	movabs	rdi, OFFSET FLAT:.str.30_0
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x618], eax
	call	emit_verbose
.label_399:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	je	.label_329
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x619], al
.label_329:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_405
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_405:
	test	byte ptr [rbp - 0x49], 1
	je	.label_406
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_406
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_406:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_396:
	cmp	dword ptr [rbp - 0x1b8], 0x16
	jne	.label_410
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x628], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x630], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x628]
	mov	rcx, qword ptr [rbp - 0x630]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], 1
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_410:
	cmp	dword ptr [rbp - 0x1b8], 0x12
	je	.label_479
	movabs	rdi, OFFSET FLAT:.str.32
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x634], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x640], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x648], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x634]
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rcx, qword ptr [rbp - 0x648]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_479:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_429
	mov	rdi, qword ptr [rbp - 0x28]
	call	rmdir
	mov	dword ptr [rbp - 0x64c], eax
	jmp	.label_400
.label_429:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	mov	dword ptr [rbp - 0x64c], eax
.label_400:
	mov	eax, dword ptr [rbp - 0x64c]
	cmp	eax, 0
	je	.label_434
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_434
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x650], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x658], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x660], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x650]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rcx, qword ptr [rbp - 0x660]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_434:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_448
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_448
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x664], eax
	call	emit_verbose
.label_448:
	mov	byte ptr [rbp - 0x29], 1
.label_380:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_455
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x668], ecx
	jmp	.label_458
.label_455:
	mov	eax, dword ptr [rbp - 0x18c]
	mov	dword ptr [rbp - 0x668], eax
.label_458:
	mov	eax, dword ptr [rbp - 0x668]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x194], eax
	mov	eax, dword ptr [rbp - 0x194]
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x66c], eax
	je	.label_462
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x670], eax
	jmp	.label_466
.label_462:
	xor	eax, eax
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0x18c]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x670], eax
.label_466:
	mov	eax, dword ptr [rbp - 0x670]
	mov	ecx, dword ptr [rbp - 0x66c]
	and	ecx, eax
	mov	dword ptr [rbp - 0x198], ecx
	mov	byte ptr [rbp - 0x1b1], 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x18c]
	mov	r8b, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x48]
	and	r8b, 1
	movzx	ecx, r8b
	mov	r8, r9
	call	set_process_security_ctx
	test	al, 1
	jne	.label_477
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_477:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_480
	lea	rdi, [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0x40]
	call	is_ancestor
	test	al, 1
	jne	.label_255
	jmp	.label_256
.label_255:
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x678], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x67c], edi
	mov	esi, dword ptr [rbp - 0x67c]
	mov	rdx, qword ptr [rbp - 0x678]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_256:
	mov	rax, rsp
	add	rax, -0x20
	mov	rsp, rax
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx + 0x10], rax
	test	byte ptr [rbp - 0x29], 1
	jne	.label_267
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_281
.label_267:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_286
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x680], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x688], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x680]
	mov	rdx, qword ptr [rbp - 0x688]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_286:
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	je	.label_257
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x68c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x698], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x68c]
	mov	rdx, qword ptr [rbp - 0x698]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_257:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_331
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	byte ptr [rbp - 0x199], 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_320
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_5
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x69c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6a8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x69c]
	mov	rdx, qword ptr [rbp - 0x6a8]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_320:
	jmp	.label_331
.label_331:
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x58]
	test	byte ptr [rax], 1
	jne	.label_333
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x188]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx], 1
	mov	qword ptr [rbp - 0x6b0], rax
.label_333:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_352
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_343
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6b8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6bc], eax
	jmp	.label_348
.label_343:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	emit_verbose
.label_348:
	jmp	.label_352
.label_352:
	jmp	.label_353
.label_281:
	mov	dword ptr [rbp - 0x198], 0
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_355
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_357
.label_355:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_363
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_364
	jmp	.label_266
.label_364:
	jmp	.label_363
.label_363:
	jmp	.label_357
.label_357:
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1c], 1
	je	.label_370
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_370
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	je	.label_370
	jmp	.label_375
.label_370:
	lea	rcx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x29]
	mov	r8, qword ptr [rbp - 0x2b0]
	mov	r9, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x60]
	and	al, 1
	sub	rsp, 0x10
	movzx	r11d, al
	mov	qword ptr [rbp - 0x6c8], rdx
	mov	edx, r11d
	mov	rbx, qword ptr [rbp - 0x6c8]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r10
	call	copy_dir
	add	rsp, 0x10
	and	al, 1
	mov	byte ptr [rbp - 0x1b1], al
.label_375:
	jmp	.label_376
.label_480:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2c], 1
	je	.label_393
	mov	byte ptr [rbp - 0x1b3], 1
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_395
	mov	rdi, qword ptr [rbp - 0x28]
	call	dir_name
	mov	cl, 1
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rsi, qword ptr [rbp - 0x3d8]
	mov	edx, OFFSET FLAT:.str_3
	mov	edi, edx
	mov	byte ptr [rbp - 0x6c9], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x6c9]
	mov	byte ptr [rbp - 0x6ca], cl
	je	.label_382
	movabs	rdi, OFFSET FLAT:.str_3
	lea	rsi, [rbp - 0x340]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_382
	lea	rsi, [rbp - 0x3d0]
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_382
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x338]
	cmp	rdx, qword ptr [rbp - 0x3c8]
	mov	byte ptr [rbp - 0x6cb], cl
	jne	.label_271
	mov	rax, qword ptr [rbp - 0x340]
	cmp	rax, qword ptr [rbp - 0x3d0]
	sete	cl
	mov	byte ptr [rbp - 0x6cb], cl
.label_271:
	mov	al, byte ptr [rbp - 0x6cb]
	mov	byte ptr [rbp - 0x6ca], al
.label_382:
	mov	al, byte ptr [rbp - 0x6ca]
	and	al, 1
	mov	byte ptr [rbp - 0x3d9], al
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	free
	test	byte ptr [rbp - 0x3d9], 1
	jne	.label_416
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6d8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x6d8]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_416:
	jmp	.label_395
.label_395:
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3e0], eax
	cmp	ecx, dword ptr [rbp - 0x3e0]
	jge	.label_292
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	esi, dword ptr [rbp - 0x3e0]
	mov	dword ptr [rbp - 0x6dc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x6f0], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6dc]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rcx, qword ptr [rbp - 0x6f0]
	mov	r8, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_292:
	jmp	.label_374
.label_393:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_433
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x16], 1
	mov	byte ptr [rbp - 0x6f1], al
	jne	.label_354
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	sete	cl
	mov	byte ptr [rbp - 0x6f1], cl
.label_354:
	mov	al, byte ptr [rbp - 0x6f1]
	xor	ecx, ecx
	and	al, 1
	mov	byte ptr [rbp - 0x3e1], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x3e1]
	mov	dl, byte ptr [rbp - 0x1c1]
	and	al, 1
	and	dl, 1
	movzx	r8d, al
	mov	byte ptr [rbp - 0x6f2], dl
	mov	edx, r8d
	mov	al, byte ptr [rbp - 0x6f2]
	movzx	r8d, al
	call	create_hard_link
	test	al, 1
	jne	.label_439
	jmp	.label_266
.label_439:
	jmp	.label_424
.label_433:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_442
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	je	.label_444
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_444
.label_442:
	lea	r9, [rbp - 0x29]
	lea	rax, [rbp - 0xf8]
	mov	byte ptr [rbp - 0x1b2], 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x194]
	and	ecx, 0x1ff
	mov	r8d, dword ptr [rbp - 0x198]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	copy_reg
	add	rsp, 0x10
	test	al, 1
	jne	.label_337
	jmp	.label_266
.label_337:
	jmp	.label_346
.label_444:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_456
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	__mknod
	cmp	eax, 0
	je	.label_463
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_468
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6f8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x700], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6f8]
	mov	rdx, qword ptr [rbp - 0x700]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_468:
	jmp	.label_463
.label_463:
	jmp	.label_372
.label_456:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_250
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_250
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_253
.label_250:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	esi, eax
	call	__mknod
	cmp	eax, 0
	je	.label_261
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x704], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x710], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x704]
	mov	rdx, qword ptr [rbp - 0x710]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_261:
	jmp	.label_275
.label_253:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_277
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x3f0], rax
	mov	byte ptr [rbp - 0x1b3], 1
	cmp	qword ptr [rbp - 0x3f0], 0
	jne	.label_411
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x714], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x720], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x714]
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_411:
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3f4], eax
	cmp	ecx, dword ptr [rbp - 0x3f4]
	jge	.label_305
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_305
	test	byte ptr [rbp - 0x29], 1
	jne	.label_305
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_305
	mov	rax, qword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	qword ptr [rbp - 0x728], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x728]
	cmp	rdi, rax
	jne	.label_305
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x158]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x400], rax
	cmp	qword ptr [rbp - 0x400], 0
	je	.label_317
	mov	rdi, qword ptr [rbp - 0x400]
	mov	rsi, qword ptr [rbp - 0x3f0]
	call	strcmp
	cmp	eax, 0
	jne	.label_321
	mov	dword ptr [rbp - 0x3f4], 0
.label_321:
	mov	rdi, qword ptr [rbp - 0x400]
	call	free
.label_317:
	jmp	.label_305
.label_305:
	mov	rdi, qword ptr [rbp - 0x3f0]
	call	free
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x3f4]
	jge	.label_328
	movabs	rdi, OFFSET FLAT:.str.45_0
	mov	esi, dword ptr [rbp - 0x3f4]
	mov	dword ptr [rbp - 0x72c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x738], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x72c]
	mov	rdx, qword ptr [rbp - 0x738]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_328:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_342
	call	restore_default_fscreatecon_or_die
.label_342:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_344
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	edx, dword ptr [rbp - 0xd8]
	call	lchown
	cmp	eax, 0
	je	.label_280
	mov	rdi, qword ptr [rbp - 0x48]
	call	chown_failure_ok
	test	al, 1
	jne	.label_280
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x73c], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0x73c]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	je	.label_356
	jmp	.label_266
.label_356:
	jmp	.label_359
.label_280:
	jmp	.label_359
.label_359:
	jmp	.label_344
.label_344:
	jmp	.label_361
.label_277:
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x748], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x74c], edi
	mov	esi, dword ptr [rbp - 0x74c]
	mov	rdx, qword ptr [rbp - 0x748]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_266
.label_361:
	jmp	.label_275
.label_275:
	jmp	.label_372
.label_372:
	jmp	.label_346
.label_346:
	jmp	.label_424
.label_424:
	jmp	.label_374
.label_374:
	jmp	.label_376
.label_376:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_298
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	jne	.label_298
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_298
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_385
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_298
.label_385:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_394
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_397
	jmp	.label_266
.label_397:
	jmp	.label_394
.label_394:
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x49], 1
	je	.label_349
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_349
	lea	rsi, [rbp - 0x490]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_402
	lea	rdx, [rbp - 0x490]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_402:
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_404
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_404
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_404:
	test	byte ptr [rbp - 0x1b2], 1
	je	.label_408
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_408:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1f], 1
	je	.label_391
	lea	rdi, [rbp - 0xf8]
	call	get_stat_atime
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x4c0], rax
	mov	qword ptr [rbp - 0x4b8], rdx
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4b0], rax
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	qword ptr [rbp - 0x4a8], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x4d0], rax
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x498], rax
	test	byte ptr [rbp - 0x1b3], 1
	je	.label_418
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens_symlink
	mov	dword ptr [rbp - 0x750], eax
	jmp	.label_421
.label_418:
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens
	mov	dword ptr [rbp - 0x750], eax
.label_421:
	mov	eax, dword ptr [rbp - 0x750]
	cmp	eax, 0
	je	.label_386
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x754], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x760], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x754]
	mov	rdx, qword ptr [rbp - 0x760]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	je	.label_365
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_365:
	jmp	.label_386
.label_386:
	jmp	.label_391
.label_391:
	test	byte ptr [rbp - 0x1b3], 1
	jne	.label_398
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_398
	test	byte ptr [rbp - 0x29], 1
	jne	.label_409
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, dword ptr [rbp - 0x16c]
	jne	.label_409
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, dword ptr [rbp - 0x168]
	je	.label_398
.label_409:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rbp - 0x29]
	and	eax, 1
	mov	edx, 0xffffffff
	lea	rcx, [rbp - 0xf8]
	lea	r9, [rbp - 0x188]
	mov	r8d, eax
	call	set_owner
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x764], edx
	mov	dword ptr [rbp - 0x768], eax
	je	.label_437
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0x764]
	test	eax, eax
	je	.label_441
	jmp	.label_473
.label_437:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_441:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x18c], eax
.label_473:
	jmp	.label_398
.label_398:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x27], 1
	je	.label_447
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, eax
	mov	ecx, eax
	call	copy_attr
	test	al, 1
	jne	.label_447
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x28], 1
	je	.label_447
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_447:
	test	byte ptr [rbp - 0x1b3], 1
	je	.label_451
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_451:
	mov	esi, 0xffffffff
	lea	rdx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_459
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_461
.label_459:
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x18c]
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	cmp	eax, 0
	je	.label_465
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x24], 1
	je	.label_465
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_465:
	jmp	.label_325
.label_461:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_470
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_472
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_472:
	jmp	.label_324
.label_470:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x20], 1
	je	.label_476
	test	byte ptr [rbp - 0x29], 1
	je	.label_476
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x769], al
	je	.label_478
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x769], cl
.label_478:
	mov	al, byte ptr [rbp - 0x769]
	mov	ecx, 0x1b6
	mov	edx, 0x1ff
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x4d4], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x4d4]
	mov	qword ptr [rbp - 0x778], rdi
	mov	dword ptr [rbp - 0x77c], ecx
	call	cached_umask
	mov	esi, 0xffffffff
	xor	eax, 0xffffffff
	mov	ecx, dword ptr [rbp - 0x77c]
	and	ecx, eax
	mov	rdi, qword ptr [rbp - 0x778]
	mov	edx, ecx
	call	set_acl
	cmp	eax, 0
	je	.label_268
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_268:
	jmp	.label_323
.label_476:
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_307
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x198]
	mov	dword ptr [rbp - 0x198], eax
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_274
	test	byte ptr [rbp - 0x199], 1
	jne	.label_274
	test	byte ptr [rbp - 0x29], 1
	je	.label_282
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	je	.label_282
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x780], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x788], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x780]
	mov	rdx, qword ptr [rbp - 0x788]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_282:
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, dword ptr [rbp - 0x198]
	mov	ecx, dword ptr [rbp - 0x190]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	je	.label_301
	mov	byte ptr [rbp - 0x199], 1
.label_301:
	jmp	.label_274
.label_274:
	jmp	.label_307
.label_307:
	test	byte ptr [rbp - 0x199], 1
	je	.label_309
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, dword ptr [rbp - 0x198]
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_295
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x78c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x798], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x78c]
	mov	rdx, qword ptr [rbp - 0x798]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	je	.label_319
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_319:
	jmp	.label_295
.label_295:
	jmp	.label_309
.label_309:
	jmp	.label_323
.label_323:
	jmp	.label_324
.label_324:
	jmp	.label_325
.label_325:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_266:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_327
	call	restore_default_fscreatecon_or_die
.label_327:
	cmp	qword ptr [rbp - 0x1a8], 0
	jne	.label_330
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
.label_330:
	cmp	qword ptr [rbp - 0x1b0], 0
	je	.label_336
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	je	.label_341
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x79c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x7a8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x79c]
	mov	rdx, qword ptr [rbp - 0x7a8]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_347
.label_341:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_296
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x7b0], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x7b8], rax
	call	quotearg_n_style
	mov	rdi, qword ptr [rbp - 0x7b0]
	mov	rsi, qword ptr [rbp - 0x7b8]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x7bc], eax
.label_296:
	jmp	.label_347
.label_347:
	jmp	.label_336
.label_336:
	mov	byte ptr [rbp - 0x11], 0
.label_258:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	lea	rsp, [rbp - 0x10]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408370

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x50
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	call	geteuid
	cmp	eax, 0
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, cl
	and	r8b, 1
	mov	byte ptr [rdx + 0x1b], r8b
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x1a], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x34], 0xffffffff
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083d0

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_481
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_482
.label_481:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1a]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_482:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_483
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_483:
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408460

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	cl, 1
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 4], 4
	mov	byte ptr [rbp - 0xa], cl
	je	.label_484
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 4], 3
	mov	byte ptr [rbp - 0xb], cl
	jne	.label_485
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xb], al
.label_485:
	mov	al, byte ptr [rbp - 0xb]
	mov	byte ptr [rbp - 0xa], al
.label_484:
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	xor	eax, eax
	mov	r10b, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x17a], r10b
	jne	.label_515
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17a], dl
.label_515:
	mov	al, byte ptr [rbp - 0x17a]
	and	al, 1
	mov	byte ptr [rbp - 0x16a], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x16a], 1
	je	.label_489
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_489
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_489:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_500
	mov	al, byte ptr [rbp - 0x16a]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_502
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_502
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	and	al, 1
	mov	byte ptr [rbp - 0x16b], al
	test	byte ptr [rbp - 0x16b], 1
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_517
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_517:
	test	byte ptr [rbp - 0x169], 1
	je	.label_520
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_486
.label_520:
	jmp	.label_513
.label_513:
	mov	al, byte ptr [rbp - 0x16b]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_486
.label_502:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_491
.label_500:
	test	byte ptr [rbp - 0x16a], 1
	jne	.label_494
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_494:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	cmp	eax, 0
	jne	.label_501
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_505
.label_501:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_505:
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 0xd8]
	lea	rsi, [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x17b], cl
	jne	.label_507
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17b], dl
.label_507:
	mov	al, byte ptr [rbp - 0x17b]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_487
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_487
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_487
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_487:
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_493
	test	byte ptr [rbp - 0x169], 1
	jne	.label_495
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	je	.label_496
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_496
	mov	byte ptr [rbp - 1], 0
	jmp	.label_486
.label_496:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_495:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_486
.label_493:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_516
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_497
.label_516:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_518
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_518:
	test	byte ptr [rbp - 0x169], 1
	je	.label_514
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_514
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	test	al, 1
	jne	.label_514
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_486
.label_514:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_498
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_498
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_506
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_508
.label_506:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_508:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_522
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_522:
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	je	.label_503
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_503
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_503
	mov	rdi, qword ptr [rbp - 0x10]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x178], rax
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_490
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x179], al
	mov	rdi, qword ptr [rbp - 0x178]
	call	free
	mov	al, byte ptr [rbp - 0x179]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_486
.label_490:
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x2c], 1
	je	.label_504
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_504
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_504:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_510
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_511
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_519
.label_511:
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_521
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_521:
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_523
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_488
.label_523:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	cmp	eax, 0
	je	.label_499
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_499:
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x168]
	cmp	rax, qword ptr [rbp - 0xd8]
	je	.label_512
.label_492:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_512:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_509
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	sete	dl
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x38]
	and	dl, 1
	mov	byte ptr [rax], dl
	mov	byte ptr [rbp - 1], 1
	jmp	.label_486
.label_509:
	jmp	.label_510
.label_510:
	mov	byte ptr [rbp - 1], 0
.label_486:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, r8b
	mov	r9b, cl
	mov	r10b, dl
	mov	ecx, 0xffffff9c
	mov	edx, 0xffffffff
	xor	r8d, r8d
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	r10b, 1
	mov	byte ptr [rbp - 0x19], r10b
	and	r9b, 1
	mov	byte ptr [rbp - 0x1a], r9b
	and	al, 1
	mov	byte ptr [rbp - 0x1b], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	cmovne	r8d, r11d
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	r9d, al
	mov	dword ptr [rsp], 0xffffffff
	call	force_linkat
	xor	edx, edx
	mov	dword ptr [rbp - 0x20], eax
	cmp	edx, dword ptr [rbp - 0x20]
	jge	.label_526
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_524
.label_526:
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_525
	test	byte ptr [rbp - 0x1a], 1
	je	.label_525
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_525:
	mov	byte ptr [rbp - 1], 1
.label_524:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c20

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x18], 1
	je	.label_527
	jmp	.label_528
.label_527:
	movabs	rdi, OFFSET FLAT:.str.53
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0x6d2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	call	__assert_fail
.label_528:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 8], 2
	mov	byte ptr [rbp - 0x19], al
	je	.label_531
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 3
	je	.label_530
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 8], 4
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_529
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x2f], 1
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_529
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	xor	esi, esi
	mov	cl, sil
	test	al, 1
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_529
.label_530:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1a], al
.label_529:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_531:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d10

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdx + 0x18]
	call	writable_destination
	test	al, 1
	jne	.label_534
	lea	rsi, [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x1a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x18], 1
	mov	qword ptr [rbp - 0x30], rdi
	jne	.label_532
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	jne	.label_532
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x16], 1
	je	.label_536
.label_532:
	movabs	rdi, OFFSET FLAT:.str.54
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_535
.label_536:
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_535:
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
	call	quotearg_style
	lea	rdx, [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi + 0x18]
	and	edi, 0xfff
	mov	edi, edi
	mov	r8d, edi
	add	rdx, 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, rcx
	mov	rcx, rax
	mov	r9, qword ptr [rbp - 0x50]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_533
.label_534:
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x60], rax
	call	gettext
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
.label_533:
	call	yesno
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e80

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_537
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdi + rcx]
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_538
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_538:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_539
.label_537:
	mov	byte ptr [rbp - 1], 0
.label_539:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f00

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x40]
	cmp	rax, rdx
	jne	.label_541
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcmp
	cmp	eax, 0
	jne	.label_541
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_540
.label_541:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_542
.label_540:
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	call	mempcpy
	lea	rsi, [rbp - 0xe0]
	mov	rdx,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rsi, rdx
	call	strcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	call	stat
	mov	dword ptr [rbp - 0xe4], eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xe4], 0
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_543
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	byte ptr [rbp - 0xfa], cl
	jne	.label_544
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xe0]
	sete	cl
	mov	byte ptr [rbp - 0xfa], cl
.label_544:
	mov	al, byte ptr [rbp - 0xfa]
	mov	byte ptr [rbp - 0xf9], al
.label_543:
	mov	al, byte ptr [rbp - 0xf9]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_542:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090a0

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, 4
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	esi, ecx
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
	je	.label_545
	movabs	rdi, OFFSET FLAT:.str.58
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x34], eax
.label_545:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409150

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_547:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_549
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_548
	mov	byte ptr [rbp - 1], 1
	jmp	.label_546
.label_548:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_547
.label_549:
	mov	byte ptr [rbp - 1], 0
.label_546:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091c0

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x118
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	edx, 2
	mov	ebx, 0x50
	mov	r14d, ebx
	lea	r15, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, r15
	mov	rsi, rcx
	mov	dword ptr [rbp - 0xe0], edx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rbp - 0xc1], 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xe0]
	call	savedir
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_555
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.59_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_553
.label_555:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 4], 3
	jne	.label_554
	mov	dword ptr [rbp - 0xbc], 2
.label_554:
	mov	byte ptr [rbp - 0xc2], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_551:
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_550
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	call	file_name_concat
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0xd0], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	call	file_name_concat
	lea	r9, [rbp - 0xc0]
	xor	ecx, ecx
	lea	rdx, [rbp - 0xd9]
	lea	rsi, [rbp - 0xc3]
	xor	r8d, r8d
	mov	edi, r8d
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rax]
	and	r10b, 1
	mov	byte ptr [rbp - 0xd9], r10b
	mov	rax, qword ptr [rbp - 0xd0]
	mov	r11, qword ptr [rbp - 0xd8]
	mov	r10b, byte ptr [rbp - 0x31]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x48]
	and	r10b, 1
	mov	qword ptr [rbp - 0xf8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsi, r11
	movzx	r14d, r10b
	mov	qword ptr [rbp - 0x108], rdx
	mov	edx, r14d
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rcx, rbx
	mov	dword ptr [rsp], 0
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	r11, qword ptr [rbp - 0x100]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], 0
	call	copy_internal
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	movzx	r14d, al
	and	r14d, edx
	cmp	r14d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xc1], al
	mov	al, byte ptr [rbp - 0xc3]
	and	al, 1
	movzx	edx, al
	mov	rcx, qword ptr [rbp - 0x60]
	mov	al, byte ptr [rcx]
	and	al, 1
	movzx	r14d, al
	or	r14d, edx
	cmp	r14d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rcx], al
	mov	rdi, qword ptr [rbp - 0xd8]
	call	free
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	test	byte ptr [rbp - 0xc3], 1
	je	.label_552
	jmp	.label_550
.label_552:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xc2]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xc2], al
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_551
.label_550:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	mov	al, byte ptr [rbp - 0xc2]
	mov	rdi, qword ptr [rbp - 0x58]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
.label_553:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x118
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x4d8
	mov	rax, qword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, 0x20000
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x30], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x68], ecx
	mov	byte ptr [rbp - 0x189], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	bl, byte ptr [rax + 0x23]
	and	bl, 1
	mov	byte ptr [rbp - 0x18a], bl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 2
	cmove	r10d, r11d
	or	r10d, 0
	mov	esi, r10d
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_612
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.60_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2d0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c8]
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
	jmp	.label_624
.label_612:
	lea	rsi, [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x64]
	call	__fstat
	cmp	eax, 0
	je	.label_629
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d4]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_567
.label_629:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x180]
	jne	.label_636
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	je	.label_558
.label_636:
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x2ec], edi
	mov	esi, dword ptr [rbp - 0x2ec]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_567
.label_558:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_574
	xor	eax, eax
	mov	ecx, 0x200
	mov	rdx, qword ptr [rbp - 0x28]
	mov	sil, byte ptr [rdx + 0x23]
	test	sil, 1
	cmovne	eax, ecx
	or	eax, 1
	mov	dword ptr [rbp - 0x190], eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x190]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	jne	.label_597
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x25], 1
	je	.label_600
.label_597:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5c]
	jg	.label_600
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_606
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_607
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_607:
	jmp	.label_606
.label_606:
	jmp	.label_600
.label_600:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_572
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	je	.label_572
	mov	rdi, qword ptr [rbp - 0x20]
	call	unlink
	cmp	eax, 0
	je	.label_616
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2f0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2f8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2f0]
	mov	rdx, qword ptr [rbp - 0x2f8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_567
.label_616:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2e], 1
	je	.label_631
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x300], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x304], eax
.label_631:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_571
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax]
	mov	r8, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	ecx, cl
	call	set_process_security_ctx
	test	al, 1
	jne	.label_563
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_567
.label_563:
	jmp	.label_571
.label_571:
	jmp	.label_572
.label_572:
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_575
	jmp	.label_556
.label_556:
	mov	dword ptr [rbp - 0x194], 0x41
	mov	rdi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x194]
	or	eax, 0x80
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, dword ptr [rbp - 0x30]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_591
	cmp	dword ptr [rbp - 0x60], 0x11
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_591
	lea	rsi, [rbp - 0x228]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	cmp	eax, 0
	jne	.label_601
	mov	eax, dword ptr [rbp - 0x210]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_601
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_603
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x194]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_610
.label_603:
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x310], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x314], edi
	mov	esi, dword ptr [rbp - 0x314]
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_567
.label_610:
	jmp	.label_601
.label_601:
	jmp	.label_591
.label_591:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_625
	cmp	dword ptr [rbp - 0x60], 0x15
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_625
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	jne	.label_625
	mov	dword ptr [rbp - 0x60], 0x14
.label_625:
	jmp	.label_633
.label_575:
	mov	dword ptr [rbp - 0x30], 0
.label_633:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_635
	cmp	dword ptr [rbp - 0x60], 2
	jne	.label_619
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_619
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_619
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_556
.label_619:
	movabs	rdi, OFFSET FLAT:.str.64
	mov	esi, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x318], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x320], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_567
.label_635:
	lea	rsi, [rbp - 0xf8]
	mov	edi, dword ptr [rbp - 0x5c]
	call	__fstat
	cmp	eax, 0
	je	.label_585
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x324], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x330], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x324]
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_585:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_598
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_598
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x64]
	call	clone_file
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
	test	byte ptr [rbp - 0x229], 1
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_608
.label_605:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_611
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.65
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x334], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x340], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x348], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x334]
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rcx, qword ptr [rbp - 0x348]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_611:
	mov	byte ptr [rbp - 0x18a], 0
.label_608:
	jmp	.label_598
.label_598:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_628
	call	getpagesize
	lea	rcx, [rbp - 0xf8]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x238], rdx
	mov	rdx, rsp
	mov	eax, 0x12
	mov	esi, eax
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x350], rcx
	mov	rcx, rsi
	mov	qword ptr [rbp - 0x358], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x358]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x240], rax
	cmp	rcx, qword ptr [rbp - 0xc0]
	jge	.label_562
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0xc0], rax
	ja	.label_562
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x360], rax
	jmp	.label_570
.label_562:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x360], rcx
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x360]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 2
	mov	qword ptr [rbp - 0x248], rax
	mov	edi, dword ptr [rbp - 0x64]
	mov	rsi, rdx
	call	fdadvise
	lea	rdi, [rbp - 0x188]
	mov	byte ptr [rbp - 0x249], 0
	call	is_probably_sparse
	and	al, 1
	mov	byte ptr [rbp - 0x24a], al
	mov	ecx, dword ptr [rbp - 0xe0]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_592
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_566
	mov	byte ptr [rbp - 0x249], 1
.label_566:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_595
	test	byte ptr [rbp - 0x24a], 1
	je	.label_595
	mov	byte ptr [rbp - 0x249], 1
.label_595:
	jmp	.label_592
.label_592:
	test	byte ptr [rbp - 0x249], 1
	jne	.label_564
	lea	rax, [rbp - 0x188]
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0x258], rcx
	mov	rcx, rsp
	mov	edx, 0x12
	mov	esi, edx
	lea	rdi, [rbp - 0x188]
	mov	qword ptr [rbp - 0x368], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x368]
	mov	qword ptr [rbp - 0x370], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x370]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x378], rax
	call	io_blksize
	mov	rsi, qword ptr [rbp - 0x240]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdi, rax
	call	buffer_lcm
	mov	qword ptr [rbp - 0x260], rax
	mov	r8d, dword ptr [rbp - 0x170]
	and	r8d, 0xf000
	cmp	r8d, 0x8000
	jne	.label_568
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_568
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
.label_568:
	mov	rax, qword ptr [rbp - 0x260]
	sub	rax, 1
	add	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x240], rax
	mov	rax, qword ptr [rbp - 0x240]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x260]
	mov	rsi, qword ptr [rbp - 0x240]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x240], rsi
	cmp	qword ptr [rbp - 0x240], 0
	je	.label_632
	mov	rax, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_617
.label_632:
	mov	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x240], rax
.label_617:
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x238]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x238]
	call	ptr_align
	mov	qword ptr [rbp - 0x48], rax
	test	byte ptr [rbp - 0x24a], 1
	je	.label_577
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, qword ptr [rbp - 0x248]
	mov	r9, qword ptr [rbp - 0x158]
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x37c], edi
	mov	dword ptr [rbp - 0x380], esi
	mov	qword ptr [rbp - 0x388], rdx
	mov	qword ptr [rbp - 0x390], rcx
	mov	qword ptr [rbp - 0x398], r8
	mov	qword ptr [rbp - 0x3a0], r9
	je	.label_583
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], ecx
	jmp	.label_578
.label_583:
	mov	eax, 1
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rcx, [rbp - 0x261]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x37c]
	mov	r8d, dword ptr [rbp - 0x380]
	mov	qword ptr [rbp - 0x3b0], rsi
	mov	esi, r8d
	mov	r9, qword ptr [rbp - 0x388]
	mov	qword ptr [rbp - 0x3b8], rdx
	mov	rdx, r9
	mov	r10, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rcx, r10
	mov	r8, qword ptr [rbp - 0x398]
	mov	r9, qword ptr [rbp - 0x3a0]
	mov	dword ptr [rsp], eax
	mov	r11, qword ptr [rbp - 0x3b8]
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x3b0]
	mov	qword ptr [rsp + 0x10], r11
	mov	r11, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rsp + 0x18], r11
	call	extent_copy
	test	al, 1
	jne	.label_620
	jmp	.label_588
.label_620:
	jmp	.label_621
.label_588:
	test	byte ptr [rbp - 0x261], 1
	jne	.label_623
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_623:
	jmp	.label_577
.label_577:
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x3c4], edi
	mov	dword ptr [rbp - 0x3c8], esi
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	qword ptr [rbp - 0x3d8], rcx
	je	.label_613
	mov	rax, qword ptr [rbp - 0x248]
	mov	qword ptr [rbp - 0x3e0], rax
	jmp	.label_569
.label_613:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x3e0], rcx
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x3e0]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	dword ptr [rcx + 0xc], 3
	sete	dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rsp
	lea	r8, [rbp - 0x271]
	mov	qword ptr [rdi + 0x20], r8
	lea	r8, [rbp - 0x270]
	mov	qword ptr [rdi + 0x18], r8
	mov	qword ptr [rdi + 8], rsi
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 0x10], -1
	and	dl, 1
	movzx	r9d, dl
	mov	edi, dword ptr [rbp - 0x3c4]
	mov	esi, dword ptr [rbp - 0x3c8]
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rcx, qword ptr [rbp - 0x3d8]
	mov	r8, rax
	call	sparse_copy
	test	al, 1
	jne	.label_579
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_579:
	test	byte ptr [rbp - 0x271], 1
	je	.label_589
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x270]
	call	ftruncate
	cmp	eax, 0
	jge	.label_589
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3e4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x3f0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3e4]
	mov	rdx, qword ptr [rbp - 0x3f0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_589:
	jmp	.label_573
.label_573:
	jmp	.label_628
.label_628:
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_557
	mov	rdi, qword ptr [rbp - 0x40]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x2b0], rax
	mov	qword ptr [rbp - 0x2a8], rdx
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x298], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	get_stat_mtime
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2c0], rax
	mov	qword ptr [rbp - 0x2b8], rdx
	mov	rax, qword ptr [rbp - 0x2c0]
	mov	qword ptr [rbp - 0x290], rax
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	qword ptr [rbp - 0x288], rax
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x3f8], rdi
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 0x3f8]
	call	fdutimens
	cmp	eax, 0
	je	.label_627
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3fc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x408], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3fc]
	mov	rdx, qword ptr [rbp - 0x408]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x24], 1
	je	.label_622
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_622:
	jmp	.label_627
.label_627:
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_565
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0xdc]
	jne	.label_560
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x20]
	cmp	ecx, dword ptr [rbp - 0xd8]
	je	.label_565
.label_560:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x38]
	movzx	r8d, byte ptr [rax]
	and	r8d, 1
	lea	r9, [rbp - 0xf8]
	call	set_owner
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x40c], edx
	mov	dword ptr [rbp - 0x410], eax
	je	.label_580
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 0x40c]
	test	eax, eax
	je	.label_587
	jmp	.label_590
.label_580:
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_581
.label_587:
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x68], eax
.label_590:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x27], 1
	je	.label_596
	mov	byte ptr [rbp - 0x2c1], 0
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0x80
	cmp	eax, 0
	jne	.label_599
	call	geteuid
	cmp	eax, 0
	je	.label_599
	mov	edx, 0x180
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fchmod_or_lchmod
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2c1], cl
.label_599:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x28]
	call	copy_attr
	test	al, 1
	jne	.label_594
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x28], 1
	je	.label_594
	mov	byte ptr [rbp - 0x189], 0
.label_594:
	test	byte ptr [rbp - 0x2c1], 1
	je	.label_615
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x414], eax
.label_615:
	jmp	.label_596
.label_596:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x40]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_602
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	je	.label_626
.label_602:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8d, dword ptr [rbp - 0x68]
	call	copy_acl
	cmp	eax, 0
	je	.label_561
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x24], 1
	je	.label_561
	mov	byte ptr [rbp - 0x189], 0
.label_561:
	jmp	.label_593
.label_626:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2b], 1
	je	.label_634
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_630
	mov	byte ptr [rbp - 0x189], 0
.label_630:
	jmp	.label_609
.label_634:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x20], 1
	je	.label_559
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_559
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x420], rdi
	mov	dword ptr [rbp - 0x424], esi
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, 0x1b6
	mov	rdi, qword ptr [rbp - 0x420]
	mov	esi, dword ptr [rbp - 0x424]
	mov	edx, eax
	call	set_acl
	cmp	eax, 0
	je	.label_637
	mov	byte ptr [rbp - 0x189], 0
.label_637:
	jmp	.label_582
.label_559:
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_584
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_576
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	call	fchmod_or_lchmod
	cmp	eax, 0
	je	.label_576
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x428], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x430], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x428]
	mov	rdx, qword ptr [rbp - 0x430]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x24], 1
	je	.label_604
	mov	byte ptr [rbp - 0x189], 0
.label_604:
	jmp	.label_576
.label_576:
	jmp	.label_584
.label_584:
	jmp	.label_582
.label_582:
	jmp	.label_609
.label_609:
	jmp	.label_593
.label_593:
	jmp	.label_581
.label_581:
	mov	edi, dword ptr [rbp - 0x5c]
	call	close
	cmp	eax, 0
	jge	.label_614
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x434], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x440], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x434]
	mov	rdx, qword ptr [rbp - 0x440]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
.label_614:
	jmp	.label_567
.label_567:
	mov	edi, dword ptr [rbp - 0x64]
	call	close
	cmp	eax, 0
	jge	.label_618
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x444], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x450], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x444]
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
.label_618:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_624:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x4d8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a620

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	edi, eax
	call	setfscreatecon
	cmp	eax, 0
	je	.label_638
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.75
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_638:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a670

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lutimens
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_639
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_639
	mov	dword ptr [rbp - 0x14], 0
.label_639:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6c0

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x40], edx
	test	byte ptr [rbp - 0x29], 1
	jne	.label_642
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x2b], 1
	je	.label_642
.label_641:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_645
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	je	.label_649
.label_645:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_652
.label_649:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x60], ecx
.label_652:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x48], eax
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, dword ptr [rbp - 0x48]
	and	eax, 0x1c0
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x48]
	xor	ecx, 0xffffffff
	or	ecx, 0x800
	or	ecx, 0x400
	or	ecx, 0x200
	and	eax, ecx
	cmp	eax, 0
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x4c]
	call	qset_acl
	cmp	eax, 0
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x10]
	call	owner_failure_ok
	test	al, 1
	jne	.label_651
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.76
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_651:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x24]
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	dword ptr [rbp - 4], eax
	jmp	.label_640
.label_648:
	jmp	.label_642
.label_642:
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_646
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	cmp	eax, 0
	jne	.label_650
	mov	dword ptr [rbp - 4], 1
	jmp	.label_640
.label_650:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_653
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_655
.label_653:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x74]
	mov	dword ptr [rax], ecx
.label_655:
	jmp	.label_644
.label_646:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	cmp	eax, 0
	jne	.label_647
	mov	dword ptr [rbp - 4], 1
	jmp	.label_640
.label_647:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_657
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_654
.label_657:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x78], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x78]
	mov	dword ptr [rax], ecx
.label_654:
	jmp	.label_644
.label_644:
	mov	rdi, qword ptr [rbp - 0x10]
	call	chown_failure_ok
	test	al, 1
	jne	.label_643
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x88], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x24], 1
	je	.label_656
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_640
.label_656:
	jmp	.label_643
.label_643:
	mov	dword ptr [rbp - 4], 0
.label_640:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9b0

	.globl copy_attr
	.type copy_attr, @function
copy_attr:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9d0

	.globl set_author
	.type set_author, @function
set_author:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9f0

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	and	esi, 0xf000
	cmp	esi, 0xa000
	mov	byte ptr [rbp - 0xd], al
	je	.label_658
	call	can_write_any_file
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_658
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	euidaccess
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xd], cl
.label_658:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa50

	.globl clone_file
	.type clone_file, @function
clone_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x40049409
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsi, rcx
	mov	al, 0
	call	ioctl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa80

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	push	rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rax
	jge	.label_659
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_659
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_661
.label_659:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_661
.label_661:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_664
	mov	eax, 0x20000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_662
.label_664:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_663
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_663
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_660
.label_663:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_662:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	byte ptr [rbp - 9], cl
	jne	.label_665
	mov	eax, 0x200
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x40]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	setl	dil
	mov	byte ptr [rbp - 9], dil
.label_665:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abb0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac00

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x198
	mov	rax, qword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	lea	r14, [rbp - 0x98]
	mov	dword ptr [rbp - 0x20], edi
	mov	dword ptr [rbp - 0x24], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, r14
	call	extent_scan_init
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 0
	mov	byte ptr [rbp - 0xb1], 1
.label_667:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_read
	and	al, 1
	mov	byte ptr [rbp - 0xb2], al
	test	byte ptr [rbp - 0xb2], 1
	jne	.label_693
	test	byte ptr [rbp - 0x77], 1
	je	.label_696
	jmp	.label_697
.label_696:
	test	byte ptr [rbp - 0x78], 1
	je	.label_698
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_672
.label_698:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.68
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe8], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_672
.label_693:
	mov	byte ptr [rbp - 0xb3], 0
	mov	dword ptr [rbp - 0xb8], 0
.label_688:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0xf1], al
	jb	.label_679
	mov	al, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xf1], al
.label_679:
	mov	al, byte ptr [rbp - 0xf1]
	test	al, 1
	jne	.label_683
	jmp	.label_685
.label_683:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	jae	.label_687
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_689
.label_687:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, -1
	mov	dword ptr [rbp - 0xb8], eax
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	eax, dword ptr [rbp - 0xb8]
	mov	edx, eax
	imul	rdx, rdx, 0x18
	add	rdx, qword ptr [rbp - 0x70]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	qword ptr [rbp - 0xc8], 0
.label_689:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, rcx
	jge	.label_703
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_669
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_669:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_703:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xb1], 0
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_674
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	lseek
	cmp	rax, 0
	jge	.label_690
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_671:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_672
.label_690:
	test	byte ptr [rbp - 0xb3], 1
	je	.label_702
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_704
.label_702:
	test	byte ptr [rbp - 0xb3], 1
	jne	.label_666
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_666
.label_704:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	dword ptr [rbp - 0x4c], 3
	sete	al
	mov	rcx, qword ptr [rbp - 0xd0]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_678
	jmp	.label_671
.label_678:
	mov	byte ptr [rbp - 0xb1], 1
	jmp	.label_680
.label_666:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	test	byte ptr [rbp - 0xb3], 1
	je	.label_682
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xd0]
	jge	.label_686
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_691
.label_686:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x108], rax
.label_691:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xd8], rax
.label_682:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	write_zeros
	test	al, 1
	jne	.label_699
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.70
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_671
.label_699:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_673
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_676
.label_673:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x120], rax
.label_676:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0xb0], rax
.label_680:
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	byte ptr [rbp - 0xb3], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x4c], 3
	mov	dword ptr [rbp - 0x124], edi
	mov	dword ptr [rbp - 0x128], esi
	mov	qword ptr [rbp - 0x130], rdx
	mov	qword ptr [rbp - 0x138], rcx
	jne	.label_684
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_695
.label_684:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_695
.label_695:
	mov	rax, qword ptr [rbp - 0x140]
	mov	r9d, 1
	lea	rcx, [rbp - 0xe0]
	lea	rdx, [rbp - 0xe1]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	r10d, dword ptr [rbp - 0x124]
	mov	qword ptr [rbp - 0x148], rdi
	mov	edi, r10d
	mov	r11d, dword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, r11d
	mov	rbx, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x158], rdx
	mov	rdx, rbx
	mov	r14, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x160], rcx
	mov	rcx, r14
	mov	qword ptr [rbp - 0x168], r8
	mov	r8, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 0x20], r15
	call	sparse_copy
	test	al, 1
	jne	.label_692
	jmp	.label_671
.label_692:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_694
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
.label_694:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_700
	mov	byte ptr [rbp - 0x77], 1
	jmp	.label_685
.label_700:
	jmp	.label_701
.label_701:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_688
.label_685:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0x77]
	xor	al, 0xff
	test	al, 1
	jne	.label_667
.label_697:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_670
	test	byte ptr [rbp - 0xb1], 1
	je	.label_675
.label_670:
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_677
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ftruncate
	cmp	eax, 0
	jne	.label_681
	jmp	.label_675
.label_677:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	write_zeros
	test	al, 1
	jne	.label_675
.label_681:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_672
.label_675:
	cmp	dword ptr [rbp - 0x4c], 3
	jne	.label_668
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_668
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_668
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_672
.label_668:
	mov	byte ptr [rbp - 0x19], 1
.label_672:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x198
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b380

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xe8
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x30]
	mov	r11, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x18]
	mov	r15, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x20], edi
	mov	dword ptr [rbp - 0x24], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], r15
	mov	qword ptr [rbp - 0x58], r14
	mov	qword ptr [rbp - 0x60], rbx
	mov	qword ptr [rbp - 0x68], r11
	mov	qword ptr [rbp - 0x70], r10
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], 0
	mov	byte ptr [rbp - 0x71], 0
	mov	qword ptr [rbp - 0x80], 0
.label_732:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_717
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0xa8], edi
	mov	qword ptr [rbp - 0xb0], rsi
	jae	.label_736
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_706
.label_736:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
.label_706:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_725
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_731
	jmp	.label_732
.label_731:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.72
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_713
.label_725:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_724
	jmp	.label_717
.label_724:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_730
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_707
.label_730:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
.label_707:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_723:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_727
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rcx, qword ptr [rbp - 0x88]
	jae	.label_729
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_737
.label_729:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xd8], rax
.label_737:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_715
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_715
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x90]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
.label_715:
	xor	eax, eax
	mov	cl, al
	mov	dl, byte ptr [rbp - 0x71]
	and	dl, 1
	movzx	eax, dl
	mov	dl, byte ptr [rbp - 0xa1]
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_728
	cmp	qword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_728:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	byte ptr [rbp - 0xa2], al
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x90]
	jne	.label_708
	mov	al, 1
	test	byte ptr [rbp - 0x71], 1
	mov	byte ptr [rbp - 0xda], al
	je	.label_719
.label_708:
	cmp	qword ptr [rbp - 0x90], 0
	setne	al
	xor	al, 0xff
	mov	byte ptr [rbp - 0xda], al
.label_719:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	mov	byte ptr [rbp - 0xa3], al
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_726
	test	byte ptr [rbp - 0xa3], 1
	je	.label_734
.label_726:
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_721
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_721:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_714
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x80]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_722
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.73
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_713
.label_722:
	jmp	.label_712
.label_714:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_710
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_713
.label_710:
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [rbp - 0xa3], 1
	je	.label_718
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_733
	mov	qword ptr [rbp - 0x88], 0
.label_733:
	test	byte ptr [rbp - 0xa2], 1
	je	.label_705
	mov	qword ptr [rbp - 0x90], 0
	jmp	.label_709
.label_705:
	mov	qword ptr [rbp - 0x80], 0
.label_709:
	jmp	.label_718
.label_718:
	jmp	.label_720
.label_734:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x90]
	cmp	rcx, rax
	ja	.label_735
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_711
.label_735:
	movabs	rdi, OFFSET FLAT:.str.74
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xf4], edi
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_713
.label_711:
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_723
.label_727:
	mov	al, byte ptr [rbp - 0x71]
	mov	rcx, qword ptr [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rcx], al
	jmp	.label_732
.label_717:
	test	byte ptr [rbp - 0x71], 1
	je	.label_716
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_716
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_713
.label_716:
	mov	byte ptr [rbp - 0x19], 1
.label_713:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xe8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8d0

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_738
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_739
.label_738:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_739:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b920

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x28]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b960

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	edx, 1
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_741
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_742
.label_741:
	test	byte ptr [rbp - 0x11], 1
	je	.label_740
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_740
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_742
.label_740:
	mov	byte ptr [rbp - 1], 1
.label_742:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba70

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_747
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_744
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_744:
	jmp	.label_747
.label_747:
	jmp	.label_745
.label_745:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_743
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_746
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_750
.label_746:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_750:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_748
	mov	byte ptr [rbp - 1], 0
	jmp	.label_749
.label_748:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_745
.label_743:
	mov	byte ptr [rbp - 1], 1
.label_749:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb70

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], 0
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	fallocate
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_751
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_752
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_751
.label_752:
	mov	dword ptr [rbp - 0x1c], 0
.label_751:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbe0

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_753
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_753
.label_753:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc10

	.globl is_nul
	.type is_nul, @function
is_nul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_759
	mov	byte ptr [rbp - 1], 1
	jmp	.label_754
.label_759:
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_755
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_761
	mov	byte ptr [rbp - 1], 0
	jmp	.label_754
.label_761:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_758
	mov	byte ptr [rbp - 1], 1
	jmp	.label_754
.label_758:
	jmp	.label_764
.label_755:
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_763
	mov	byte ptr [rbp - 1], 0
	jmp	.label_754
.label_763:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_756
	mov	byte ptr [rbp - 1], 1
	jmp	.label_754
.label_756:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_757
	jmp	.label_762
.label_757:
	jmp	.label_760
.label_762:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_754:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd30

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_765
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_766
.label_765:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_766:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd80

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_767
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	src_to_dest_free
.label_767:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bde0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be10

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_769
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_768
.label_769:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be80

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_771
	call	xalloc_die
.label_771:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_770
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_772
.label_770:
	mov	qword ptr [rbp - 8], 0
.label_772:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf40

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x67
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:src_to_dest_hash
	movabs	rcx, OFFSET FLAT:src_to_dest_compare
	movabs	r8, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [src_to_dest]],  rax
	cmp	qword ptr [word ptr [src_to_dest]],  0
	jne	.label_773
	call	xalloc_die
.label_773:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf90

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfc0

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_774
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_774:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c030
	.globl forget_all
	.type forget_all, @function
forget_all:

	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	call	hash_free
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c050

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x18], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x21], 0
	call	extent_need_sync
	xor	edi, edi
	mov	ecx, 1
	test	al, 1
	cmovne	edi, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x10], edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0c0

	.globl extent_need_sync
	.type extent_need_sync, @function
extent_need_sync:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0d0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1060
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x20], rdi
.label_791:
	mov	eax, 0xc020660b
	mov	esi, eax
	mov	rcx, -1
	xor	eax, eax
	mov	edx, 0x1000
	lea	rdi, [rbp - 0x1020]
	mov	r8, rdi
	mov	qword ptr [rbp - 0x1028], r8
	mov	r8, qword ptr [rbp - 0x1028]
	add	r8, 0x20
	mov	qword ptr [rbp - 0x1030], r8
	mov	qword ptr [rbp - 0x1058], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x1060], rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x10], eax
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x18], 0x48
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x1060]
	sub	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	qword ptr [rcx + 8], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	rsi, qword ptr [rbp - 0x1058]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jge	.label_795
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_784
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_784:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_787
.label_795:
	mov	rax, qword ptr [rbp - 0x1028]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_792
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_787
.label_792:
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	sub	rax, rdx
	cmp	rcx, rax
	ja	.label_800
	jmp	.label_783
.label_800:
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_783:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	eax, dword ptr [rdx + 0x14]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	sub	rdx, rsi
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x1038], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, rax
	mov	rdx, rcx
	call	xnrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x1038], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x103c], 0
	mov	dword ptr [rbp - 0x103c], 0
.label_793:
	mov	eax, dword ptr [rbp - 0x103c]
	mov	rcx, qword ptr [rbp - 0x1028]
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_794
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rdx, qword ptr [rdx]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	esi, ecx
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x1030]
	sub	rax, qword ptr [rsi + 0x10]
	cmp	rdx, rax
	ja	.label_799
	jmp	.label_786
.label_799:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_786:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_780
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	eax, edx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	jne	.label_780
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jne	.label_780
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + 8], rcx
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	mov	eax, dword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx + 0x10], eax
	jmp	.label_788
.label_780:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_779
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx]
	ja	.label_778
.label_779:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_785
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jbe	.label_785
.label_778:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_796
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_798
.label_796:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1048], rax
.label_798:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	sub	rax, qword ptr [rdx]
	mov	qword ptr [rbp - 0x1050], rax
	mov	rax, qword ptr [rbp - 0x1050]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx + 0x10]
	jae	.label_781
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_790
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_790:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_787
.label_781:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x1050]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rsi, qword ptr [rdx + 0x10]
	sub	rsi, rax
	mov	qword ptr [rdx + 0x10], rsi
	mov	ecx, dword ptr [rbp - 0x103c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x103c], ecx
	jmp	.label_775
.label_785:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x10], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, 1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_788
.label_788:
	jmp	.label_775
.label_775:
	mov	eax, dword ptr [rbp - 0x103c]
	add	eax, 1
	mov	dword ptr [rbp - 0x103c], eax
	jmp	.label_793
.label_794:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_782
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
.label_782:
	cmp	dword ptr [rbp - 0x14], 0x48
	jbe	.label_777
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x21], 1
	jne	.label_777
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, ecx
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	add	rax, rdx
	add	rax, -0x18
	mov	qword ptr [rbp - 0x20], rax
.label_777:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x21], 1
	je	.label_789
	jmp	.label_776
.label_789:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x14], 0x48
	jb	.label_797
	jmp	.label_776
.label_797:
	jmp	.label_791
.label_776:
	mov	byte ptr [rbp - 1], 1
.label_787:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1060
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6b0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, r9b
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	mov	dword ptr [rbp - 0x2c], r9d
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_807
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	jne	.label_811
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	jmp	.label_803
.label_811:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x158], ecx
.label_803:
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_807:
	test	byte ptr [rbp - 0x25], 1
	je	.label_808
	cmp	dword ptr [rbp - 0x2c], 0x11
	je	.label_810
.label_808:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_809
.label_810:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_806
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_809
.label_806:
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	mov	r8d, eax
	lea	rdx, [rbp - 0x150]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x150], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rdi
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rdi, qword ptr [rbp - 0x138]
	call	try_tempname_len
	cmp	eax, 0
	je	.label_804
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_805
.label_804:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_812
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_802
.label_812:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], ecx
.label_802:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_805:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_801
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_801:
	mov	eax, dword ptr [rbp - 0x154]
	mov	dword ptr [rbp - 4], eax
.label_809:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c880

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0x100
	ja	.label_816
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_813
.label_816:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_815
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_814
.label_815:
	jmp	.label_813
.label_813:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	mempcpy
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_814:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c930

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c980

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	dword ptr [rbp - 0x28], r8d
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_817
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	symlinkat
	cmp	eax, 0
	jne	.label_822
	xor	eax, eax
	mov	dword ptr [rbp - 0x150], eax
	jmp	.label_818
.label_822:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], ecx
.label_818:
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_817:
	test	byte ptr [rbp - 0x21], 1
	je	.label_824
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_827
.label_824:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_826
.label_827:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_819
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_826
.label_819:
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	mov	eax, 6
	mov	r8d, eax
	lea	rdx, [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rdi
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	mov	rdi, qword ptr [rbp - 0x138]
	call	try_tempname_len
	cmp	eax, 0
	je	.label_828
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_821
.label_828:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	je	.label_823
	call	__errno_location
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_820
.label_823:
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_820:
	jmp	.label_821
.label_821:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_825
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_825:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 4], eax
.label_826:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb20

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 8]
	call	symlinkat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb60

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	qcopy_acl
	mov	dword ptr [rbp - 0x24], eax
	mov	ecx, eax
	sub	eax, -2
	mov	dword ptr [rbp - 0x28], ecx
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_832
	jmp	.label_829
.label_829:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_830
	jmp	.label_833
.label_832:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_831
.label_830:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_831
.label_833:
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc40

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	call	qset_acl
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_834
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_5
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_834:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ccb0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_844
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_845
.label_844:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_845:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_838
.label_837:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_838:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_840:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_846
	mov	qword ptr [rbp - 8], 0
	jmp	.label_836
.label_846:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_835
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_835
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_836
.label_835:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_847
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_836
.label_847:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_843
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_839
.label_843:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_841
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_842
.label_841:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_836
.label_842:
	jmp	.label_839
.label_839:
	jmp	.label_840
.label_836:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce70

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_848
	movabs	rdi, OFFSET FLAT:.str_8
	call	getenv
	mov	qword ptr [rbp - 8], rax
.label_848:
	cmp	qword ptr [rbp - 8], 0
	je	.label_850
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_850
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	last_component
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_850
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_849
.label_850:
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf10

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, cl
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x78], rax
	call	strlen
	mov	rsi, qword ptr [rbp - 0x78]
	add	rsi, rax
	mov	qword ptr [rbp - 0x30], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_864
	xor	eax, eax
	mov	edi, eax
	call	set_simple_backup_suffix
.label_864:
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_853
	mov	qword ptr [rbp - 0x40], 9
.label_853:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_861
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_857
.label_861:
	mov	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_860:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	cmp	dword ptr [rbp - 0x1c], 1
	jne	.label_855
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
	jmp	.label_856
.label_855:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rax, rsp
	lea	rsi, [rbp - 0x5c]
	mov	qword ptr [rax], rsi
	lea	rsi, [rbp - 0x50]
	lea	r9, [rbp - 0x58]
	call	numbered_backup
	mov	edi, eax
	mov	ecx, edi
	sub	eax, 3
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x84], eax
	ja	.label_852
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_867]]
	jmp	rcx
.label_2424:
	jmp	.label_852
.label_2425:
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_854
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_854:
	jmp	.label_858
.label_858:
	mov	edx, 0x7e
	lea	r8, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_852
.label_2426:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_857
.label_852:
	jmp	.label_856
.label_856:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_851
	jmp	.label_859
.label_851:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_863
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	qword ptr [rbp - 0x28], 0
.label_863:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	cmp	dword ptr [rbp - 0x1c], 1
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x50]
	add	r8, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rcx, r8
	mov	r8d, eax
	call	renameatu
	cmp	eax, 0
	jne	.label_865
	jmp	.label_859
.label_865:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	cmp	dword ptr [rbp - 0x70], 0x11
	je	.label_866
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_868
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x88], eax
.label_868:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x8c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_857
.label_866:
	jmp	.label_860
.label_859:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_862
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x90], eax
.label_862:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_857:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d200

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rax, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	base_len
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_884
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_886
.label_884:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	esi, OFFSET FLAT:.str_3
	mov	dword ptr [rbp - 0xac], edx
	call	strcpy
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0xac]
	mov	qword ptr [rbp - 0xb8], rax
	call	opendirat
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_880
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_880
	mov	dword ptr [rbp - 0x3c], 3
.label_880:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	mov	word ptr [rax], cx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:.str.3_2
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_869
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_873
.label_869:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_886:
	jmp	.label_871
.label_871:
	mov	rdi, qword ptr [rbp - 0x48]
	call	readdir
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	je	.label_879
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	add	rdi, 4
	cmp	rax, rdi
	jae	.label_883
	jmp	.label_871
.label_883:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_872
	jmp	.label_871
.label_872:
	mov	eax, 0x31
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 2
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_877
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	jle	.label_882
.label_877:
	jmp	.label_871
.label_882:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x89], dl
	mov	qword ptr [rbp - 0x98], 1
.label_875:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_888
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x39
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x89]
	and	sil, 1
	movzx	edi, sil
	and	edi, edx
	cmp	edi, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x89], sil
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_875
.label_888:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_870
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_870
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_876
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_870
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jle	.label_876
.label_870:
	jmp	.label_871
.label_876:
	xor	eax, eax
	mov	ecx, 1
	mov	dl, byte ptr [rbp - 0x89]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x89]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 2
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0xa0]
	jae	.label_874
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	jb	.label_881
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_881:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_885
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 3
	jmp	.label_873
.label_885:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x18], rax
.label_874:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x7e
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x89]
	and	dl, 1
	movzx	esi, dl
	mov	rax, qword ptr [rbp - 0x88]
	movsxd	rcx, esi
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 2
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
.label_887:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	jne	.label_878
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	jmp	.label_887
.label_878:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	add	cl, 1
	mov	byte ptr [rax], cl
	jmp	.label_871
.label_879:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], edx
.label_873:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6c0

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	dword ptr [rbp - 0x18], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	ecx, 0xe
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x30]
	jae	.label_895
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_889
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_893
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:.str_3
	mov	esi, edx
	call	strcpy
	mov	qword ptr [rbp - 0x50], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	pathconf
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	mov	rdi, qword ptr [rbp - 0x40]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x40], rdi
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rbp - 0x42]
	mov	word ptr [rax], cx
	jmp	.label_891
.label_893:
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	edi, dword ptr [rbp - 0x18]
	call	fpathconf
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x40], rdx
.label_891:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_890
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_890
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_894
.label_890:
	mov	rax, -1
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	cmovl	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
.label_894:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_889:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_895:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_892
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_896
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_896:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_892:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d890

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	backupfile_internal
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8c0
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	backupfile_internal
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_897
	call	xalloc_die
.label_897:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d910

	.globl get_version
	.type get_version, @function
get_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_898
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_899
.label_898:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_900
.label_899:
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 4], r10d
.label_900:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d990

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_901
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_901
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_version
	mov	dword ptr [rbp - 4], eax
	jmp	.label_902
.label_901:
	movabs	rdi, OFFSET FLAT:.str.1_5
	call	getenv
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rsi, rax
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_902:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da00

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
	je	.label_912
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_907
.label_912:
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
.label_914:
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
	jmp	.label_914
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
	jmp	.label_904
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
.label_904:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db30
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db50

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	byte ptr [rbp - 1], 0
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_919
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	cmp	eax, 0
	jne	.label_915
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_915
	mov	byte ptr [rbp - 1], 1
.label_915:
	jmp	.label_919
.label_919:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	close_stream
	cmp	eax, 0
	je	.label_921
	mov	byte ptr [rbp - 1], 1
.label_921:
	test	byte ptr [rbp - 1], 1
	je	.label_916
	movabs	rdi, OFFSET FLAT:.str_10
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_918
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_920
.label_918:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error
.label_920:
	jmp	.label_916
.label_916:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	je	.label_917
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_917:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name_0]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dca0
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
	#Procedure 0x40dcc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_925
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_926
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_925
.label_926:
	movabs	rdi, OFFSET FLAT:.str_11
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_923
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_924
.label_923:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_924:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_925:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_922
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_922:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ddb0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_927
	call	xalloc_die
.label_927:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ddf0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_928
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_933
.label_928:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_933:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_930:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_929
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_931
	jmp	.label_929
.label_931:
	jmp	.label_932
.label_932:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_930
.label_929:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dea0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_934
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_934
.label_934:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_936
	mov	qword ptr [rbp - 8], 0
	jmp	.label_935
.label_936:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_937
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_937:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_935:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df70

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_943:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_938
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_943
.label_938:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_945:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_940
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_944
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_939
.label_944:
	test	byte ptr [rbp - 0x19], 1
	je	.label_942
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_942:
	jmp	.label_939
.label_939:
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_945
.label_940:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e010

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_948:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_946:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_947
	jmp	.label_950
.label_947:
	jmp	.label_949
.label_949:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_948
.label_950:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e0a0

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
	#Procedure 0x40e120

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
	#Procedure 0x40e160
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_952
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
.label_952:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1b0

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_953
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_953:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_954
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_955
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_956
.label_955:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_956:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_954:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3b0

	.globl record_file
	.type record_file, @function
record_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_957
	jmp	.label_959
.label_957:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_958
	call	xalloc_die
.label_958:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_959
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_959:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e460

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_960
	mov	byte ptr [rbp - 1], 0
	jmp	.label_961
.label_960:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_lookup
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_961:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4e0

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_969
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_963
	movabs	rdi, OFFSET FLAT:.str_12
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_970
.label_963:
	movabs	rdi, OFFSET FLAT:.str.1_7
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_970:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_969:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_968
	movabs	rdi, OFFSET FLAT:.str.2_4
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_968:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_974
	movabs	rdi, OFFSET FLAT:.str.3_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_974:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_973
	movabs	rdi, OFFSET FLAT:.str.4_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_973:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_967
	movabs	rdi, OFFSET FLAT:.str.5_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_967:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_964
	movabs	rdi, OFFSET FLAT:.str.6_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_964:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_966
	movabs	rdi, OFFSET FLAT:.str.7_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_966:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_972
	movabs	rdi, OFFSET FLAT:.str.8_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_972:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	jne	.label_971
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_971:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xc000
	jne	.label_965
	movabs	rdi, OFFSET FLAT:.str.10_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_965:
	movabs	rdi, OFFSET FLAT:.str.11_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_962:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e720

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_978
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_977
.label_978:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_977:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_980
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_979
.label_980:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_979:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_976
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_975
.label_976:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_975:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e920

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_981
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_983
.label_981:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_984
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_983
.label_984:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_982
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_983
.label_982:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_988
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_983
.label_988:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_987
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_983
.label_987:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_986
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_983
.label_986:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_985
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_983
.label_985:
	mov	byte ptr [rbp - 1], 0x3f
.label_983:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea00
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_989
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_991
.label_989:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_990
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_994
.label_990:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_992
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_993
.label_992:
	jmp	.label_993
.label_993:
	jmp	.label_994
.label_994:
	jmp	.label_991
.label_991:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eaa0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mfile_name_concat
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_995
	call	xalloc_die
.label_995:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eaf0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_998
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_997
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_997
	mov	byte ptr [rbp - 0x41], 0x2f
.label_997:
	jmp	.label_1000
.label_998:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1002
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1002:
	jmp	.label_1000
.label_1000:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_996
	mov	qword ptr [rbp - 8], 0
	jmp	.label_999
.label_996:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	cl, byte ptr [rbp - 0x41]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1001:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_999:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec70

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
	#Procedure 0x40ed20

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed40

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed60

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed80

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1013:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1008
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1007:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1010
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1007
.label_1010:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1012
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1012:
	jmp	.label_1009
.label_1009:
	jmp	.label_1011
.label_1011:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1013
.label_1008:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee30
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1021:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1018
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1015
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1017:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1019
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1017
.label_1019:
	jmp	.label_1015
.label_1015:
	jmp	.label_1014
.label_1014:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1021
.label_1018:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1016
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1016
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1020
.label_1016:
	mov	byte ptr [rbp - 1], 0
.label_1020:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef20
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_5
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str_13
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_8
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1022]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1023]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1024]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f040

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1031
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1025
.label_1031:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1030:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1026
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1027
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1027
	jmp	.label_1028
.label_1027:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1025
.label_1028:
	jmp	.label_1029
.label_1029:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1030
.label_1026:
	mov	qword ptr [rbp - 8], 0
.label_1025:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f100

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1032
	call	abort
.label_1032:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f170
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1033
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1034
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1035:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1036
	call	abort
.label_1036:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1038
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1034
.label_1038:
	jmp	.label_1037
.label_1037:
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1035
.label_1034:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f200
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1041:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1044
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1044
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1040
.label_1044:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1041
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1045
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1043
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1040
.label_1043:
	jmp	.label_1042
.label_1045:
	mov	qword ptr [rbp - 8], 0
.label_1040:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2d0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1052:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1049
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1046
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1048:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1053
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1047
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1050
.label_1047:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1048
.label_1053:
	jmp	.label_1046
.label_1046:
	jmp	.label_1051
.label_1051:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1052
.label_1049:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1050:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3a0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1057:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1060
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1061
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1056:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1058
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1055
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1059
.label_1055:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1056
.label_1058:
	jmp	.label_1061
.label_1061:
	jmp	.label_1054
.label_1054:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1057
.label_1060:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1059:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f470
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1063:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1062
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1063
.label_1062:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4d0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1064]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1065]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f500

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1066
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1066:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1072
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1072:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1069
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1068
.label_1069:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1073
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1073:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1070
	jmp	.label_1067
.label_1070:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1074
	jmp	.label_1067
.label_1074:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1071
	jmp	.label_1067
.label_1071:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1067:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1068:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6a0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6e0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f700

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1075
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1078
.label_1075:
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1076
	movss	xmm0,  dword ptr [dword ptr [label_1077]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1076
	movss	xmm0,  dword ptr [dword ptr [label_1077]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1076
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1076
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1076
	movss	xmm0,  dword ptr [dword ptr [label_1077]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1076
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1076
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1078
.label_1076:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1078:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f830

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_1080
	movss	xmm0,  dword ptr [dword ptr [label_1085]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_1086
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1086:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1083
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1082
.label_1083:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1081]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1080:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1084
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1082
.label_1084:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1082:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f950
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1093:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1087
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1092
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1091:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1088
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1090
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1090:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1091
.label_1088:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1094
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1094:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1092:
	jmp	.label_1089
.label_1089:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1093
.label_1087:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa70

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1098
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1098
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1097:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1104
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1095
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1103:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1099
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1103
.label_1099:
	jmp	.label_1095
.label_1095:
	jmp	.label_1107
.label_1107:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1097
.label_1104:
	jmp	.label_1098
.label_1098:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1106:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1101
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1102:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1096
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1102
.label_1096:
	jmp	.label_1105
.label_1105:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1106
.label_1101:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1100:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1108
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1100
.label_1108:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fbf0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1110
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1114
.label_1110:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1115
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1114
.label_1115:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1112
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1114
.label_1112:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1111
	jmp	.label_1113
.label_1111:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1114
.label_1113:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1116
	jmp	.label_1117
.label_1116:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1109
.label_1117:
	call	abort
.label_1109:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1114:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe00

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1130:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1126
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1129
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1122:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1120
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1128
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1121
.label_1128:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1121:
	jmp	.label_1123
.label_1123:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1122
.label_1120:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1127
	jmp	.label_1119
.label_1127:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1124
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1131
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1118
.label_1131:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1125
.label_1124:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1125:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1129:
	jmp	.label_1119
.label_1119:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1130
.label_1126:
	mov	byte ptr [rbp - 1], 1
.label_1118:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ffe0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1145
.label_2423:
	call	abort
.label_1145:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1144
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1148
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1148:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1136
.label_1144:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1137
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1137:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1142
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1142:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1135
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1143
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1143:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1150
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1150:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1138
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1147
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1149
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1149:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1134
.label_1147:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1146
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1146:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1134:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [label_1085]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1140
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1136
.label_1140:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1081]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1132
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1136
.label_1132:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1139
	call	abort
.label_1139:
	jmp	.label_1138
.label_1138:
	jmp	.label_1135
.label_1135:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1133
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1141
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1136
.label_1141:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1136
.label_1133:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1136:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410480

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1163
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1153
.label_1163:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1157
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1157
	jmp	.label_1151
.label_1157:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1161
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1159
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1158
.label_1159:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1158:
	jmp	.label_1161
.label_1161:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1153
.label_1151:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1162:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1152
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1156
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1156
	jmp	.label_1154
.label_1156:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1155
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1155:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1153
.label_1154:
	jmp	.label_1160
.label_1160:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1162
.label_1152:
	mov	qword ptr [rbp - 8], 0
.label_1153:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410650

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1164
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1165
.label_1164:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1165:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4106b0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1166
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1169
.label_1166:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1168
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1167
.label_1168:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1167:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1169:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410720

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1172
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1177
.label_1172:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1181
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1171
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1171:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1180
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1180:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1184
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1174
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1174:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1170
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1170:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1183
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1179
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1185
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1185:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1173
.label_1179:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1182
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1182:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1173:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1081]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1178
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1176:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1175
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1176
.label_1175:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1178:
	jmp	.label_1183
.label_1183:
	jmp	.label_1184
.label_1184:
	jmp	.label_1181
.label_1181:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1177:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410b20

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1186
	mov	qword ptr [rbp - 8], 0xa
.label_1186:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1188:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1190
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1190:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1187
	jmp	.label_1189
.label_1187:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1188
.label_1189:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ba0

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1191:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1194
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1194:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1193
	jmp	.label_1192
.label_1193:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1191
.label_1192:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c60

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ca0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410cf0

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d20

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1195
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1195
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_1195:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410db0
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1196
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1196
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1196:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e50

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e80

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x1c]
	or	edx, 0x90900
	mov	dword ptr [rbp - 0x2c], edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_1199
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
.label_1199:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1200
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1198
.label_1200:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x40], eax
	mov	dword ptr [rbp - 0x44], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rax], ecx
.label_1198:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1197:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f30

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
	#Procedure 0x410f40
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
	#Procedure 0x410f50

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1203
	movabs	rdi, OFFSET FLAT:.str_14
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1203:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1205
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1201
.label_1205:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1201:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1204
	movabs	rsi, OFFSET FLAT:.str.1_9
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1204
	movabs	rsi, OFFSET FLAT:.str.2_6
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1202
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1202:
	jmp	.label_1204
.label_1204:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411070

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, rax
	call	get_permissions
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1206
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1207
.label_1206:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	set_permissions
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1207:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110f0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	xor	ecx, ecx
	mov	r8d, 4
	mov	r9d, r8d
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, rax
	mov	esi, ecx
	mov	rdx, r9
	mov	qword ptr [rbp - 0x28], rax
	call	memset
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_permissions
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411150
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
	je	.label_1208
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1209
.label_1208:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1209
.label_1209:
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
	#Procedure 0x4111d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1210
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1211
.label_1210:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1211
.label_1211:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411210
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
	je	.label_1212
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1213
.label_1212:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411260

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
	je	.label_1214
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1215
.label_1214:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1215
.label_1215:
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
	#Procedure 0x411310
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1216
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1216:
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
	#Procedure 0x411350

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
	jne	.label_1217
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1217:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1219
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1218
.label_1219:
	call	abort
.label_1218:
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
	#Procedure 0x4113c0
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
	je	.label_1220
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1221
.label_1220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1221
.label_1221:
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
	#Procedure 0x411490

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
.label_1373:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1282
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1288]]
	jmp	rcx
.label_2362:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2361:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1295
	jmp	.label_1298
.label_1298:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1299
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1299:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1295
.label_1295:
	movabs	rax, OFFSET FLAT:.str.10_3
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1255
.label_2363:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1255
.label_2364:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1317
	movabs	rdi, OFFSET FLAT:.str.11_3
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_2
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1317:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1329
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1347:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1333
	jmp	.label_1336
.label_1336:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1338
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1338:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1342
.label_1342:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1347
.label_1333:
	jmp	.label_1329
.label_1329:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1255
.label_2359:
	mov	byte ptr [rbp - 0x79], 1
.label_2358:
	mov	byte ptr [rbp - 0x7b], 1
.label_2360:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1356
	mov	byte ptr [rbp - 0x79], 1
.label_1356:
	jmp	.label_1404
.label_1404:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1366
	jmp	.label_1361
.label_1361:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1362
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1362:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1366
.label_1366:
	movabs	rax, OFFSET FLAT:.str.12_2
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1255
.label_2357:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1255
.label_1282:
	call	abort
.label_1255:
	mov	qword ptr [rbp - 0x58], 0
.label_1345:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1254
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1380
.label_1254:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1380:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1392
	jmp	.label_1399
.label_1392:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1227
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1227
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1227
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1408
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1408
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1405
.label_1408:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1405:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1227
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1227
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1230
	jmp	.label_1233
.label_1230:
	mov	byte ptr [rbp - 0x81], 1
.label_1227:
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
	ja	.label_1311
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1243]]
	jmp	rcx
.label_2444:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1244
	jmp	.label_1249
.label_1249:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1250
	jmp	.label_1233
.label_1250:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1259
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1259
	jmp	.label_1261
.label_1261:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1262
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1262:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1268
.label_1268:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1308
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1308:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1341
.label_1341:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1279
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1259:
	jmp	.label_1289
.label_1289:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1291
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1291:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1297
.label_1297:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1301
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1301
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1301
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1301
	jmp	.label_1315
.label_1315:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1323
.label_1323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1326:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1301
.label_1301:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1337
.label_1244:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1339
	jmp	.label_1304
.label_1339:
	jmp	.label_1337
.label_1337:
	jmp	.label_1229
.label_2455:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1344
	jmp	.label_1350
.label_1350:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1351
	jmp	.label_1364
.label_1344:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1370
	jmp	.label_1233
.label_1370:
	jmp	.label_1235
.label_1351:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1232
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1232
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1232
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1223
	jmp	.label_1372
.label_1372:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1223
	jmp	.label_1375
.label_1375:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1223
	jmp	.label_1381
.label_1381:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1223
	jmp	.label_1386
.label_1386:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1387
	jmp	.label_1223
.label_1223:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1395
	jmp	.label_1233
.label_1395:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1398
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1407
.label_1407:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1410
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1410:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1416
.label_1416:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1420
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1420:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1422
.label_1422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1322
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1322:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1226
.label_1387:
	jmp	.label_1226
.label_1226:
	jmp	.label_1232
.label_1232:
	jmp	.label_1235
.label_1364:
	jmp	.label_1235
.label_1235:
	jmp	.label_1229
.label_2445:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1237
.label_2446:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1237
.label_2450:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1237
.label_2448:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1241
.label_2451:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1241
.label_2447:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1241
.label_2449:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1237
.label_2456:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1247
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1253
	jmp	.label_1233
.label_1253:
	jmp	.label_1228
.label_1247:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1258
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1258
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1258
	jmp	.label_1228
.label_1258:
	jmp	.label_1241
.label_1241:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1266
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1266
	jmp	.label_1233
.label_1266:
	jmp	.label_1237
.label_1237:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1273
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1252
.label_1273:
	jmp	.label_1229
.label_2457:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1277
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1280
	jmp	.label_1284
.label_1277:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1280
.label_1284:
	jmp	.label_1229
.label_1280:
	jmp	.label_1287
.label_1287:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1290
	jmp	.label_1229
.label_1290:
	jmp	.label_1293
.label_1293:
	mov	byte ptr [rbp - 0x83], 1
.label_2452:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1296
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1296
	jmp	.label_1233
.label_1296:
	jmp	.label_1229
.label_2454:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1302
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1306
	jmp	.label_1233
.label_1306:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1314
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1314
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1314:
	jmp	.label_1319
.label_1319:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1367
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1367:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1325
.label_1325:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1328
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1328:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1335
.label_1335:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1340
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1340:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1302:
	jmp	.label_1229
.label_2453:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1229
.label_1311:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1343
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
	jmp	.label_1285
.label_1343:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1365
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1365:
	jmp	.label_1281
.label_1281:
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
	jne	.label_1384
	jmp	.label_1393
.label_1384:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1391
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1393
.label_1391:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1240
	mov	byte ptr [rbp - 0x91], 0
.label_1417:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1400
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1400:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1413
	jmp	.label_1415
.label_1413:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1417
.label_1415:
	jmp	.label_1393
.label_1240:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1264
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1264
	mov	qword ptr [rbp - 0xb8], 1
.label_1260:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1222
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
	jb	.label_1225
	jmp	.label_1239
.label_1239:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1225
	jmp	.label_1359
.label_1359:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1225
	jmp	.label_1246
.label_1246:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1248
	jmp	.label_1225
.label_1225:
	jmp	.label_1233
.label_1248:
	jmp	.label_1224
.label_1224:
	jmp	.label_1242
.label_1242:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1260
.label_1222:
	jmp	.label_1264
.label_1264:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1269
	mov	byte ptr [rbp - 0x91], 0
.label_1269:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1271
.label_1271:
	jmp	.label_1275
.label_1275:
	jmp	.label_1276
.label_1276:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1281
.label_1393:
	jmp	.label_1285
.label_1285:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1286
	test	byte ptr [rbp - 0x79], 1
	je	.label_1238
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1238
.label_1286:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1263:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1303
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1303
	jmp	.label_1307
.label_1307:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1309
	jmp	.label_1233
.label_1309:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1313
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1313
	jmp	.label_1318
.label_1318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1320
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1320:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1324
.label_1324:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1327
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1334
.label_1334:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1412
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1412:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1313:
	jmp	.label_1346
.label_1346:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1348
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1348:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1355
.label_1355:
	jmp	.label_1353
.label_1353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1354
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1354:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1360
.label_1360:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1363
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1369
.label_1303:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1374
	jmp	.label_1376
.label_1376:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1378
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1378:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1374:
	jmp	.label_1369
.label_1369:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1389
	jmp	.label_1394
.label_1389:
	jmp	.label_1396
.label_1396:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1256
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1256
	jmp	.label_1401
.label_1401:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1402
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1402:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1406
.label_1406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1256:
	jmp	.label_1418
.label_1418:
	jmp	.label_1419
.label_1419:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1421
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1421:
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
	jmp	.label_1263
.label_1394:
	jmp	.label_1228
.label_1238:
	jmp	.label_1229
.label_1229:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1231
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1234
.label_1231:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1236
.label_1234:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1236
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
	jne	.label_1245
.label_1236:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1245
	jmp	.label_1228
.label_1245:
	jmp	.label_1252
.label_1252:
	jmp	.label_1414
.label_1414:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1257
	jmp	.label_1233
.label_1257:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1251
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1251
	jmp	.label_1265
.label_1265:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1272
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1270
.label_1270:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1274
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1274:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1283
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1283:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1251:
	jmp	.label_1292
.label_1292:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1294
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1300
.label_1300:
	jmp	.label_1228
.label_1228:
	jmp	.label_1382
.label_1382:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1305
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1305
	jmp	.label_1310
.label_1310:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1312
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1312:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1316
.label_1316:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1321
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1321:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1305:
	jmp	.label_1330
.label_1330:
	jmp	.label_1331
.label_1331:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1332
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1332:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1267
	mov	byte ptr [rbp - 0x7e], 0
.label_1267:
	jmp	.label_1304
.label_1304:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1345
.label_1399:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1349
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1349
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1349
	jmp	.label_1233
.label_1349:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1352
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1352
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1352
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1357
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
	jmp	.label_1368
.label_1357:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1371
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1371
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1373
.label_1371:
	jmp	.label_1377
.label_1377:
	jmp	.label_1352
.label_1352:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1379
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1379
	jmp	.label_1383
.label_1383:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1385
	jmp	.label_1388
.label_1388:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1390
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1390:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1397
.label_1397:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1383
.label_1385:
	jmp	.label_1379
.label_1379:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1403
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1403:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1368
.label_1233:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1411
	test	byte ptr [rbp - 0x79], 1
	je	.label_1411
	mov	dword ptr [rbp - 0x34], 4
.label_1411:
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
.label_1368:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412830
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
	#Procedure 0x412870

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
	je	.label_1423
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1424
.label_1423:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1424
.label_1424:
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
	je	.label_1425
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1425:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4129d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1428:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1429
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1428
.label_1429:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1430
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1427]],  rax
.label_1430:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1426
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1426:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ab0

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
	#Procedure 0x412af0

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
	jge	.label_1431
	call	abort
.label_1431:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1435
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1438
	call	xalloc_die
.label_1438:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1434
	xor	eax, eax
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
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_1436
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1427]]
	mov	qword ptr [rax + 8], rcx
.label_1436:
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
.label_1435:
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
	ja	.label_1432
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1433
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1433:
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
.label_1432:
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
	#Procedure 0x412d70

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
	#Procedure 0x412db0
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
	#Procedure 0x412dd0
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
	#Procedure 0x412e00

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
	#Procedure 0x412e40

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
	jne	.label_1439
	call	abort
.label_1439:
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
	#Procedure 0x412eb0

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
	#Procedure 0x412ef0

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
	#Procedure 0x412f20
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
	#Procedure 0x412f50

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
	#Procedure 0x412fd0

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
	#Procedure 0x413000

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
	#Procedure 0x413020
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
	#Procedure 0x413050

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
	#Procedure 0x413100

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
	#Procedure 0x413140

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
	#Procedure 0x4131c0
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
	#Procedure 0x4131f0
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
	#Procedure 0x413230

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
	#Procedure 0x413270
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
	#Procedure 0x4132a0

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
	#Procedure 0x4132d0

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
	#Procedure 0x4132f0

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
	je	.label_1441
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1443
.label_1441:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_2
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1440
	movabs	rax, OFFSET FLAT:.str.15_3
	movabs	rcx, OFFSET FLAT:.str.14_2
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1443
.label_1440:
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1442
	movabs	rax, OFFSET FLAT:.str.18_2
	movabs	rcx, OFFSET FLAT:.str.17_3
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1443
.label_1442:
	movabs	rax, OFFSET FLAT:.str.12_2
	movabs	rcx, OFFSET FLAT:.str.10_3
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1443:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4133f0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	mov	eax, 0x13c
	mov	r9d, eax
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	dword ptr [rbp - 0x2c], 0x16
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rdi, r9
	mov	r9d, eax
	mov	al, 0
	call	syscall
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1457
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_1459
	cmp	dword ptr [rbp - 0x2c], 0x26
	je	.label_1459
	cmp	dword ptr [rbp - 0x2c], 0x5f
	je	.label_1459
.label_1457:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1445
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xfffffffe
	cmp	eax, 0
	je	.label_1455
	mov	edi, 0x5f
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1455:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1461
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1463
.label_1461:
	mov	edi, 0x11
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1463:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_1447
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1444
.label_1447:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_1445
.label_1445:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1453
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1458
.label_1453:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1458:
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x51], sil
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x52], sil
	test	byte ptr [rbp - 0x51], 1
	jne	.label_1446
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1446
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1446:
	lea	rdx, [rbp - 0xe8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lstatat
	cmp	eax, 0
	je	.label_1467
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1444
.label_1467:
	test	byte ptr [rbp - 0x179], 1
	je	.label_1448
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1454
	mov	edi, 2
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1454:
	jmp	.label_1456
.label_1448:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1460
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1462
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1465
.label_1462:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1444
.label_1465:
	jmp	.label_1451
.label_1460:
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1452
	mov	edi, 0x14
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1452:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1449
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
.label_1449:
	jmp	.label_1466
.label_1466:
	jmp	.label_1451
.label_1451:
	jmp	.label_1456
.label_1456:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	call	renameat
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], edx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1450
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1450:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1464
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_1464:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x180]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_1444:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413770

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4137a0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	movabs	rax, OFFSET FLAT:.str_1
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	__lstat
	cmp	eax, 0
	je	.label_1468
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1469
.label_1468:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1469:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413810

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1470:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1475
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1472
.label_1475:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1477
	jmp	.label_1470
.label_1477:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1474
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1474
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1471
.label_1474:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1472
.label_1471:
	jmp	.label_1476
.label_1476:
	jmp	.label_1473
.label_1473:
	jmp	.label_1470
.label_1472:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4138c0

	.globl same_name
	.type same_name, @function
same_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	edx, eax
	call	same_nameat
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413900

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x181], r8b
	jne	.label_1482
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_1482:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_1479
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_1480
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_1480:
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_1478
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_1478:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_1481
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_1481:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_1479:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ad0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	esi, dword ptr [rbp - 0x14]
	mov	edi, esi
	mov	rdi,  qword ptr [word ptr [+ (rdi * 8) + comparison_function_table]]
	mov	qword ptr [rbp - 0x58], rdi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1492
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1484
.label_1492:
	jmp	.label_1490
.label_1490:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	readdir
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1493
	jmp	.label_1495
.label_1493:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1498
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1483
.label_1498:
	mov	eax, 2
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
.label_1483:
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1489
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1494
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1499
	lea	rsi, [rbp - 0x78]
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
.label_1499:
	mov	rdi, qword ptr [rbp - 0x68]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1488
.label_1494:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_1497
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1501
	call	xalloc_die
.label_1501:
	lea	rsi, [rbp - 0x80]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x28], rax
.label_1497:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	memcpy
.label_1488:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1489:
	jmp	.label_1490
.label_1495:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1496
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x98], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1484
.label_1496:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1487
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1491
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	call	qsort
.label_1491:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x88], 0
.label_1502:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1500
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x90]
	sub	rax, rsi
	add	rax, 1
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1502
.label_1500:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_1485
.label_1487:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1486
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1486:
	jmp	.label_1485
.label_1485:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1484:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413e70

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	opendir_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1503
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1504
.label_1503:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_1505
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1504
.label_1505:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1504:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413f10

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413f50

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	jae	.label_1506
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1507
.label_1506:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x24], esi
.label_1507:
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413fb0
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413fe0

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ff0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414020

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414050
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414080
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4140b0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4140e0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414110
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414140
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414170
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4141a0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4141d0
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414200
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414230
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414270
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4142a0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4142d0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4142f0

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414310

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414330
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414340

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414360
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414380

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4143a0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4143d0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4143e0
	.globl statat
	.type statat, @function
statat:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414410

	.globl lstatat
	.type lstatat, @function
lstatat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 0x100
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414440

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x48], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	mov	dword ptr [rbp - 0x5c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x14]
	add	rcx, rdx
	cmp	rax, rcx
	jb	.label_1520
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	check_x_suffix
	test	al, 1
	jne	.label_1516
.label_1520:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1509
.label_1516:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x14]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsi, qword ptr [rbp - 0x30]
	call	randint_all_new
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_1518
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1509
.label_1518:
	mov	dword ptr [rbp - 0x44], 0
.label_1510:
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_1517
	mov	qword ptr [rbp - 0x68], 0
.label_1512:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1515
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1512
.label_1515:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	jl	.label_1511
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	dword ptr [rax], ecx
	jmp	.label_1513
.label_1511:
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	je	.label_1514
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_1513
.label_1514:
	jmp	.label_1519
.label_1519:
	jmp	.label_1508
.label_1508:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1510
.label_1517:
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1509
.label_1513:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x78], eax
	mov	dword ptr [rbp - 0x7c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 4], ecx
.label_1509:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414640

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.2_7
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, rax
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414690

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x2c], ecx
	je	.label_1524
	jmp	.label_1525
.label_1525:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1526
	jmp	.label_1523
.label_1523:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1521
	jmp	.label_1527
.label_1524:
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1522
.label_1526:
	movabs	rax, OFFSET FLAT:try_dir
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1522
.label_1521:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1522
.label_1527:
	movabs	rdi, OFFSET FLAT:.str_15
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_1522:
	lea	rax, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	try_tempname_len
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414770

	.globl try_file
	.type try_file, @function
try_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x180
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi]
	and	eax, 0xfffffffc
	or	eax, 2
	or	eax, 0x40
	or	eax, 0x80
	mov	esi, eax
	mov	al, 0
	call	open
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4147c0

	.globl try_dir
	.type try_dir, @function
try_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x1c0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	mkdir
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4147f0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rdi
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
	xor	edx, edx
	cmp	dword ptr [rax], 2
	cmove	ecx, edx
	mov	eax, ecx
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414860
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 6
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4148a0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 6
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	try_tempname_len
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4148e0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1530
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1530
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_1530:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414940

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	utimecmpat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414980

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rdi, qword ptr [rbp - 0x20]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	mov	r8d, dword ptr [rbp - 0x24]
	and	r8d, 1
	cmp	r8d, 0
	je	.label_1568
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1572
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_1572
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1531
.label_1572:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1536
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1531
.label_1536:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1549
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1531
.label_1549:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1551
	mov	eax, 0x10
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1551:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1556
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1532
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1566
	jmp	.label_1545
.label_1566:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1532:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1539
	jmp	.label_1545
.label_1539:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	jne	.label_1547
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1547:
	jmp	.label_1552
.label_1556:
	jmp	.label_1545
.label_1545:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1553
	lea	rax, [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x48], rax
.label_1553:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1554
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax + 0xc], 0
.label_1554:
	jmp	.label_1552
.label_1552:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0xc], 1
	jne	.label_1565
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_atime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_ctime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0x80], ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rax, qword ptr [rbp - 0x68]
	or	rax, qword ptr [rbp - 0x70]
	or	rax, qword ptr [rbp - 0x78]
	and	rax, 1
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x85], dl
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	ecx, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x90], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], 1
	imul	ecx, dword ptr [rbp - 0x98], 0xa
	mov	dword ptr [rbp - 0x98], ecx
	mov	eax, dword ptr [rbp - 0x8c]
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x90]
	mov	eax, ecx
	mov	dword ptr [rbp - 0x168], edx
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x168]
	or	ecx, edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x98]
	or	ecx, edx
	cmp	ecx, 0
	je	.label_1534
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1540
.label_1534:
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x16c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x16c]
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x170], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x170]
	idiv	esi
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0x94]
	mov	dword ptr [rbp - 0x174], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x174]
	idiv	edi
	mov	dword ptr [rbp - 0x94], eax
.label_1570:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x175], cl
	jge	.label_1544
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x17c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x17c]
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x90]
	mov	eax, esi
	mov	dword ptr [rbp - 0x180], edx
	cdq	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x180]
	or	esi, edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	cdq	
	idiv	ecx
	or	esi, edx
	cmp	esi, 0
	sete	dil
	mov	byte ptr [rbp - 0x175], dil
.label_1544:
	mov	al, byte ptr [rbp - 0x175]
	test	al, 1
	jne	.label_1558
	jmp	.label_1533
.label_1558:
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1561
	test	byte ptr [rbp - 0x85], 1
	jne	.label_1564
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
.label_1564:
	jmp	.label_1533
.label_1561:
	jmp	.label_1569
.label_1569:
	mov	eax, 0xa
	imul	ecx, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], ecx
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x184], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x184]
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x90]
	cdq	
	idiv	ecx
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x94]
	cdq	
	idiv	ecx
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1570
.label_1533:
	jmp	.label_1540
.label_1540:
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rdx + 8], ecx
	cmp	eax, dword ptr [rbp - 0x5c]
	jge	.label_1542
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x188], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x40]
	sub	esi, edx
	mov	dword ptr [rbp - 0x40], esi
	mov	rdi, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	mov	edx, dword ptr [rbp - 0x188]
	cmove	edx, ecx
	xor	edx, 0xffffffff
	movsxd	r8, edx
	and	rdi, r8
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	cmp	rdi, qword ptr [rbp - 0x30]
	jl	.label_1548
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1555
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_1555
.label_1548:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1531
.label_1555:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jl	.label_1563
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_1546
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x5c]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x18c]
	cmp	edx, ecx
	jge	.label_1546
.label_1563:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1531
.label_1546:
	mov	ecx, 0x100
	lea	rdx, [rbp - 0xc0]
	mov	eax, 9
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc0], rsi
	movsxd	rsi, dword ptr [rbp - 0x7c]
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	sete	dil
	and	dil, 1
	movzx	r8d, dil
	movsxd	r9, r8d
	or	rsi, r9
	mov	qword ptr [rbp - 0xb0], rsi
	mov	r8d, dword ptr [rbp - 0x84]
	mov	r10d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, r10d
	mov	qword ptr [rbp - 0x198], rdx
	cdq	
	mov	r10d, dword ptr [rbp - 0x190]
	idiv	r10d
	add	r8d, eax
	movsxd	rsi, r8d
	mov	qword ptr [rbp - 0xa8], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x198]
	mov	rdx, r9
	call	utimensat
	cmp	eax, 0
	je	.label_1559
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1531
.label_1559:
	lea	rdx, [rbp - 0x150]
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fstatat
	lea	rdi, [rbp - 0x150]
	mov	dword ptr [rbp - 0x15c], eax
	movsxd	rdx, dword ptr [rbp - 0x15c]
	mov	rsi, qword ptr [rbp - 0xf8]
	xor	rsi, qword ptr [rbp - 0x78]
	or	rdx, rsi
	mov	qword ptr [rbp - 0x1a0], rdx
	call	get_stat_mtime_ns
	movsxd	rdx, dword ptr [rbp - 0x84]
	xor	rax, rdx
	mov	rdx, qword ptr [rbp - 0x1a0]
	or	rdx, rax
	cmp	rdx, 0
	je	.label_1574
	mov	ecx, 0x100
	lea	rdx, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	movsxd	rax, dword ptr [rbp - 0x84]
	mov	qword ptr [rbp - 0xa8], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	utimensat
	mov	dword ptr [rbp - 0x1a4], eax
.label_1574:
	cmp	dword ptr [rbp - 0x15c], 0
	je	.label_1550
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1531
.label_1550:
	lea	rdi, [rbp - 0x150]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x160], eax
	mov	rcx, qword ptr [rbp - 0xf8]
	and	rcx, 1
	imul	rcx, rcx, 0x3b9aca00
	mov	qword ptr [rbp - 0x1b0], rcx
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rbp - 0x1b0]
	add	rcx, rax
	mov	edx, ecx
	mov	dword ptr [rbp - 0x164], edx
	mov	dword ptr [rbp - 0x5c], 1
	mov	edx, dword ptr [rbp - 0x5c]
	mov	eax, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1b4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x1b4]
	idiv	esi
	mov	dword ptr [rbp - 0x164], eax
.label_1543:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1b8]
	idiv	ecx
	cmp	edx, 0
	jne	.label_1537
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1573
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1537
.label_1573:
	imul	eax, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	eax, dword ptr [rbp - 0x160]
	jne	.label_1535
	jmp	.label_1537
.label_1535:
	jmp	.label_1541
.label_1541:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1bc]
	idiv	ecx
	mov	dword ptr [rbp - 0x164], eax
	jmp	.label_1543
.label_1537:
	jmp	.label_1542
.label_1542:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	byte ptr [rcx + 0xc], 1
.label_1565:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	cmove	eax, ecx
	xor	eax, 0xffffffff
	movsxd	rdx, eax
	and	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rdx
	mov	eax, dword ptr [rbp - 0x40]
	cdq	
	idiv	dword ptr [rbp - 0x5c]
	mov	ecx, dword ptr [rbp - 0x40]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x40], ecx
.label_1568:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1557
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c0], eax
	jmp	.label_1560
.label_1557:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jle	.label_1562
	mov	eax, 1
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_1567
.label_1562:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_1538
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_1571
.label_1538:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c8], eax
.label_1571:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x1c4], eax
.label_1567:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [rbp - 0x1c0], eax
.label_1560:
	mov	eax, dword ptr [rbp - 0x1c0]
	mov	dword ptr [rbp - 4], eax
.label_1531:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415240

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415270

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4152b0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 0x100
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	utimensat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4152e0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1611
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x188], rax
	jmp	.label_1576
.label_1611:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x188], rcx
	jmp	.label_1576
.label_1576:
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1607
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	validate_timespec
	mov	dword ptr [rbp - 0x4c], eax
.label_1607:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1599
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1578
.label_1599:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1602
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1602
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1578
.label_1602:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1605
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1606
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1608
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1595
	jmp	.label_1577
.label_1608:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	je	.label_1577
.label_1595:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1578
.label_1577:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1580
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x190], rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_1588
.label_1580:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1598
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x198], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rdx + 0x18], rax
.label_1598:
	jmp	.label_1588
.label_1588:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1606:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1590
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1609
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1609:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1579
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1585
.label_1579:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1578
.label_1585:
	jmp	.label_1590
.label_1590:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_1591
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	futimens
	xor	edi, edi
	mov	dword ptr [rbp - 0xe4], eax
	cmp	edi, dword ptr [rbp - 0xe4]
	jge	.label_1594
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1594:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1601
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1604
.label_1601:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1578
.label_1604:
	jmp	.label_1591
.label_1591:
	jmp	.label_1605
.label_1605:
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1596
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1583
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1612
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1575
	jmp	.label_1583
.label_1612:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	je	.label_1583
.label_1575:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1578
.label_1583:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1586
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1592
	jmp	.label_1586
.label_1592:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1578
.label_1586:
	jmp	.label_1596
.label_1596:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1597
	lea	rax, [rbp - 0x130]
	mov	ecx, 0x3e8
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x130], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, rsi
	mov	qword ptr [rbp - 0x1a8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x1a8]
	idiv	rsi
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	cqo	
	idiv	rsi
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1600
.label_1597:
	mov	qword ptr [rbp - 0x138], 0
.label_1600:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1613
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1578
.label_1613:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	cmp	eax, 0
	jne	.label_1587
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1589
	mov	eax, 0x7a120
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 8]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x139], sil
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 0x18]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x13a], sil
	mov	sil, byte ptr [rbp - 0x139]
	and	sil, 1
	movzx	eax, sil
	mov	sil, byte ptr [rbp - 0x13a]
	and	sil, 1
	movzx	edi, sil
	or	eax, edi
	cmp	eax, 0
	je	.label_1581
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	jne	.label_1581
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x138]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x138]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x150], rax
	mov	qword ptr [rbp - 0x158], 0
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x170], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x168], rax
	test	byte ptr [rbp - 0x139], 1
	je	.label_1593
	cmp	qword ptr [rbp - 0x148], 1
	jne	.label_1593
	lea	rdi, [rbp - 0xe0]
	call	get_stat_atime_ns
	cmp	rax, 0
	jne	.label_1593
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 8], 0
.label_1593:
	test	byte ptr [rbp - 0x13a], 1
	je	.label_1603
	cmp	qword ptr [rbp - 0x150], 1
	jne	.label_1603
	lea	rdi, [rbp - 0xe0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	jne	.label_1603
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 0x18], 0
.label_1603:
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_1610
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x158]
	call	futimesat
	mov	dword ptr [rbp - 0x1ac], eax
.label_1610:
	jmp	.label_1581
.label_1581:
	jmp	.label_1589
.label_1589:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1578
.label_1587:
	jmp	.label_1582
.label_1582:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1584
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1578
.label_1584:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x138]
	call	utimes
	mov	dword ptr [rbp - 4], eax
.label_1578:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415960

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 8], 0x3fffffff
	je	.label_1618
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	je	.label_1618
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1621
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	jge	.label_1621
.label_1618:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1614
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	je	.label_1614
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x18]
	jg	.label_1621
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	jl	.label_1614
.label_1621:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1619
.label_1614:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3fffffff
	je	.label_1622
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1623
.label_1622:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1615
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1615:
	jmp	.label_1623
.label_1623:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1617
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1616
.label_1617:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1620
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1620:
	jmp	.label_1616
.label_1616:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	dword ptr [rbp - 0x18], 1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 4], eax
.label_1619:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415af0

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	qword ptr [rsi + 8], 0x3ffffffe
	jne	.label_1628
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1628
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1627
.label_1628:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1626
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1626
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1627
.label_1626:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1624
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_1625
.label_1624:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1629
	mov	rdi, qword ptr [rbp - 0x20]
	call	gettime
.label_1629:
	jmp	.label_1625
.label_1625:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1632
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rax
	jmp	.label_1630
.label_1632:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1631
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	rdi, rax
	call	gettime
.label_1631:
	jmp	.label_1630
.label_1630:
	mov	byte ptr [rbp - 1], 0
.label_1627:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c50

	.globl utimens
	.type utimens, @function
utimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	fdutimens
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c80

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1633
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1640
.label_1633:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x110], rcx
	jmp	.label_1640
.label_1640:
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1644
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	validate_timespec
	mov	dword ptr [rbp - 0x4c], eax
.label_1644:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1635
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1634
.label_1635:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	jg	.label_1636
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1651
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1646
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1634
.label_1646:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1649
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x118], rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_1639
.label_1649:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1643
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x120], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rdx + 0x18], rax
.label_1643:
	jmp	.label_1639
.label_1639:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1651:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1642
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1642:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1647
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1650
.label_1647:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1634
.label_1650:
	jmp	.label_1636
.label_1636:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1638
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1641
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1641
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1634
.label_1641:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1648
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1652
	jmp	.label_1648
.label_1652:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1634
.label_1648:
	jmp	.label_1638
.label_1638:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1637
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1637
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1634
.label_1637:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1645
	mov	edi, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	fdutimens
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1634
.label_1645:
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1634:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415f90

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
	je	.label_1654
	movabs	rsi, OFFSET FLAT:.str_16
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1656
.label_1654:
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1656:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_8
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
	mov	ecx, OFFSET FLAT:.str.3_5
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
	ja	.label_1655
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1657]]
	jmp	rcx
.label_2322:
	jmp	.label_1653
.label_2323:
	movabs	rdi, OFFSET FLAT:.str.4_2
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
	jmp	.label_1653
.label_2324:
	movabs	rdi, OFFSET FLAT:.str.5_3
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
	jmp	.label_1653
.label_2325:
	movabs	rdi, OFFSET FLAT:.str.6_2
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
	jmp	.label_1653
.label_2326:
	movabs	rdi, OFFSET FLAT:.str.7_2
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
	jmp	.label_1653
.label_2327:
	movabs	rdi, OFFSET FLAT:.str.8_2
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
	jmp	.label_1653
.label_2328:
	movabs	rdi, OFFSET FLAT:.str.9_2
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
	jmp	.label_1653
.label_2329:
	movabs	rdi, OFFSET FLAT:.str.10_4
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
	jmp	.label_1653
.label_2330:
	movabs	rdi, OFFSET FLAT:.str.11_4
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
	jmp	.label_1653
.label_2331:
	movabs	rdi, OFFSET FLAT:.str.12_3
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
	jmp	.label_1653
.label_1655:
	movabs	rdi, OFFSET FLAT:.str.13_3
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
.label_1653:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416550
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
.label_1660:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1658
	jmp	.label_1659
.label_1659:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1660
.label_1658:
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
	#Procedure 0x4165c0

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
.label_1664:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1661
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1666
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1665
.label_1666:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1665:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1661:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1667
	jmp	.label_1662
.label_1667:
	jmp	.label_1663
.label_1663:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1664
.label_1662:
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
	#Procedure 0x4166d0

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
	je	.label_1668
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
.label_1668:
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
	#Procedure 0x416840
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_3
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_2
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_2
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
	#Procedure 0x4168d0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	jne	.label_1669
	mov	byte ptr [rbp - 1], 0
	call	geteuid
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	cl, byte ptr [rbp - 1]
	and	cl, 1
	mov	byte ptr [byte ptr [can_write_any_file.can_write]],  cl
	mov	byte ptr [byte ptr [can_write_any_file.initialized]],  1
.label_1669:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416930
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
	jae	.label_1670
	call	xalloc_die
.label_1670:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416980

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
	jne	.label_1671
	cmp	qword ptr [rbp - 8], 0
	je	.label_1671
	call	xalloc_die
.label_1671:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4169c0

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
	jae	.label_1672
	call	xalloc_die
.label_1672:
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
	#Procedure 0x416a10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1673
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1673
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1675
.label_1673:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1674
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1674
	call	xalloc_die
.label_1674:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1675:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416a90

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
	jne	.label_1676
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1679
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
.label_1679:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1677
	call	xalloc_die
.label_1677:
	jmp	.label_1678
.label_1676:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1680
	call	xalloc_die
.label_1680:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1678:
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
	#Procedure 0x416b80

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
	#Procedure 0x416ba0
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
	#Procedure 0x416bd0
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
	#Procedure 0x416c10
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
	jb	.label_1681
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1682
.label_1681:
	call	xalloc_die
.label_1682:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416c70

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
	#Procedure 0x416cb0

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
	#Procedure 0x416cf0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_12
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_7
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x416d30

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	or	esi, 0x200
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_fts_open
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1684
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1685
	jmp	.label_1683
.label_1685:
	movabs	rdi, OFFSET FLAT:.str_17
	movabs	rsi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1683:
	call	xalloc_die
.label_1684:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416dc0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1686
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 0x11], al
	je	.label_1688
.label_1686:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_1687
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_1687
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_1687:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_1688:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416e50

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jg	.label_1691
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1690
.label_1691:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_1689
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1689:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpmatch
	xor	ecx, ecx
	cmp	ecx, eax
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1690:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416ef0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1692
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1693
.label_1692:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1694
.label_1693:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1694:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416f50

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
	je	.label_1695
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1695:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416f90

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x20]
	jbe	.label_1696
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1699
.label_1696:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	cmp	edx, 0
	mov	qword ptr [rbp - 0x18], rax
	je	.label_1698
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1697
.label_1698:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1697
.label_1697:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_1699:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417030

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
	jne	.label_1700
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1700
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1700
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1702
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1701
.label_1702:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1701
.label_1700:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1701:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417100

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_1703
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1716
.label_1703:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_1720
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1720
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1716
.label_1720:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x12
	cmp	eax, 0
	jne	.label_1727
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1716
.label_1727:
	mov	eax, 0x80
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_1732
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1716
.label_1732:
	xor	esi, esi
	mov	eax, 0x80
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x48], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 0x48]
	and	eax, 2
	cmp	eax, 0
	je	.label_1736
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_1736:
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1711
	mov	al, 1
	test	al, 1
	jne	.label_1711
	jmp	.label_1721
.label_1721:
	movabs	rdi, OFFSET FLAT:.str_3
	xor	esi, esi
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_1724
	jmp	.label_1725
.label_1724:
	mov	edi, dword ptr [rbp - 0x58]
	call	close
	mov	dword ptr [rbp - 0x74], eax
.label_1725:
	jmp	.label_1711
.label_1711:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_maxarglen
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	qword ptr [rbp - 0x60], 0x1000
	mov	qword ptr [rbp - 0x80], rdi
	jbe	.label_1730
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1731
.label_1730:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1731
.label_1731:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_1737
	jmp	.label_1738
.label_1737:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1739
	movabs	rsi, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_1709
	jmp	.label_1712
.label_1709:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x68], -1
.label_1739:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x89], al
	je	.label_1719
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x89], dl
.label_1719:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
.label_1723:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1729
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x800
	cmp	ecx, 0
	jne	.label_1715
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	rcx, qword ptr [rbp - 0x68]
	jae	.label_1707
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_1707
	jmp	.label_1718
.label_1718:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x8a], cl
	jae	.label_1740
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 2
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x8a], sil
.label_1740:
	mov	al, byte ptr [rbp - 0x8a]
	test	al, 1
	jne	.label_1713
	jmp	.label_1717
.label_1713:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1718
.label_1717:
	jmp	.label_1707
.label_1707:
	jmp	.label_1715
.label_1715:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x68]
	call	fts_alloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jne	.label_1734
	jmp	.label_1706
.label_1734:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x30], rax
	test	byte ptr [rbp - 0x51], 1
	je	.label_1728
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1728
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x30]
	call	fts_set_stat_required
	jmp	.label_1735
.label_1728:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x30]
	mov	word ptr [rsi + 0x70], ax
.label_1735:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1741
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1704
.label_1741:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1714
.label_1710:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_1714:
	jmp	.label_1704
.label_1704:
	jmp	.label_1722
.label_1722:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1723
.label_1729:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1726
	cmp	qword ptr [rbp - 0x40], 1
	jbe	.label_1726
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	fts_sort
	mov	qword ptr [rbp - 0x38], rax
.label_1726:
	movabs	rsi, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_1733
	jmp	.label_1706
.label_1733:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, qword ptr [rbp - 0x28]
	call	setup_dir
	test	al, 1
	jne	.label_1705
	jmp	.label_1706
.label_1705:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1708
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	jne	.label_1708
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x28]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_1708
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
.label_1708:
	mov	esi, 0xffffffff
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1716
.label_1706:
	mov	rdi, qword ptr [rbp - 0x38]
	call	fts_lfree
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1712:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_1738:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1716:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4176e0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_1743:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_1742
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1745
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1745:
	jmp	.label_1744
.label_1744:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1743
.label_1742:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417750

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x100
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_1746
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1747
.label_1746:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1748
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1747
.label_1748:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	byte ptr [rbp - 1], 1
.label_1747:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417830

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_1750
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1749
.label_1750:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax + 0x108], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1749:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417930

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	je	.label_1751
	call	abort
.label_1751:
	jmp	.label_1752
.label_1752:
	mov	eax, 1
	mov	ecx, 2
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0xa8], rsi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417990

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x58], 0
	jne	.label_1753
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_1753
	mov	byte ptr [rbp - 0x19], 1
.label_1753:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_1763
	test	byte ptr [rbp - 0x19], 1
	je	.label_1766
.label_1763:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	stat
	cmp	eax, 0
	je	.label_1757
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1767
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_1767
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	word ptr [rbp - 2], 0xd
	jmp	.label_1758
.label_1767:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_1760
.label_1757:
	jmp	.label_1764
.label_1766:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	fstatat
	cmp	eax, 0
	je	.label_1754
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
.label_1760:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	word ptr [rbp - 2], 0xa
	jmp	.label_1758
.label_1754:
	jmp	.label_1764
.label_1764:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1769
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_1762
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_1765
.label_1762:
	mov	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1756
.label_1765:
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x48]
	and	edi, 0x20
	cmp	edi, 0
	cmovne	eax, ecx
	movsxd	rsi, eax
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
.label_1756:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax + 0x108]
	cmp	edx, 0x2e
	jne	.label_1755
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_1759
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x109]
	cmp	ecx, 0x2e
	jne	.label_1755
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_1755
.label_1759:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	mov	word ptr [rbp - 2], si
	jmp	.label_1758
.label_1755:
	mov	word ptr [rbp - 2], 1
	jmp	.label_1758
.label_1769:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_1768
	mov	word ptr [rbp - 2], 0xc
	jmp	.label_1758
.label_1768:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_1761
	mov	word ptr [rbp - 2], 8
	jmp	.label_1758
.label_1761:
	mov	word ptr [rbp - 2], 3
.label_1758:
	movzx	eax, word ptr [rbp - 2]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417c10

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rax
	cmp	rax, rdx
	jne	.label_1772
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1770
.label_1772:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1770
.label_1770:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jbe	.label_1776
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x28
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_1774
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_1777
.label_1774:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1775
.label_1777:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1776:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1771:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1778
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1771
.label_1778:
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	call	qsort
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
.label_1779:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_1773
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1779
.label_1773:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1775:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417df0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_1780
	mov	eax, 0x1f
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:AD_hash
	movabs	rcx, OFFSET FLAT:AD_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1784
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1781
.label_1784:
	jmp	.label_1783
.label_1780:
	mov	eax, 0x20
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1782
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1781
.label_1782:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_1783:
	mov	byte ptr [rbp - 1], 1
.label_1781:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417eb0

	.globl diropen
	.type diropen, @function
diropen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x48]
	and	edx, 0x10
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, 0x90900
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1785
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1786
.label_1785:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x1c], eax
.label_1786:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417f40

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
.label_1787:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_1788
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1789
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	dword ptr [rbp - 0x14], eax
.label_1789:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	jmp	.label_1787
.label_1788:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417fa0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x24], 0
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_1800
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
.label_1796:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_1801
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1797
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1805
.label_1797:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_1796
.label_1801:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_1800:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1798
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_1798:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1802
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x2c]
	jg	.label_1791
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	cmp	eax, 0
	je	.label_1794
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1794:
	jmp	.label_1791
.label_1791:
	jmp	.label_1795
.label_1802:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1793
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	cmp	eax, 0
	je	.label_1804
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1804:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	close
	cmp	eax, 0
	je	.label_1792
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1790
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1790:
	jmp	.label_1792
.label_1792:
	jmp	.label_1793
.label_1793:
	jmp	.label_1795
.label_1795:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	je	.label_1799
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x50]
	call	hash_free
.label_1799:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1803
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1806
.label_1803:
	mov	dword ptr [rbp - 4], 0
.label_1806:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4181a0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_1808:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	xor	al, 0xff
	test	al, 1
	jne	.label_1807
	jmp	.label_1810
.label_1807:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc], eax
	cmp	ecx, dword ptr [rbp - 0xc]
	jg	.label_1809
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_1809:
	jmp	.label_1808
.label_1810:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418200

	.globl free_dir
	.type free_dir, @function
free_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_1811
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_1812
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x58]
	call	hash_free
.label_1812:
	jmp	.label_1813
.label_1811:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
.label_1813:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418260

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_1842
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1850
.label_1842:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1832
.label_1850:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	cx, word ptr [rax + 0x74]
	mov	word ptr [rbp - 0x22], cx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
	movzx	edx, word ptr [rbp - 0x22]
	cmp	edx, 1
	jne	.label_1860
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	jmp	.label_1832
.label_1860:
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 2
	jne	.label_1839
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	je	.label_1883
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xd
	jne	.label_1839
.label_1883:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_1825
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1825
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_1847
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_1855
.label_1847:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_1855:
	jmp	.label_1825
.label_1825:
	jmp	.label_1833
.label_1839:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1867
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 4
	je	.label_1873
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	je	.label_1876
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_1876
.label_1873:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_1884
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x3c], eax
.label_1884:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1826
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1826:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1832
.label_1876:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1846
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x1000
	cmp	ecx, 0
	je	.label_1846
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1846:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1870
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_1871
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1856:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1824
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1856
.label_1824:
	jmp	.label_1871
.label_1871:
	jmp	.label_1878
.label_1870:
	mov	esi, 3
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	jne	.label_1843
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1848
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1832
.label_1848:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_1858
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_1858
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
.label_1858:
	jmp	.label_1865
.label_1865:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1832
.label_1843:
	jmp	.label_1878
.label_1878:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1820
.label_1867:
	jmp	.label_1815
.label_1815:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1818
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1818
	mov	esi, 3
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1845
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1849
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1832
.label_1849:
	jmp	.label_1840
.label_1845:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	jmp	.label_1820
.label_1818:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_1863
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1879
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_1880
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1832
.label_1880:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_load
	mov	rdi, qword ptr [rbp - 0x10]
	call	setup_dir
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1833
.label_1879:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 4
	jne	.label_1835
	jmp	.label_1815
.label_1835:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 2
	jne	.label_1841
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_1851
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1851
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_1868
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_1814
.label_1868:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_1814:
	jmp	.label_1851
.label_1851:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
.label_1841:
	jmp	.label_1820
.label_1820:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x48], rax
	jne	.label_1874
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1816
.label_1874:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x50], rax
.label_1816:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0x2f
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
.label_1833:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_1864
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 2
	jne	.label_1875
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	jne	.label_1821
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1821
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1821
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_1821
	jmp	.label_1828
.label_1821:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rsi + 0x90]
	and	edx, 0xf000
	cmp	edx, 0x4000
	jne	.label_1838
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_1838
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x68]
	jae	.label_1838
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_1838
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x68]
	add	rcx, -1
	mov	qword ptr [rax + 0x68], rcx
.label_1838:
	jmp	.label_1828
.label_1828:
	jmp	.label_1866
.label_1875:
	jmp	.label_1869
.label_1869:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_1872
	call	abort
.label_1872:
	jmp	.label_1877
.label_1877:
	jmp	.label_1866
.label_1866:
	jmp	.label_1864
.label_1864:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1836
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1881
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_1881:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	enter_dir
	test	al, 1
	jne	.label_1827
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1832
.label_1827:
	jmp	.label_1836
.label_1836:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1832
.label_1863:
	jmp	.label_1840
.label_1840:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], -1
	jne	.label_1852
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1832
.label_1852:
	jmp	.label_1844
.label_1844:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_1853
	call	abort
.label_1853:
	jmp	.label_1817
.label_1817:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1830
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_1819
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1819:
	jmp	.label_1829
.label_1830:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_1831
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1837
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1857
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x44]
	call	cwd_advance_fd
	xor	edx, edx
	mov	cl, dl
	test	cl, 1
	jne	.label_1882
	jmp	.label_1837
.label_1857:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	fchdir
	cmp	eax, 0
	je	.label_1837
.label_1882:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1837:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1823
.label_1831:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_1822
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_1822
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1822:
	jmp	.label_1823
.label_1823:
	jmp	.label_1829
.label_1829:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 2
	je	.label_1859
	mov	eax, 6
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	cmovne	eax, ecx
	mov	si, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	jne	.label_1834
	jmp	.label_1862
.label_1862:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	jmp	.label_1834
.label_1834:
	jmp	.label_1859
.label_1859:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1861
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1854
.label_1861:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_1854:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_1832:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ce0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_1885
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x58]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1892
	call	abort
.label_1892:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_1890
.label_1885:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1888
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_1888
	jmp	.label_1889
.label_1889:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1891
	call	abort
.label_1891:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1887
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_1887
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx], rax
.label_1887:
	jmp	.label_1886
.label_1886:
	jmp	.label_1888
.label_1888:
	jmp	.label_1890
.label_1890:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e20

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_1900
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:.str.2_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xcd], cl
.label_1900:
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_1897
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1896
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1896
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_1896:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1901
.label_1897:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1902
	test	byte ptr [rbp - 0x2d], 1
	je	.label_1902
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1902
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_1893
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	mov	byte ptr [rbp - 0x2d], 1
	cmp	ecx, dword ptr [rbp - 0x38]
	jg	.label_1898
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_1898:
	jmp	.label_1893
.label_1893:
	jmp	.label_1902
.label_1902:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1903
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	diropen
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, 0
	jge	.label_1903
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1901
.label_1903:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_1908
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1895
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:.str.2_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1895
.label_1908:
	lea	rsi, [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x34]
	call	__fstat
	cmp	eax, 0
	je	.label_1907
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_1894
.label_1907:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_1904
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_1906
.label_1904:
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_1894
.label_1906:
	jmp	.label_1895
.label_1895:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1899
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x34]
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1901
.label_1899:
	mov	edi, dword ptr [rbp - 0x34]
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_1894:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1905
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	mov	edi, dword ptr [rbp - 0x34]
	call	close
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xd8], eax
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
.label_1905:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_1901:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4190b0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdi + 0x18], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x81], al
	mov	byte ptr [rbp - 0x82], 0
	test	byte ptr [rbp - 0x81], 1
	je	.label_1912
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	dirfd
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jge	.label_1947
	jmp	.label_1938
.label_1938:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xb0], eax
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1951
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_1951:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1947:
	jmp	.label_1952
.label_1912:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1961
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1961
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rbp - 0xb4], ecx
	jmp	.label_1972
.label_1961:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_1972
.label_1972:
	mov	eax, dword ptr [rbp - 0xb4]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xb8], eax
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rbp - 0xc1], dl
	je	.label_1931
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_1978
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0xc2], cl
.label_1978:
	mov	al, byte ptr [rbp - 0xc2]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc1], al
.label_1931:
	mov	al, byte ptr [rbp - 0xc1]
	lea	rcx, [rbp - 0x74]
	xor	edx, edx
	mov	esi, 0x20000
	test	al, 1
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x18], rax
	cmp	rax, 0
	jne	.label_1920
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1926
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_1926:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1920:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_1933
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_1935
.label_1933:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	cmp	ecx, 0
	je	.label_1939
	jmp	.label_1942
.label_1942:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rbp - 0xc4], ax
	call	enter_dir
	test	al, 1
	jne	.label_1948
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1948:
	jmp	.label_1939
.label_1939:
	jmp	.label_1935
.label_1935:
	jmp	.label_1952
.label_1952:
	mov	eax, 0x186a0
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	test	byte ptr [rbp - 0x81], 1
	je	.label_1954
	mov	byte ptr [rbp - 0x45], 1
	jmp	.label_1960
.label_1954:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 2
	mov	byte ptr [rbp - 0xc5], cl
	je	.label_1946
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_1969
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_1969
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x20
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_1969
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdx + 0x88], 2
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_1969
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	leaf_optimization
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc6], cl
.label_1969:
	mov	al, byte ptr [rbp - 0xc6]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc5], al
.label_1946:
	mov	al, byte ptr [rbp - 0xc5]
	and	al, 1
	mov	byte ptr [rbp - 0x45], al
	test	byte ptr [rbp - 0x45], 1
	jne	.label_1915
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1917
.label_1915:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1919
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x74]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x74], eax
.label_1919:
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_1927
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x74]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_1930
.label_1927:
	test	byte ptr [rbp - 0x45], 1
	je	.label_1932
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1932
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_1932:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0x45], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xcc], eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1943
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x74]
	jg	.label_1943
	mov	edi, dword ptr [rbp - 0x74]
	call	close
	mov	dword ptr [rbp - 0xd0], eax
.label_1943:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_1949
.label_1930:
	mov	byte ptr [rbp - 0x45], 1
.label_1949:
	jmp	.label_1917
.label_1917:
	jmp	.label_1960
.label_1960:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x38]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_1953
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1923
.label_1953:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xd8], rax
.label_1923:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1965
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], 0x2f
	jmp	.label_1909
.label_1965:
	mov	qword ptr [rbp - 0x70], 0
.label_1909:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x46], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
.label_1934:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1913
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_1918
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1921
	call	__errno_location
	mov	cl, 1
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], edx
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd9], cl
	jne	.label_1925
	cmp	qword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_1925:
	mov	al, byte ptr [rbp - 0xd9]
	mov	ecx, 4
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x80]
	mov	word ptr [rdi + 0x70], si
.label_1921:
	jmp	.label_1913
.label_1918:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x20
	cmp	ecx, 0
	jne	.label_1936
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_1936
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x14], 0
	je	.label_1944
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_1936
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_1936
.label_1944:
	jmp	.label_1934
.label_1936:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1955
	jmp	.label_1958
.label_1955:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_1959
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_1974
	jmp	.label_1958
.label_1958:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe0], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xe4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1974:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_1922
	mov	byte ptr [rbp - 0x46], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1967
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
.label_1967:
	jmp	.label_1922
.label_1922:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_1959:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_1928
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe8], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1928:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_1945
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	jmp	.label_1964
.label_1945:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_1964:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1971
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_1975
.label_1971:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xe9], cl
	je	.label_1976
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xe9], cl
	je	.label_1976
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xe9], cl
	je	.label_1976
	mov	rax, qword ptr [rbp - 0xa8]
	movzx	ecx, byte ptr [rax + 0x12]
	cmp	ecx, 4
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xe9], dl
.label_1976:
	mov	al, byte ptr [rbp - 0xe9]
	and	al, 1
	mov	byte ptr [rbp - 0xa9], al
	mov	rcx, qword ptr [rbp - 0x20]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x78
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	esi, byte ptr [rdx + 0x12]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rbp - 0xa9]
	xor	al, 0xff
	and	al, 1
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_1979
.label_1975:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x20]
	mov	word ptr [rsi + 0x70], ax
.label_1979:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1970
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1962
.label_1970:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_1962:
	cmp	qword ptr [rbp - 0x30], 0x2710
	jne	.label_1940
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1940
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	dirent_inode_sort_may_be_useful
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
.label_1940:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_1966
	jmp	.label_1941
.label_1966:
	jmp	.label_1934
.label_1913:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1950
	jmp	.label_1956
.label_1956:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_1950
.label_1950:
	jmp	.label_1941
.label_1941:
	test	byte ptr [rbp - 0x46], 1
	je	.label_1957
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	fts_padjust
.label_1957:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1963
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1968
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1973
.label_1968:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	qword ptr [rbp - 0x70], rax
.label_1973:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_1963:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1911
	test	byte ptr [rbp - 0x45], 1
	je	.label_1911
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_1977
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1911
.label_1977:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1980
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	jne	.label_1916
	jmp	.label_1911
.label_1980:
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_1911
.label_1916:
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1911:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1924
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_1929
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_1929
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	je	.label_1929
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 6
.label_1929:
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1910
.label_1924:
	test	byte ptr [rbp - 0x82], 1
	je	.label_1937
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x40], 0
.label_1937:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1914
	cmp	qword ptr [rbp - 0x30], 1
	jbe	.label_1914
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
.label_1914:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1910:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d50

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 4
	cmp	eax, 0
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_1983
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1985
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	mov	qword ptr [rbp - 0x18], rdi
	je	.label_1982
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1981
.label_1982:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x1c], ecx
.label_1981:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_1986
.label_1985:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1987
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1984
.label_1987:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_1984:
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x20], eax
.label_1986:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xd], cl
.label_1983:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e50

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x2f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rdx, rcx
	mov	dword ptr [rbp - 0x24], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	mov	rdi, rcx
	mov	esi, dword ptr [rbp - 0x24]
	call	strrchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_1989
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	cmp	rax, rcx
	jne	.label_1988
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1989
.label_1988:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 1
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x30]
	call	memmove
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
.label_1989:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f60

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	je	.label_2002
	jmp	.label_1993
.label_1993:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1995
	jmp	.label_1998
.label_1998:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_1990
	jmp	.label_2003
.label_2003:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x38], rax
	je	.label_2001
	jmp	.label_1996
.label_1996:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x40], rax
	je	.label_1997
	jmp	.label_2000
.label_2000:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x48], rax
	je	.label_2001
	jmp	.label_1991
.label_1991:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	je	.label_1994
	jmp	.label_1999
.label_2001:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_1992
.label_2002:
	jmp	.label_1997
.label_1997:
	jmp	.label_1994
.label_1994:
	jmp	.label_1995
.label_1995:
	jmp	.label_1990
.label_1990:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1992
.label_1999:
	mov	dword ptr [rbp - 4], 1
.label_1992:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a070

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_2010
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x78
	mov	qword ptr [rbp - 0x20], rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2008
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2007
.label_2008:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2005
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2004
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2007
.label_2004:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_2005:
	jmp	.label_2009
.label_2010:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_2011
	jmp	.label_2006
.label_2011:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_2006:
	jmp	.label_2009
.label_2009:
	mov	byte ptr [rbp - 1], 1
.label_2007:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a1b0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rbp - 0x14], edx
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0xc]
	jne	.label_2017
	cmp	dword ptr [rbp - 0x14], -0x64
	je	.label_2017
	call	abort
.label_2017:
	jmp	.label_2013
.label_2013:
	test	byte ptr [rbp - 0xd], 1
	je	.label_2012
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x60
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x18], eax
	cmp	esi, dword ptr [rbp - 0x18]
	jg	.label_2016
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
.label_2016:
	jmp	.label_2014
.label_2012:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2015
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_2018
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x20], eax
.label_2018:
	jmp	.label_2015
.label_2015:
	jmp	.label_2014
.label_2014:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x2c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a270

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_2019
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_2019
	cmp	dword ptr [rbp - 0x1c], 2
	je	.label_2019
	cmp	dword ptr [rbp - 0x1c], 3
	je	.label_2019
	cmp	dword ptr [rbp - 0x1c], 4
	je	.label_2019
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2020
.label_2019:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x74], cx
	mov	dword ptr [rbp - 4], 0
.label_2020:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a2f0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2032
	cmp	dword ptr [rbp - 0x14], 0x1000
	je	.label_2032
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2026
.label_2032:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2034
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2026
.label_2034:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_2030
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2026
.label_2030:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	je	.label_2023
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2026
.label_2023:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2031
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_2031:
	cmp	dword ptr [rbp - 0x14], 0x1000
	jne	.label_2022
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	dword ptr [rax + 0x48], ecx
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_2025
.label_2022:
	mov	dword ptr [rbp - 0x14], 1
.label_2025:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2021
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_2021
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2027
.label_2021:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2026
.label_2027:
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jge	.label_2028
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2026
.label_2028:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	je	.label_2024
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x24]
	call	cwd_advance_fd
	jmp	.label_2033
.label_2024:
	mov	edi, dword ptr [rbp - 0x24]
	call	fchdir
	cmp	eax, 0
	je	.label_2029
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2026
.label_2029:
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_2033:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_2026:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a530

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a560

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_2035
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_2035:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a5c0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	jne	.label_2036
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2037
.label_2036:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2040
	mov	eax, 0xd
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_type_hash
	movabs	rcx, OFFSET FLAT:dev_type_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], rax
.label_2040:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2041
	lea	rax, [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2048
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2037
.label_2048:
	jmp	.label_2041
.label_2041:
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_2045
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstatfs
	cmp	eax, 0
	je	.label_2049
.label_2045:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2037
.label_2049:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2042
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_2046
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2047
	jmp	.label_2038
.label_2038:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_2039
	call	abort
.label_2039:
	jmp	.label_2044
.label_2044:
	jmp	.label_2043
.label_2047:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
.label_2043:
	jmp	.label_2046
.label_2046:
	jmp	.label_2042
.label_2042:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
.label_2037:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a7a0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a7d0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a810

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	dec	esi
	mov	edi, esi
	sub	esi, 0xb
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], esi
	ja	.label_2050
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2052]]
	jmp	rcx
.label_2349:
	mov	dword ptr [rbp - 0x10], 0x6000
	jmp	.label_2051
.label_2347:
	mov	dword ptr [rbp - 0x10], 0x2000
	jmp	.label_2051
.label_2348:
	mov	dword ptr [rbp - 0x10], 0x4000
	jmp	.label_2051
.label_2346:
	mov	dword ptr [rbp - 0x10], 0x1000
	jmp	.label_2051
.label_2351:
	mov	dword ptr [rbp - 0x10], 0xa000
	jmp	.label_2051
.label_2350:
	mov	dword ptr [rbp - 0x10], 0x8000
	jmp	.label_2051
.label_2352:
	mov	dword ptr [rbp - 0x10], 0xc000
	jmp	.label_2051
.label_2050:
	mov	dword ptr [rbp - 0x10], 0
.label_2051:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a8b0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rax
	je	.label_2054
	jmp	.label_2057
.label_2057:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x30], rax
	je	.label_2054
	jmp	.label_2053
.label_2053:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	jne	.label_2056
	jmp	.label_2054
.label_2054:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2055
.label_2056:
	mov	byte ptr [rbp - 1], 1
.label_2055:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a940

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2059:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2060
	jmp	.label_2065
.label_2065:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2067
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_2067:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_2066
.label_2066:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2059
.label_2060:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2061:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_2068
	jmp	.label_2063
.label_2063:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2058
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_2058:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2064
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2062
.label_2064:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2062:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2061
.label_2068:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa80

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_2069
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2070
.label_2069:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	cmp	rdx, qword ptr [rsi + 0x80]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_2070:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aaf0

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rsi + 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x28]
	call	rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab40

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
	jne	.label_2071
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2071:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2072
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2072
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2072
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2073
.label_2072:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2073:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41abf0

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
	#Procedure 0x41ac00

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	r8d, 4
	mov	r9d, r8d
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r9
	mov	dword ptr [rbp - 0x1c], eax
	call	memset
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ac50

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_2074
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 0x18]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2075
.label_2074:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_2075:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aca0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	byte ptr [rbp - 0x1d], 0
	mov	byte ptr [rbp - 0x1f], 0
	mov	dword ptr [rbp - 0x24], 0
	mov	byte ptr [rbp - 0x1e], 1
	test	byte ptr [rbp - 0x1e], 1
	je	.label_2076
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2078
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2080
.label_2078:
	jmp	.label_2076
.label_2076:
	test	byte ptr [rbp - 0x1f], 1
	je	.label_2077
	test	byte ptr [rbp - 0x1e], 1
	jne	.label_2077
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2082
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2079
.label_2082:
	xor	eax, eax
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2079
.label_2079:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_2081
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x30], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x24], 0xffffffff
.label_2081:
	jmp	.label_2077
.label_2077:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_2080:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ad90

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x41ada0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_2092:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2088
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_2085
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_2090
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2084
.label_2090:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_2093
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2083
.label_2093:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2087
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_2086
.label_2087:
	mov	byte ptr [rbp - 0x41], 1
.label_2086:
	jmp	.label_2083
.label_2083:
	jmp	.label_2089
.label_2089:
	jmp	.label_2085
.label_2085:
	jmp	.label_2091
.label_2091:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2092
.label_2088:
	test	byte ptr [rbp - 0x41], 1
	je	.label_2094
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2084
.label_2094:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_2084:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aef0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_2095
	movabs	rdi, OFFSET FLAT:.str_18
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2096
.label_2095:
	movabs	rdi, OFFSET FLAT:.str.1_14
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_2096:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41af90

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_9
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_2097:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2102
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2099
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_2098
.label_2099:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_6
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2101
.label_2098:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_3
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_2101:
	jmp	.label_2100
.label_2100:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2097
.label_2102:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b0e0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2104
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2103
.label_2104:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_2103:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b170
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_2107:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2105
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2109
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2108
.label_2109:
	jmp	.label_2106
.label_2106:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2107
.label_2105:
	mov	qword ptr [rbp - 8], 0
.label_2108:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b210
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b250
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b290
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2c0
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2f0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b340

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b390
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3d0
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b410
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b450
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b490

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
	jne	.label_2110
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2114
.label_2110:
	jmp	.label_2111
.label_2111:
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
	jne	.label_2113
	jmp	.label_2112
.label_2113:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2111
.label_2112:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2114:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b550

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
	jne	.label_2115
	test	byte ptr [rbp - 0x13], 1
	je	.label_2116
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2115
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2116
.label_2115:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2117
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2117:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2118
.label_2116:
	mov	dword ptr [rbp - 4], 0
.label_2118:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b600

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0x95f616
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b630

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x18], 0x95f616
	jne	.label_2122
	jmp	.label_2123
.label_2122:
	movabs	rdi, OFFSET FLAT:.str_19
	movabs	rsi, OFFSET FLAT:.str.1_15
	mov	edx, 0x3c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
.label_2123:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2120
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_2120
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2120
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2124
.label_2120:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
	mov	rdi, rcx
	call	is_zero_or_power_of_two
	test	al, 1
	jne	.label_2125
	jmp	.label_2119
.label_2125:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2121
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2124
.label_2121:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2119:
	mov	byte ptr [rbp - 1], 0
.label_2124:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b730

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	and	rdi, rax
	cmp	rdi, 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b760

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2129
	mov	rdi, qword ptr [rbp - 0x10]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	cmp	ecx, dword ptr [rbp - 0x14]
	jg	.label_2128
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_2128
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2130
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2127
.label_2130:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2126
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_2126:
	jmp	.label_2127
.label_2127:
	mov	rdi, qword ptr [rbp - 0x10]
	call	closedir
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_2128:
	jmp	.label_2129
.label_2129:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b850

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b880
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b8b0

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
	je	.label_2131
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_20
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_2133
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_16
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2132
.label_2133:
	mov	byte ptr [rbp - 5], 0
.label_2132:
	jmp	.label_2131
.label_2131:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b930

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2135:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2134
	mov	rax, qword ptr [rbp - 0x18]
	movsx	rax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2135
.label_2134:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b9a0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1c], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0x10], 0
.label_2137:
	cmp	dword ptr [rbp - 0x10], 4
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
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ba10

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ba30

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	add	esi, ecx
	and	esi, 3
	mov	dword ptr [rbp - 0x10], esi
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rdi*4]
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x14], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rdx + 0x18]
	jne	.label_2138
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x1c]
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
.label_2138:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bac0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	test	al, 1
	jne	.label_2139
	jmp	.label_2141
.label_2139:
	call	abort
.label_2141:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x14]
	mov	eax, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rax + 0x18]
	jne	.label_2140
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_2142
.label_2140:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 4
	sub	ecx, 1
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_2142:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bb60

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
	jne	.label_2143
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_2143:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2144
	movabs	rax, OFFSET FLAT:.str.1_17
	mov	qword ptr [rbp - 8], rax
.label_2144:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bbc0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	dword ptr [rbp - 0x184], edx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_2145
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_2145:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdi, qword ptr [rbp - 0x190]
	mov	r8d, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0x40
	cmp	esi, 0
	je	.label_2146
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x18
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_2147
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_2148
.label_2147:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_2148:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_2146:
	mov	edi, dword ptr [rbp - 4]
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
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bdc0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41be10

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2150
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2149
.label_2150:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_2149
.label_2149:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41be70
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41be90

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 1
	mov	qword ptr [rbp - 0x38], rsi
.label_2154:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2153
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_2156:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_2156
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_2157:
	mov	rdi, qword ptr [rbp - 0x28]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x40]
	movzx	ecx, byte ptr [rbp + rdi - 0x50]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_2157
	jmp	.label_2153
.label_2153:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2151
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2152
.label_2151:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x68]
	ja	.label_2155
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2152
.label_2155:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2154
.label_2152:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c060

	.globl shift_left
	.type shift_left, @function
shift_left:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	shl	rdi, 8
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c080

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
	mov	rdi, rsi
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c0b0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	randint_free
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c100

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2158
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2160
.label_2158:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2162
	movabs	rsi, OFFSET FLAT:.str_21
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2164
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2160
.label_2164:
	jmp	.label_2162
.label_2162:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2159
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_2163
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_2165
.label_2163:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_2165:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2161
.label_2159:
	mov	eax, 0x800
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdi, rcx
	call	isaac_seed
.label_2161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2160:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c250

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c2b0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_7
	xor	ecx, ecx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	cmp	ecx, dword ptr [rbp - 0x2c]
	jg	.label_2183
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_2179
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2170
.label_2179:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_2170:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2181
	mov	qword ptr [rbp - 0x28], 0
.label_2181:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_2183:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2184
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2167
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_2172
.label_2167:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_2172:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_2184:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2166
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2168
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_2174
.label_2168:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_2174:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x58], rax
	call	getpid
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2166:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2169
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2171
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_2177
.label_2171:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_2177:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2169:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2173
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2175
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2180
.label_2175:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_2180:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2173:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2176
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2178
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_2182
.label_2178:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_2182:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2176:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c660
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c680
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
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
	#Procedure 0x41c6a0

	.globl randread
	.type randread, @function
randread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	je	.label_2185
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_2186
.label_2185:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_2186:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c700

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2189:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], r8d
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2190
	jmp	.label_2187
.label_2190:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_2188
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2191
.label_2188:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2191
.label_2191:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x10]
	call	rax
	jmp	.label_2189
.label_2187:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c7d0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
.label_2198:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2194
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	jmp	.label_2196
.label_2194:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_2197
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2192:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_2193
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	isaac_refill
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x800
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2195
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_2196
.label_2195:
	jmp	.label_2192
.label_2193:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_2197:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_2198
.label_2196:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c950

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2199
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2200
.label_2199:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2200
.label_2200:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c9c0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2201
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_2202
	movabs	rdi, OFFSET FLAT:.str.1_18
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2203
.label_2202:
	movabs	rdi, OFFSET FLAT:.str.2_10
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_2203:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2201:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41ca50

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x800]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2205:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xb8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x60]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x400
	cmp	rax, rcx
	jb	.label_2205
	jmp	.label_2204
.label_2204:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x78]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xd0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_2204
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x800], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x808], rax
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cf90

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	and	rdi, 0x7f8
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cfe0

	.globl just
	.type just, @function
just:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d000

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0x98f5704f6c44c0ab
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rsi, 0x82f053db8355e0ce
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_2209:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_2206
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2209
.label_2206:
	mov	dword ptr [rbp - 0x50], 0
.label_2207:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_2208
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_2207
.label_2208:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x810], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d6a0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d6d0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d700

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
	jge	.label_2210
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2213
.label_2210:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2211
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2212
.label_2211:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2212
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2212:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2214
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2214:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2213:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d7d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_2235
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
.label_2235:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_2222
	jmp	.label_2216
.label_2216:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2227
	jmp	.label_2232
.label_2222:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2234
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2241
.label_2234:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2241:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2219
.label_2227:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2233
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2240
.label_2233:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2240:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2219
.label_2232:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2215
	jmp	.label_2238
.label_2238:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2229
	jmp	.label_2243
.label_2243:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2215
	jmp	.label_2217
.label_2217:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2229
	jmp	.label_2223
.label_2223:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2215
	jmp	.label_2230
.label_2230:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2215
	jmp	.label_2224
.label_2224:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2229
	jmp	.label_2244
.label_2244:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2215
	jmp	.label_2218
.label_2218:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2229
	jmp	.label_2225
.label_2225:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2215
	jmp	.label_2231
.label_2231:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2229
	jmp	.label_2239
.label_2239:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2215
	jmp	.label_2245
.label_2245:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2215
	jmp	.label_2220
.label_2220:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2221
	jmp	.label_2229
.label_2229:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2226
.label_2215:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2236
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2242
.label_2236:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2242:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2226
.label_2221:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2237
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2228
.label_2237:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2228:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2226:
	jmp	.label_2219
.label_2219:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dcf0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd20

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2251
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2249
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2252
.label_2249:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2250
.label_2252:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2248
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2248:
	jmp	.label_2250
.label_2250:
	jmp	.label_2253
.label_2251:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2253:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2246
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2246
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2254
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2247
.label_2254:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_2247:
	jmp	.label_2246
.label_2246:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41de50

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
	ja	.label_2255
	jmp	.label_2257
.label_2257:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2256
.label_2255:
	jmp	.label_2256
.label_2256:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dea0
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
	#Procedure 0x41df10
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
	#Procedure 0x41df60
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
	#Procedure 0x41df90
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
	#Procedure 0x41dfc0
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
	#Procedure 0x41e010
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
	#Procedure 0x41e050
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
	#Procedure 0x41e090
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
	#Procedure 0x41e0d0
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
	#Procedure 0x41e110
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
	#Procedure 0x41e190
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
	jne	.label_2294
	jmp	.label_2293
.label_2293:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2295
.label_2294:
	mov	byte ptr [rbp - 1], 0
.label_2295:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e1e0
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
	#Procedure 0x41e220
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
	jmp	.label_2303
.label_2303:
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
	ja	.label_2302
	jmp	.label_2300
.label_2300:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2304
.label_2302:
	mov	byte ptr [rbp - 1], 0
.label_2304:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e290

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
	#Procedure 0x41e2d0
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
	#Procedure 0x41e310

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2312
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2311
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_2311
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2314
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2316
.label_2314:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_2315
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2313
.label_2315:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2316
.label_2313:
	jmp	.label_2311
.label_2311:
	jmp	.label_2312
.label_2312:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2316:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e4d0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41e4e0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41e4f0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x41e500

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
	#Procedure 0x41e520

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