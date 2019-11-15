	.section	.text
	.align	32
	#Procedure 0x401900

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
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
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x20], eax
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
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401ac0

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
	movabs	rdi, OFFSET FLAT:.str.38
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
	movabs	rsi, OFFSET FLAT:.str.40
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.43
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.44
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
	#Procedure 0x401c60

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x140
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 0
	mov	byte ptr [rbp - 0x42], 0
	mov	byte ptr [rbp - 0x43], 0
	mov	byte ptr [rbp - 0x44], 0
	mov	dword ptr [rbp - 0x48], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.13
	movabs	rsi, OFFSET FLAT:.str.14
	mov	qword ptr [rbp - 0x90], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x98], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:maybe_close_stdout
	mov	qword ptr [rbp - 0xa0], rax
	call	atexit
	mov	dword ptr [rbp - 0xa4], eax
.label_68:
	movabs	rdx, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, -1
	je	.label_30
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xa8], eax
	mov	dword ptr [rbp - 0xac], ecx
	je	.label_33
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_40
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_33
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_54
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_60
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_63
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_67
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_19
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_64
	jmp	.label_29
.label_54:
	mov	byte ptr [rbp - 0x43], 1
	jmp	.label_31
.label_60:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_31
.label_63:
	mov	byte ptr [rbp - 0x21], 1
	jmp	.label_31
.label_67:
	mov	byte ptr [rbp - 0x41], 1
	mov	byte ptr [rbp - 0x42], 1
	jmp	.label_31
.label_19:
	mov	byte ptr [rbp - 0x44], 1
	jmp	.label_31
.label_64:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_31
.label_40:
	xor	edi, edi
	call	usage
.label_33:
	movabs	rsi, OFFSET FLAT:.str.11
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_29:
	mov	edi, 1
	call	usage
.label_31:
	jmp	.label_68
.label_30:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	eax, dword ptr [rbp - 0x2c]
	ja	.label_69
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_69:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_32
	mov	byte ptr [rbp - 0x41], 1
	mov	rax,  qword ptr [word ptr [default_template]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_34
.label_32:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
.label_34:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_43
	mov	rdi, qword ptr [rbp - 0x38]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_48
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x58
	je	.label_50
.label_48:
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xe0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_50:
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	call	xcharalloc
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x68]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, 1
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_36
.label_43:
	mov	rdi, qword ptr [rbp - 0x38]
	call	xstrdup
	mov	esi, 0x58
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strrchr
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_42
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x38]
	call	strchr
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_47
.label_42:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_47:
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x58], rax
.label_36:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_55
	mov	rdi, qword ptr [rbp - 0x40]
	call	last_component
	cmp	rax, qword ptr [rbp - 0x40]
	je	.label_55
	movabs	rdi, OFFSET FLAT:.str.21
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xe8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_55:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	mov	rsi, rax
	call	count_consecutive_X_s
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 3
	jae	.label_21
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_21:
	test	byte ptr [rbp - 0x41], 1
	je	.label_23
	test	byte ptr [rbp - 0x42], 1
	je	.label_39
	movabs	rdi, OFFSET FLAT:.str.23
	call	getenv
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_44
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_44
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_53
.label_44:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_56
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_56
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_26
.label_56:
	movabs	rax, OFFSET FLAT:.str.24
	mov	qword ptr [rbp - 0x18], rax
.label_26:
	jmp	.label_53
.label_53:
	mov	rdi, qword ptr [rbp - 0x38]
	call	last_component
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_49
	movabs	rdi, OFFSET FLAT:.str.25
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xf8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_49:
	jmp	.label_20
.label_39:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_27
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_27
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_35
.label_27:
	movabs	rdi, OFFSET FLAT:.str.23
	call	getenv
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_46
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_46
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_24
.label_46:
	movabs	rax, OFFSET FLAT:.str.24
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_24
.label_24:
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x18], rax
.label_35:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_61
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x108], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_61:
	jmp	.label_20
.label_20:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	file_name_concat
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x38], rax
.label_23:
	mov	rdi, qword ptr [rbp - 0x38]
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x43], 1
	je	.label_28
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, byte ptr [rbp - 0x44]
	and	al, 1
	movzx	ecx, al
	call	mkdtemp_len
	mov	dword ptr [rbp - 0x7c], eax
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_37
	test	byte ptr [rbp - 0x21], 1
	jne	.label_41
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.27
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x118], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_41:
	mov	dword ptr [rbp - 0x48], 1
.label_37:
	jmp	.label_25
.label_28:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, byte ptr [rbp - 0x44]
	and	al, 1
	movzx	ecx, al
	call	mkstemp_len
	mov	dword ptr [rbp - 0x80], eax
	cmp	dword ptr [rbp - 0x80], 0
	jl	.label_65
	test	byte ptr [rbp - 0x44], 1
	jne	.label_16
	mov	edi, dword ptr [rbp - 0x80]
	call	close
	cmp	eax, 0
	je	.label_16
.label_65:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_18
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.28
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x11c], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x128], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x11c]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_18:
	mov	dword ptr [rbp - 0x48], 1
.label_16:
	jmp	.label_25
.label_25:
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_57
	mov	rdi, qword ptr [rbp - 0x60]
	call	puts
	test	byte ptr [rbp - 0x44], 1
	mov	dword ptr [rbp - 0x12c], eax
	jne	.label_51
	mov	byte ptr [byte ptr [stdout_closed]],  1
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_51
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rdi, qword ptr [rbp - 0x60]
	call	remove
	test	byte ptr [rbp - 0x21], 1
	mov	dword ptr [rbp - 0x130], eax
	jne	.label_59
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x134], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x134]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_59:
	mov	dword ptr [rbp - 0x48], 1
.label_51:
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x48]
	add	rsp, 0x140
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402510

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [stdout_closed]],  1
	jne	.label_70
	call	close_stdout
	jmp	.label_71
.label_70:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_72
	mov	edi, 1
	call	_exit
.label_72:
	jmp	.label_71
.label_71:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402560

	.globl count_consecutive_X_s
	.type count_consecutive_X_s, @function
count_consecutive_X_s:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_75:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_74
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x58
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_74:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_73
	jmp	.label_76
.label_73:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_75
.label_76:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025e0

	.globl mkdtemp_len
	.type mkdtemp_len, @function
mkdtemp_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, cl
	xor	ecx, ecx
	mov	r8d, 1
	mov	r9d, 2
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r10d, edx
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	cmovne	r8d, r9d
	mov	rdx, qword ptr [rbp - 0x18]
	mov	esi, r10d
	mov	qword ptr [rbp - 0x28], rdx
	mov	edx, ecx
	mov	ecx, r8d
	mov	r8, qword ptr [rbp - 0x28]
	call	gen_tempname_len
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402640

	.globl mkstemp_len
	.type mkstemp_len, @function
mkstemp_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, cl
	xor	ecx, ecx
	mov	r8d, 2
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r9d, edx
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	mov	r10d, ecx
	cmovne	r10d, r8d
	mov	r8, qword ptr [rbp - 0x18]
	mov	esi, r9d
	mov	edx, ecx
	mov	ecx, r10d
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026a0

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
	jne	.label_77
	test	byte ptr [rbp - 0x13], 1
	je	.label_79
	test	byte ptr [rbp - 0x11], 1
	jne	.label_77
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_79
.label_77:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_80
	call	__errno_location
	mov	dword ptr [rax], 0
.label_80:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_78
.label_79:
	mov	dword ptr [rbp - 4], 0
.label_78:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402750
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
	#Procedure 0x402770
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
	#Procedure 0x402790

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_81
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_84
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_81
.label_84:
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_85
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
	jmp	.label_82
.label_85:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_82:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_81:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_83
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_83:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402880

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_88:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_86
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_88
.label_86:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_90:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_92
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_89
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_91
.label_89:
	test	byte ptr [rbp - 0x19], 1
	je	.label_87
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_87:
	jmp	.label_91
.label_91:
	jmp	.label_93
.label_93:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_90
.label_92:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402920

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
.label_96:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_94
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_94:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_95
	jmp	.label_98
.label_95:
	jmp	.label_97
.label_97:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_96
.label_98:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029b0

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
	jne	.label_99
	call	xalloc_die
.label_99:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a00

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
	je	.label_102
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_105
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_105
	mov	byte ptr [rbp - 0x41], 0x2f
.label_105:
	jmp	.label_101
.label_102:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_103
	mov	byte ptr [rbp - 0x41], 0x2e
.label_103:
	jmp	.label_101
.label_101:
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
	jne	.label_104
	mov	qword ptr [rbp - 8], 0
	jmp	.label_100
.label_104:
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
	je	.label_106
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_106:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_100:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_107
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_107:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_108
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_110
.label_108:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_110:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_109
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_109
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_111
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_111:
	jmp	.label_109
.label_109:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ca0
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
	je	.label_112
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_113
.label_112:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_113
.label_113:
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
	#Procedure 0x402d20
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_114
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_115
.label_114:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_115
.label_115:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d60
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
	je	.label_116
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_117
.label_116:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_117
.label_117:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402db0

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
	je	.label_118
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_119
.label_118:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_119
.label_119:
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
	#Procedure 0x402e60
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_120
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_120:
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
	#Procedure 0x402ea0

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
	jne	.label_121
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_121:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_123
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_122
.label_123:
	call	abort
.label_122:
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
	#Procedure 0x402f10
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
	je	.label_124
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_125
.label_124:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_125
.label_125:
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
	#Procedure 0x402fe0

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
.label_254:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_153
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_159]]
	jmp	rcx
.label_667:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_666:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_166
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_171:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_166
.label_166:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_186
.label_668:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_186
.label_669:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_190
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_190:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_221:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_205
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_210
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_210:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_221
.label_205:
	jmp	.label_187
.label_187:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_186
.label_664:
	mov	byte ptr [rbp - 0x79], 1
.label_663:
	mov	byte ptr [rbp - 0x7b], 1
.label_665:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_236
	mov	byte ptr [rbp - 0x79], 1
.label_236:
	jmp	.label_237
.label_237:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_246
	jmp	.label_239
.label_239:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_240
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_246
.label_246:
	movabs	rax, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_186
.label_662:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_186
.label_153:
	call	abort
.label_186:
	mov	qword ptr [rbp - 0x58], 0
.label_219:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_263
.label_259:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_263:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_274
	jmp	.label_281
.label_274:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_282
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_282
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_282
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_289
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_289
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_294
.label_289:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_294:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_282
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_282
	test	byte ptr [rbp - 0x7b], 1
	je	.label_310
	jmp	.label_138
.label_310:
	mov	byte ptr [rbp - 0x81], 1
.label_282:
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
	ja	.label_313
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_317]]
	jmp	rcx
.label_595:
	test	byte ptr [rbp - 0x79], 1
	je	.label_319
	jmp	.label_303
.label_303:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_323
	jmp	.label_138
.label_323:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_127
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_127
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_135
.label_135:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_140
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_140:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_150
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_150:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_127:
	jmp	.label_160
.label_160:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_162
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_162:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_168
.label_168:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_173
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_173
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_173
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_173
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_248:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_199
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_199:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_173
.label_173:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_209
.label_319:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_212
	jmp	.label_217
.label_212:
	jmp	.label_209
.label_209:
	jmp	.label_146
.label_606:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_218
	jmp	.label_225
.label_225:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_227
	jmp	.label_229
.label_218:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_309
	jmp	.label_138
.label_309:
	jmp	.label_235
.label_227:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_233
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_233
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_243
	jmp	.label_252
.label_252:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_243
	jmp	.label_257
.label_257:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_243
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_243
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_269
	jmp	.label_243
.label_243:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_277
	jmp	.label_138
.label_277:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_280
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_280:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_291
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_291:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_297
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_301
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_301:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_308
.label_269:
	jmp	.label_308
.label_308:
	jmp	.label_233
.label_233:
	jmp	.label_235
.label_229:
	jmp	.label_235
.label_235:
	jmp	.label_146
.label_596:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_141
.label_597:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_141
.label_601:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_141
.label_599:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_133
.label_602:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_133
.label_598:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_133
.label_600:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_141
.label_607:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_321
	test	byte ptr [rbp - 0x7b], 1
	je	.label_324
	jmp	.label_138
.label_324:
	jmp	.label_131
.label_321:
	test	byte ptr [rbp - 0x79], 1
	je	.label_129
	test	byte ptr [rbp - 0x7b], 1
	je	.label_129
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_129
	jmp	.label_131
.label_129:
	jmp	.label_133
.label_133:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_134
	test	byte ptr [rbp - 0x7b], 1
	je	.label_134
	jmp	.label_138
.label_134:
	jmp	.label_141
.label_141:
	test	byte ptr [rbp - 0x79], 1
	je	.label_142
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_144
.label_142:
	jmp	.label_146
.label_608:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_151
	jmp	.label_155
.label_148:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_151
.label_155:
	jmp	.label_146
.label_151:
	jmp	.label_158
.label_158:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_161
	jmp	.label_146
.label_161:
	jmp	.label_164
.label_164:
	mov	byte ptr [rbp - 0x83], 1
.label_603:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_167
	test	byte ptr [rbp - 0x7b], 1
	je	.label_167
	jmp	.label_138
.label_167:
	jmp	.label_146
.label_605:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_174
	test	byte ptr [rbp - 0x7b], 1
	je	.label_178
	jmp	.label_138
.label_178:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_185
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_185
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_185:
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_194
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_201
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_201:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_207
.label_207:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_213
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_213:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_174:
	jmp	.label_146
.label_604:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_146
.label_313:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_226
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
	jmp	.label_234
.label_226:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_245
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_245:
	jmp	.label_152
.label_152:
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
	jne	.label_266
	jmp	.label_275
.label_266:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_273
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_275
.label_273:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_295
	mov	byte ptr [rbp - 0x91], 0
.label_298:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_283:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_293
	jmp	.label_296
.label_293:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_298
.label_296:
	jmp	.label_275
.label_295:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_132
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_132
	mov	qword ptr [rbp - 0xb8], 1
.label_128:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_306
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
	jb	.label_156
	jmp	.label_315
.label_315:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_156
	jmp	.label_261
.label_261:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_156
	jmp	.label_320
.label_320:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_322
	jmp	.label_156
.label_156:
	jmp	.label_138
.label_322:
	jmp	.label_255
.label_255:
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_128
.label_306:
	jmp	.label_132
.label_132:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_136
	mov	byte ptr [rbp - 0x91], 0
.label_136:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_214
.label_214:
	jmp	.label_244
.label_244:
	jmp	.label_147
.label_147:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_152
.label_275:
	jmp	.label_234
.label_234:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_157
	test	byte ptr [rbp - 0x79], 1
	je	.label_137
	test	byte ptr [rbp - 0x91], 1
	jne	.label_137
.label_157:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_318:
	test	byte ptr [rbp - 0x79], 1
	je	.label_175
	test	byte ptr [rbp - 0x91], 1
	jne	.label_175
	jmp	.label_179
.label_179:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_181
	jmp	.label_138
.label_181:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_184
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_184
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_193
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_211
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_184:
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_228
.label_228:
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_232
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_241
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_250
.label_175:
	test	byte ptr [rbp - 0x81], 1
	je	.label_256
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_260
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_260:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_256:
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_271
	jmp	.label_276
.label_271:
	jmp	.label_278
.label_278:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_180
	test	byte ptr [rbp - 0x82], 1
	jne	.label_180
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_285
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_287
.label_287:
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
	mov	byte ptr [rbp - 0x7c], 0
.label_180:
	jmp	.label_299
.label_299:
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_302
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_302:
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
	jmp	.label_318
.label_276:
	jmp	.label_131
.label_137:
	jmp	.label_146
.label_146:
	test	byte ptr [rbp - 0x79], 1
	je	.label_311
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_312
.label_311:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_215
.label_312:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_215
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
	jne	.label_316
.label_215:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_316
	jmp	.label_131
.label_316:
	jmp	.label_144
.label_144:
	jmp	.label_314
.label_314:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_325
	jmp	.label_138
.label_325:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_126
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_126
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_247
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_139
.label_139:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_143
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_143:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_154
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_126:
	jmp	.label_163
.label_163:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_165
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_165:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_172
.label_172:
	jmp	.label_131
.label_131:
	jmp	.label_176
.label_176:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_177
	test	byte ptr [rbp - 0x82], 1
	jne	.label_177
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_183
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_183:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_189
.label_189:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_195
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_177:
	jmp	.label_202
.label_202:
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_204
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_204:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_224
	mov	byte ptr [rbp - 0x7e], 0
.label_224:
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_219
.label_281:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_223
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_223
	test	byte ptr [rbp - 0x7b], 1
	je	.label_223
	jmp	.label_138
.label_223:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_230
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_230
	test	byte ptr [rbp - 0x7d], 1
	je	.label_230
	test	byte ptr [rbp - 0x7e], 1
	je	.label_307
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
	jmp	.label_249
.label_307:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_251
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_251
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_254
.label_251:
	jmp	.label_253
.label_253:
	jmp	.label_230
.label_230:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_262
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_262
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_267
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_265
.label_267:
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_286
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_286:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_249
.label_138:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_292
	test	byte ptr [rbp - 0x79], 1
	je	.label_292
	mov	dword ptr [rbp - 0x34], 4
.label_292:
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
.label_249:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404380
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
	#Procedure 0x4043c0

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
	je	.label_327
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_328
.label_327:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_328
.label_328:
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
	je	.label_329
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_329:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404520
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_332:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_331
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_332
.label_331:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_334
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_333]],  rax
.label_334:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_330
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_330:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404600

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
	#Procedure 0x404640

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
	jge	.label_337
	call	abort
.label_337:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_342
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_336
	call	xalloc_die
.label_336:
	test	byte ptr [rbp - 0x31], 1
	je	.label_341
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_335
.label_341:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_335:
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
	je	.label_340
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_333]]
	mov	qword ptr [rax + 8], rcx
.label_340:
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
.label_342:
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
	ja	.label_338
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_339
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_339:
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
.label_338:
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
	#Procedure 0x4048c0

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
	#Procedure 0x404900
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
	#Procedure 0x404920
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
	#Procedure 0x404950

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
	#Procedure 0x404990

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
	jne	.label_343
	call	abort
.label_343:
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
	#Procedure 0x404a00

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
	#Procedure 0x404a40
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
	#Procedure 0x404a70
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
	#Procedure 0x404aa0

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
	#Procedure 0x404b20

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
	#Procedure 0x404b50

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
	#Procedure 0x404b70
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
	#Procedure 0x404ba0
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
	#Procedure 0x404c50

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
	#Procedure 0x404c90

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
	#Procedure 0x404d10
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
	#Procedure 0x404d40
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
	#Procedure 0x404d80

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
	#Procedure 0x404dc0
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
	#Procedure 0x404df0

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
	#Procedure 0x404e20

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
	#Procedure 0x404e40

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
	je	.label_346
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_344
.label_346:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_345
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_344
.label_345:
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_347
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_344
.label_347:
	movabs	rax, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_344:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f40

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
	jb	.label_360
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	check_x_suffix
	test	al, 1
	jne	.label_357
.label_360:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_349
.label_357:
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
	jne	.label_358
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_349
.label_358:
	mov	dword ptr [rbp - 0x44], 0
.label_350:
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_354
	mov	qword ptr [rbp - 0x68], 0
.label_352:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_356
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
	jmp	.label_352
.label_356:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	jl	.label_351
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	dword ptr [rax], ecx
	jmp	.label_353
.label_351:
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	je	.label_355
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_353
.label_355:
	jmp	.label_359
.label_359:
	jmp	.label_348
.label_348:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_350
.label_354:
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_349
.label_353:
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
.label_349:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405140

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.2_1
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
	#Procedure 0x405190

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
	je	.label_364
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_366
	jmp	.label_363
.label_363:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_361
	jmp	.label_367
.label_364:
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_362
.label_366:
	movabs	rax, OFFSET FLAT:try_dir
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_362
.label_361:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_362
.label_367:
	movabs	rdi, OFFSET FLAT:.str_4
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	edx, 0x147
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_362:
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
	#Procedure 0x405270

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
	#Procedure 0x4052c0

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
	#Procedure 0x4052f0

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
	je	.label_369
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_368
.label_369:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_368:
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
	#Procedure 0x405360
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
	#Procedure 0x4053a0
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
	#Procedure 0x4053e0

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
	je	.label_372
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_374
.label_372:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_374:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
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
	ja	.label_373
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_371]]
	jmp	rcx
.label_638:
	jmp	.label_370
.label_639:
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
	jmp	.label_370
.label_640:
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
	jmp	.label_370
.label_641:
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
	jmp	.label_370
.label_642:
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
	jmp	.label_370
.label_643:
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_370
.label_644:
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
	jmp	.label_370
.label_645:
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
	jmp	.label_370
.label_646:
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
	jmp	.label_370
.label_647:
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_370
.label_373:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_370:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059a0
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
.label_377:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_375
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_377
.label_375:
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
	#Procedure 0x405a10

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
.label_378:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_382
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_380
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_379
.label_380:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_379:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_382:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_384
	jmp	.label_383
.label_384:
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_378
.label_383:
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
	#Procedure 0x405b20

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
	je	.label_385
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
.label_385:
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
	#Procedure 0x405c90
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
	movabs	rdi, OFFSET FLAT:.str.16_0
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
	#Procedure 0x405d20
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
	jae	.label_386
	call	xalloc_die
.label_386:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d70

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
	jne	.label_387
	cmp	qword ptr [rbp - 8], 0
	je	.label_387
	call	xalloc_die
.label_387:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405db0
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
	jae	.label_388
	call	xalloc_die
.label_388:
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
	#Procedure 0x405e00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_389
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_389
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_391
.label_389:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_390
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_390
	call	xalloc_die
.label_390:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_391:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e80

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
	jne	.label_392
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_395
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
.label_395:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	call	xalloc_die
.label_393:
	jmp	.label_394
.label_392:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_396
	call	xalloc_die
.label_396:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_394:
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
	#Procedure 0x405f70

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
	#Procedure 0x405f90
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
	#Procedure 0x405fc0
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
	#Procedure 0x406000
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
	jb	.label_397
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_398
.label_397:
	call	xalloc_die
.label_398:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406060

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
	#Procedure 0x4060a0

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
	#Procedure 0x4060e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_4
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
	#Procedure 0x406120

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
	jge	.label_399
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_399:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_400
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_401
.label_400:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_401
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_401:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_403
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_403:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_402:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_404
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_405
.label_404:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_406
.label_405:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_406:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406250

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
	je	.label_407
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_407:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406290

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
	jne	.label_408
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_408
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_408
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_410
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_409
.label_410:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_409
.label_408:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_409:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406360

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
	jne	.label_411
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_411:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_412
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_412
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_412
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_413
.label_412:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_413:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406410

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
	jne	.label_414
	mov	dword ptr [rbp - 4], 0
	jmp	.label_418
.label_414:
	jmp	.label_415
.label_415:
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
	jne	.label_417
	jmp	.label_416
.label_417:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_415
.label_416:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_418:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064d0

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
	je	.label_419
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_6
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_421
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_420
.label_421:
	mov	byte ptr [rbp - 5], 0
.label_420:
	jmp	.label_419
.label_419:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406550

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
	jne	.label_422
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_422:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_423
	movabs	rax, OFFSET FLAT:.str.1_6
	mov	qword ptr [rbp - 8], rax
.label_423:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065b0

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
	#Procedure 0x406600

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
	je	.label_425
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_424
.label_425:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406660
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
	#Procedure 0x406680

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
.label_426:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_430
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_428:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_428
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_429:
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
	jb	.label_429
	jmp	.label_430
.label_430:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_432
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_431
.label_432:
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
	ja	.label_427
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
	jmp	.label_431
.label_427:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_426
.label_431:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406850

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
	#Procedure 0x406870

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
	#Procedure 0x4068a0

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
	#Procedure 0x4068f0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_437
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_440
.label_437:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_433
	movabs	rsi, OFFSET FLAT:.str_7
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_435
	mov	qword ptr [rbp - 8], 0
	jmp	.label_440
.label_435:
	jmp	.label_433
.label_433:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_439
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_434
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_436
.label_434:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_436:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_438
.label_439:
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
.label_438:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_440:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a40

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
	#Procedure 0x406aa0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_1
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
	jg	.label_455
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_443
.label_457:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_443:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_453
	mov	qword ptr [rbp - 0x28], 0
.label_453:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_455:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_456
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_459
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_445
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_445:
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
.label_456:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_458
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_441
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_447
.label_441:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_447:
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
.label_458:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_442
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_444
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_450
.label_444:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_450:
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
.label_442:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_446
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_448
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_452
.label_448:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_452:
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
.label_446:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_449
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_451
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_454
.label_451:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_454:
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
.label_449:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e50
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
	#Procedure 0x406e70
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
	#Procedure 0x406e90

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
	je	.label_460
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_461
.label_460:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_461:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ef0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_462:
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
	jne	.label_464
	jmp	.label_466
.label_464:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_463
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_465
.label_463:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_465
.label_465:
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
	jmp	.label_462
.label_466:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fc0

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
.label_468:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_473
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
	jmp	.label_470
.label_473:
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
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_471:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_472
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
	jne	.label_467
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_470
.label_467:
	jmp	.label_471
.label_472:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_469:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_468
.label_470:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407140

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
	je	.label_474
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_475
.label_474:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_475
.label_475:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071b0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_476
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_477
	movabs	rdi, OFFSET FLAT:.str.1_7
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_478
.label_477:
	movabs	rdi, OFFSET FLAT:.str.2_3
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_478:
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
.label_476:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407240

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
.label_480:
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
	jb	.label_480
	jmp	.label_479
.label_479:
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
	jb	.label_479
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
	#Procedure 0x407780

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
	#Procedure 0x4077d0

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
	#Procedure 0x4077f0

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
.label_482:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_483
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
	jmp	.label_482
.label_483:
	mov	dword ptr [rbp - 0x50], 0
.label_484:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_481
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
	jmp	.label_484
.label_481:
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
	#Procedure 0x407e90

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
	#Procedure 0x407ec0

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
	ja	.label_485
	jmp	.label_487
.label_487:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_486
.label_485:
	jmp	.label_486
.label_486:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f10
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
	jb	.label_488
	jmp	.label_491
.label_491:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_488
	jmp	.label_489
.label_489:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_490
	jmp	.label_488
.label_488:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_492
.label_490:
	mov	byte ptr [rbp - 1], 0
.label_492:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f80
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
	jb	.label_493
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_494
	jmp	.label_493
.label_493:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_495
.label_494:
	mov	byte ptr [rbp - 1], 0
.label_495:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_497
	jmp	.label_498
.label_498:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_499
.label_497:
	mov	byte ptr [rbp - 1], 0
.label_499:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408000
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_500
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_500:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408030
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
	jb	.label_501
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_504
	jmp	.label_501
.label_501:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_502
.label_504:
	mov	byte ptr [rbp - 1], 0
.label_502:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408080
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_505
	jmp	.label_507
.label_507:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_506
.label_505:
	mov	byte ptr [rbp - 1], 0
.label_506:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080c0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_508
	jmp	.label_510
.label_510:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_509
.label_508:
	mov	byte ptr [rbp - 1], 0
.label_509:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408100
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_511
	jmp	.label_513
.label_513:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_512
.label_511:
	mov	byte ptr [rbp - 1], 0
.label_512:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408140
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_514
	jmp	.label_516
.label_516:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_515
.label_514:
	mov	byte ptr [rbp - 1], 0
.label_515:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408180
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
	jb	.label_517
	jmp	.label_520
.label_520:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_517
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_517
	jmp	.label_519
.label_519:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_522
	jmp	.label_517
.label_517:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_518
.label_522:
	mov	byte ptr [rbp - 1], 0
.label_518:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408200
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
	jb	.label_523
	jmp	.label_526
.label_526:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_525
	jmp	.label_523
.label_523:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_524
.label_525:
	mov	byte ptr [rbp - 1], 0
.label_524:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408250
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_527
	jmp	.label_529
.label_529:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_527:
	mov	byte ptr [rbp - 1], 0
.label_528:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408290
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
	jb	.label_530
	jmp	.label_533
.label_533:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_530
	jmp	.label_531
.label_531:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_532
	jmp	.label_530
.label_530:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_534
.label_532:
	mov	byte ptr [rbp - 1], 0
.label_534:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408300

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_535
	jmp	.label_537
.label_537:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_536
.label_535:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_536:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408340
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_538
	jmp	.label_540
.label_540:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_539
.label_538:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_539:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408380

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
	je	.label_544
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_541
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_541
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_543
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
	jmp	.label_542
.label_543:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_545
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_546
.label_545:
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
	jmp	.label_542
.label_546:
	jmp	.label_541
.label_541:
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_542:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408490

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
	#Procedure 0x4084c0

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
	je	.label_563
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
.label_563:
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
	je	.label_551
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_555
	jmp	.label_560
.label_551:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_562
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_571
.label_562:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_571:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_557
.label_555:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_573
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_570
.label_573:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_570:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_557
.label_560:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_556
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_548
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_556
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_548
	jmp	.label_552
.label_552:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_556
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_556
	jmp	.label_567
.label_567:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_548
	jmp	.label_575
.label_575:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_556
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_548
	jmp	.label_553
.label_553:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_556
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_548
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_556
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_556
	jmp	.label_549
.label_549:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_550
	jmp	.label_548
.label_548:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_561
.label_556:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_564
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_572
.label_564:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_572:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_561
.label_550:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_565
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_569
.label_565:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_569:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_561:
	jmp	.label_557
.label_557:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089e0

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
	#Procedure 0x408a10

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
	jg	.label_580
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_586
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_581
.label_586:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_578
.label_581:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_585
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_585:
	jmp	.label_578
.label_578:
	jmp	.label_582
.label_580:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_582:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_583
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_583
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_579
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_584
.label_579:
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
.label_584:
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
