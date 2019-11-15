	.section	.text
	.align	32
	#Procedure 0x401a00

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x2c], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_8
	jmp	.label_10
.label_10:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	jmp	.label_9
.label_8:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0x2c]
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.29
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cb0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rax
.label_16:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	je	.label_14
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x31], cl
.label_14:
	mov	al, byte ptr [rbp - 0x31]
	nop	
	test	al, 1
	jne	.label_15
	lea	rdi, [rdi]
	jmp	.label_13
.label_15:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_16
.label_13:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_12:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	edi, 5
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_11
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
.label_11:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.44
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x40]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	mov	dword ptr [rbp - 0xbc], 0
	mov	dword ptr [rbp - 0x9c], edi
	mov	qword ptr [rbp - 0x80], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0xffffffff
	mov	byte ptr [rbp - 0x4d], 0
	mov	byte ptr [rbp - 0xd], 0
	mov	qword ptr [rbp - 0xa8], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	nop	
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.15
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	call	bindtextdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rax
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	atexit
	nop	
	mov	dword ptr [rbp - 0xd4], eax
.label_43:
	movabs	rdx, OFFSET FLAT:.str.16
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	nop	
	mov	edi, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	getopt_long
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_52
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	mov	dword ptr [rbp - 0x90], ecx
	je	.label_71
	mov	rsp, rsp
	jmp	.label_18
.label_18:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0xffffff7e
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_22
	jmp	.label_20
.label_20:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_29
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x4c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	mov	rsp, rsp
	je	.label_35
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x58], eax
	je	.label_42
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_46
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x88], eax
	je	.label_53
	mov	rbp, rbp
	jmp	.label_70
.label_70:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xac], eax
	je	.label_24
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_60
	jmp	.label_27
.label_27:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x72
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_67
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x44], eax
	je	.label_17
	mov	rbp, rbp
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	je	.label_23
	lea	rdi, [rdi]
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x76
	nop	
	mov	dword ptr [rbp - 0x14], eax
	je	.label_30
	jmp	.label_58
.label_58:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_65
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x81
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_41
	jmp	.label_47
.label_47:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x82
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	mov	rbp, rbp
	je	.label_50
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x83
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_62
	jmp	.label_31
.label_29:
	mov	dword ptr [rbp - 0xa0], 0x11
	jmp	.label_19
.label_35:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], 2
	lea	rsi, [rsi]
	jmp	.label_19
.label_42:
	mov	dword ptr [rbp - 0xa0], 0x10
	jmp	.label_19
.label_24:
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_19
.label_65:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 1
	lea	rsi, [rsi]
	jmp	.label_19
.label_41:
	mov	byte ptr [rbp - 0x4d], 0
	mov	rsp, rsp
	jmp	.label_19
.label_50:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4d], 1
	mov	rsp, rsp
	jmp	.label_19
.label_62:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_19
.label_46:
	nop	
	mov	byte ptr [byte ptr [recurse]],  1
	jmp	.label_19
.label_53:
	lea	rsi, [rsi]
	jmp	.label_19
.label_30:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [verbose]],  1
	jmp	.label_19
.label_23:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [word ptr [specified_user]],  rax
	mov	byte ptr [rbp - 0xd], 1
	lea	rsi, [rsi]
	jmp	.label_19
.label_67:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [specified_role]],  rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], 1
	jmp	.label_19
.label_17:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [specified_type]],  rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 1
	mov	rbp, rbp
	jmp	.label_19
.label_60:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [specified_range]],  rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], 1
	lea	rdi, [rdi]
	jmp	.label_19
.label_22:
	xor	edi, edi
	call	usage
.label_71:
	movabs	rsi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.18_0
	movabs	r9, OFFSET FLAT:.str.19
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	lea	rsi, [rsi]
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_31:
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_19:
	mov	rsp, rsp
	jmp	.label_43
.label_52:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [recurse]],  1
	lea	rsi, [rsi]
	je	.label_45
	cmp	dword ptr [rbp - 0xa0], 0x10
	lea	rdi, [rdi]
	jne	.label_51
	cmp	dword ptr [rbp - 0x48], 1
	nop	
	jne	.label_56
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_56:
	mov	byte ptr [byte ptr [affect_symlink_referent]],  0
	mov	rsp, rsp
	jmp	.label_64
.label_51:
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_68
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	xor	esi, esi
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_68:
	mov	byte ptr [byte ptr [affect_symlink_referent]],  1
.label_64:
	mov	rbp, rbp
	jmp	.label_26
.label_45:
	mov	dword ptr [rbp - 0xa0], 0x10
	cmp	dword ptr [rbp - 0x48], 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [affect_symlink_referent]],  al
.label_26:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x9c]
	sub	ecx,  dword ptr [dword ptr [optind]]
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], al
	jne	.label_63
	nop	
	mov	al, byte ptr [rbp - 0xd]
	mov	byte ptr [rbp - 0x81], al
.label_63:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rdi, [rdi]
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x20]
	cmp	edx, ecx
	jge	.label_48
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_57
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
	jmp	.label_72
.label_57:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x9c]
	nop	
	sub	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_72:
	mov	edi, 1
	call	usage
.label_48:
	nop	
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	je	.label_39
	lea	rsi, [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	getfilecon
	cmp	eax, 0
	jge	.label_54
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_54:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [word ptr [specified_context]],  rax
	lea	rsi, [rsi]
	jmp	.label_61
.label_39:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xd], 1
	je	.label_38
	mov	qword ptr [word ptr [specified_context]],  0
	lea	rdi, [rdi]
	jmp	.label_25
.label_38:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	lea	rsi, [rsi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [specified_context]],  rdx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [specified_context]]
	call	se_const
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	security_check_context
	cmp	eax, 0
	jge	.label_49
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rdi,  qword ptr [word ptr [specified_context]]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	call	quote
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_49:
	nop	
	jmp	.label_25
.label_25:
	jmp	.label_61
.label_61:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	je	.label_34
	test	byte ptr [rbp - 0xd], 1
	je	.label_34
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_34:
	test	byte ptr [byte ptr [recurse]],  1
	je	.label_37
	test	byte ptr [rbp - 0x4d], 1
	mov	rsp, rsp
	je	.label_37
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:main.dev_ino_buf
	mov	rsp, rsp
	call	get_root_dev_ino
	mov	rbp, rbp
	mov	qword ptr [word ptr [root_dev_ino]],  rax
	cmp	qword ptr [word ptr [root_dev_ino]],  0
	jne	.label_44
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_style
	nop	
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_44:
	jmp	.label_73
.label_37:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [root_dev_ino]],  0
.label_73:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	shl	rcx, 3
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0xa0]
	or	edx, 8
	mov	rdi, rax
	mov	esi, edx
	lea	rsi, [rsi]
	call	process_files
	mov	rbp, rbp
	mov	edx, 1
	xor	esi, esi
	nop	
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	mov	rsp, rsp
	cmovne	edx, esi
	mov	eax, edx
	add	rsp, 0xf0
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl se_const
	.type se_const, @function
se_const:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl process_files
	.type process_files, @function
process_files:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x24], esi
	mov	byte ptr [rbp - 0x25], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	call	xfts_open
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_78:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	rpl_fts_read
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_76
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_74
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.58
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	nop	
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x25], 0
.label_74:
	jmp	.label_77
.label_76:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	process_file
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	lea	rdi, [rdi]
	jmp	.label_78
.label_77:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fts_close
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_75
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], 0
.label_75:
	mov	al, byte ptr [rbp - 0x25]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x38]
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsi, 0x78
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rbp - 0x89], 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	movzx	eax, word ptr [rsi + 0x70]
	dec	eax
	lea	rdi, [rdi]
	mov	esi, eax
	sub	eax, 9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	dword ptr [rbp - 0x94], eax
	ja	.label_96
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_88]]
	jmp	rcx
.label_1273:
	test	byte ptr [byte ptr [recurse]],  1
	je	.label_91
	cmp	qword ptr [word ptr [root_dev_ino]],  0
	je	.label_93
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx,  qword ptr [word ptr [root_dev_ino]]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	jne	.label_93
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx,  qword ptr [word ptr [root_dev_ino]]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_93
	mov	rsp, rsp
	jmp	.label_97
.label_97:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_99
	movabs	rdi, OFFSET FLAT:.str.60
	nop	
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x9c]
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_87
.label_99:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.61
	nop	
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.3_0
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
.label_87:
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	edx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	call	rpl_fts_read
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_84
.label_93:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	jmp	.label_84
.label_91:
	lea	rdi, [rdi]
	jmp	.label_82
.label_1276:
	mov	rsp, rsp
	test	byte ptr [byte ptr [recurse]],  1
	jne	.label_86
	nop	
	mov	byte ptr [rbp - 0x31], 1
	jmp	.label_84
.label_86:
	mov	rbp, rbp
	jmp	.label_82
.label_1278:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_90
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jne	.label_90
	mov	rbp, rbp
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], 1
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	rpl_fts_set
	nop	
	mov	byte ptr [rbp - 0x31], 1
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_84
.label_90:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.63
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0x38], esi
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	jmp	.label_82
.label_1277:
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	ecx, dword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	jmp	.label_82
.label_1275:
	nop	
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	esi, dword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], esi
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	jmp	.label_82
.label_1274:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	cycle_warning_required
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_100
	lea	rsi, [rsi]
	jmp	.label_80
.label_100:
	mov	rsp, rsp
	jmp	.label_85
.label_85:
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x31], 0
	mov	rsp, rsp
	jmp	.label_84
.label_80:
	jmp	.label_82
.label_96:
	lea	rdi, [rdi]
	jmp	.label_82
.label_82:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 6
	lea	rsi, [rsi]
	jne	.label_92
	nop	
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_92
	nop	
	cmp	qword ptr [word ptr [root_dev_ino]],  0
	je	.label_92
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx,  qword ptr [word ptr [root_dev_ino]]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jne	.label_92
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [root_dev_ino]]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jne	.label_92
	jmp	.label_98
.label_98:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	eax, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_79
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], edi
	mov	esi, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	jmp	.label_89
.label_79:
	movabs	rdi, OFFSET FLAT:.str.61
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	nop	
	movabs	rdx, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_89:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x89], 0
.label_92:
	test	byte ptr [rbp - 0x89], 1
	je	.label_81
	nop	
	test	byte ptr [byte ptr [verbose]],  1
	lea	rsi, [rsi]
	je	.label_83
	movabs	rdi, OFFSET FLAT:.str.67
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x74], eax
.label_83:
	mov	rax, qword ptr [rbp - 0x80]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	change_file_context
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_94
	nop	
	mov	byte ptr [rbp - 0x89], 0
.label_94:
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [recurse]],  1
	lea	rsi, [rsi]
	jne	.label_95
	mov	edx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	rpl_fts_set
	mov	dword ptr [rbp - 0x24], eax
.label_95:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], al
.label_84:
	nop	
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403100

	.globl change_file_context
	.type change_file_context, @function
change_file_context:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x88], 0
	cmp	qword ptr [word ptr [specified_context]],  0
	mov	rsp, rsp
	jne	.label_101
	test	byte ptr [byte ptr [affect_symlink_referent]],  1
	je	.label_111
	lea	rdx, [rbp - 0x38]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x98]
	call	getfileconat
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	jmp	.label_113
.label_111:
	lea	rdx, [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	call	lgetfileconat
	mov	dword ptr [rbp - 0x3c], eax
.label_113:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_102
	nop	
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x3d
	je	.label_102
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.24
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x84], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x64], 1
	lea	rdi, [rdi]
	jmp	.label_105
.label_102:
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jne	.label_107
	movabs	rdi, OFFSET FLAT:.str.68
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	dword ptr [rbp - 0x74], edi
	mov	esi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_105
.label_107:
	lea	rsi, [rbp - 0x8c]
	mov	rdi, qword ptr [rbp - 0x38]
	call	compute_context_from_mask
	cmp	eax, 0
	je	.label_103
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], 1
	lea	rsi, [rsi]
	jmp	.label_105
.label_103:
	mov	edi, dword ptr [rbp - 0x8c]
	call	context_str
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_109
.label_101:
	mov	rax,  qword ptr [word ptr [specified_context]]
	mov	qword ptr [rbp - 0x20], rax
.label_109:
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	je	.label_112
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	je	.label_106
.label_112:
	test	byte ptr [byte ptr [affect_symlink_referent]],  1
	lea	rdi, [rdi]
	je	.label_114
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x54], edi
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x30], rsi
	call	se_const
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	call	setfileconat
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	jmp	.label_110
.label_114:
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x50], edi
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	call	se_const
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	call	lsetfileconat
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_110:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_104
	mov	dword ptr [rbp - 0x88], 1
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	call	quote_n
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_104:
	jmp	.label_106
.label_106:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [specified_context]],  0
	nop	
	jne	.label_108
	mov	edi, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	call	context_free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	freecon
.label_108:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x64], eax
.label_105:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403480

	.globl compute_context_from_mask
	.type compute_context_from_mask, @function
compute_context_from_mask:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 1
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	context_new
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jne	.label_124
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.70
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	quote
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_115
.label_124:
	jmp	.label_117
.label_117:
	nop	
	cmp	qword ptr [word ptr [specified_user]],  0
	je	.label_119
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [specified_user]]
	call	context_user_set
	cmp	eax, 0
	je	.label_119
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.71
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], esi
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [specified_user]]
	mov	qword ptr [rbp - 0x30], rax
	call	quote
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.51
	mov	esi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x51], 0
.label_119:
	jmp	.label_120
.label_120:
	nop	
	jmp	.label_122
.label_122:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [specified_range]],  0
	mov	rsp, rsp
	je	.label_123
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [specified_range]]
	call	context_range_set
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_123
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	call	gettext
	mov	rdi,  qword ptr [word ptr [specified_range]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.54
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 0x51], 0
.label_123:
	lea	rdi, [rdi]
	jmp	.label_125
.label_125:
	mov	rsp, rsp
	jmp	.label_126
.label_126:
	cmp	qword ptr [word ptr [specified_role]],  0
	je	.label_127
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [specified_role]]
	call	context_role_set
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_127
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.71
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	mov	rdi,  qword ptr [word ptr [specified_role]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	call	quote
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.52
	nop	
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 0x51], 0
.label_127:
	jmp	.label_128
.label_128:
	lea	rdi, [rdi]
	jmp	.label_129
.label_129:
	cmp	qword ptr [word ptr [specified_type]],  0
	je	.label_121
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [specified_type]]
	lea	rdi, [rdi]
	call	context_type_set
	cmp	eax, 0
	je	.label_121
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.71
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], esi
	call	gettext
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [specified_type]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	call	quote
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rcx, OFFSET FLAT:.str.53
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x51], 0
.label_121:
	lea	rsi, [rsi]
	jmp	.label_116
.label_116:
	nop	
	test	byte ptr [rbp - 0x51], 1
	jne	.label_118
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	edi, dword ptr [rbp - 8]
	call	context_free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x48], 1
	lea	rsi, [rsi]
	jmp	.label_115
.label_118:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 0x48], 0
.label_115:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810
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
	.align	32
	#Procedure 0x403840
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
	.align	32
	#Procedure 0x403870

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
	je	.label_131
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_134
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_131
.label_134:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_133
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
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_132
.label_133:
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
.label_132:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_131:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_130
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_130:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

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
	jne	.label_135
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_135:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_138
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_137
.label_138:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_137:
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
	jl	.label_136
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_136
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
	jne	.label_139
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_139:
	jmp	.label_136
.label_136:
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
	.align	32
	#Procedure 0x403b20
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
	je	.label_141
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_140
.label_141:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_140
.label_140:
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
	.align	32
	#Procedure 0x403bd0
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
	je	.label_142
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_143
.label_142:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_143
.label_143:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30
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
	je	.label_144
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_145
.label_144:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90

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
	je	.label_146
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_147
.label_146:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_147
.label_147:
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
	.align	32
	#Procedure 0x403d90
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
	jne	.label_148
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_148:
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
	.align	32
	#Procedure 0x403df0

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
	jne	.label_149
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_149:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_151
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_150
.label_151:
	call	abort
.label_150:
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
	.align	32
	#Procedure 0x403e90
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
	je	.label_152
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_153
.label_152:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_153
.label_153:
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
	.align	32
	#Procedure 0x403f90

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
.label_287:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_178
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_348]]
	jmp	rcx
.label_1267:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1266:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_201
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_206
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_206:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_201
.label_201:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_217
.label_1268:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_217
.label_1269:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_230
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
.label_230:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_244
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_266:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_249
	jmp	.label_353
.label_353:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_253
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_253:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_266
.label_249:
	mov	rbp, rbp
	jmp	.label_244
.label_244:
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
	jmp	.label_217
.label_1264:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1263:
	mov	byte ptr [rbp - 0x3e], 1
.label_1265:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_285
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_285:
	jmp	.label_288
.label_288:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_289
	jmp	.label_293
.label_293:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_294
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_294:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_289
.label_289:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_217
.label_1262:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_217
.label_178:
	call	abort
.label_217:
	mov	qword ptr [rbp - 0xd8], 0
.label_317:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_311
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
	jmp	.label_313
.label_311:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_313:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_332
	mov	rbp, rbp
	jmp	.label_340
.label_332:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_193
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_193
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_193
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_160
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_160
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_168
.label_160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_168:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_193
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
	jne	.label_193
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_196
	jmp	.label_157
.label_196:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_193:
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
	ja	.label_204
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_215]]
	nop	
	jmp	rcx
.label_1291:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_220
	mov	rsp, rsp
	jmp	.label_224
.label_224:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_226
	jmp	.label_157
.label_226:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_234
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_234
	nop	
	jmp	.label_237
.label_237:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_240
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_245
.label_245:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_248:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_255
.label_255:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_261
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_261:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_234:
	lea	rsi, [rsi]
	jmp	.label_270
.label_270:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_271:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_259
.label_259:
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
	jmp	.label_297
.label_297:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_298
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_260
.label_260:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_281
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_281:
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
	jmp	.label_318
.label_220:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_158
	mov	rbp, rbp
	jmp	.label_314
.label_158:
	jmp	.label_318
.label_318:
	jmp	.label_176
.label_1302:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_328
	mov	rbp, rbp
	jmp	.label_336
.label_336:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_338
	jmp	.label_345
.label_328:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_346
	jmp	.label_157
.label_346:
	jmp	.label_268
.label_338:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_156
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_156
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_156
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
	je	.label_173
	nop	
	jmp	.label_172
.label_172:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_173
	jmp	.label_182
.label_182:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_173
	jmp	.label_192
.label_192:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_173
	jmp	.label_227
.label_227:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_232
	jmp	.label_173
.label_173:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_208
	jmp	.label_157
.label_208:
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
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_212:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_233
.label_233:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_181
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_242
.label_242:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_257
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_257:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_312
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_312:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_191
.label_232:
	jmp	.label_191
.label_191:
	jmp	.label_156
.label_156:
	jmp	.label_268
.label_345:
	jmp	.label_268
.label_268:
	jmp	.label_176
.label_1292:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_273
.label_1293:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_273
.label_1297:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_273
.label_1295:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_279
.label_1298:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_279
.label_1294:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_279
.label_1296:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_273
.label_1303:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_329
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_291
	nop	
	jmp	.label_157
.label_291:
	lea	rsi, [rsi]
	jmp	.label_184
.label_329:
	test	byte ptr [rbp - 0x89], 1
	je	.label_197
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_197
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_197
	jmp	.label_184
.label_197:
	jmp	.label_279
.label_279:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_305
	test	byte ptr [rbp - 0x3e], 1
	je	.label_305
	jmp	.label_157
.label_305:
	mov	rsp, rsp
	jmp	.label_273
.label_273:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_309
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_216
.label_309:
	jmp	.label_176
.label_1304:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_319
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_322
	jmp	.label_327
.label_319:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_322
.label_327:
	nop	
	jmp	.label_176
.label_322:
	jmp	.label_333
.label_333:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_334
	lea	rsi, [rsi]
	jmp	.label_176
.label_334:
	nop	
	jmp	.label_341
.label_341:
	mov	byte ptr [rbp - 0x91], 1
.label_1299:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_344
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_344
	jmp	.label_157
.label_344:
	lea	rsi, [rsi]
	jmp	.label_176
.label_1301:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_350
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_154
	jmp	.label_157
.label_154:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_159
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_159
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_159:
	jmp	.label_169
.label_169:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_170
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_177
.label_177:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_187
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_187:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_198
.label_198:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_350:
	lea	rsi, [rsi]
	jmp	.label_176
.label_1300:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_176
.label_204:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_221
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
	jmp	.label_174
.label_221:
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
	jne	.label_247
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_247:
	jmp	.label_254
.label_254:
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
	jne	.label_269
	jmp	.label_246
.label_269:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_275
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_246
.label_275:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_278
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_296:
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
	jae	.label_343
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_343:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_199
	jmp	.label_295
.label_199:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_296
.label_295:
	jmp	.label_246
.label_278:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_250
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_250
	mov	qword ptr [rbp - 0xe8], 1
.label_349:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_307
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
	jb	.label_235
	jmp	.label_324
.label_324:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_235
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_235
	jmp	.label_337
.label_337:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_339
	mov	rsp, rsp
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	jmp	.label_157
.label_339:
	jmp	.label_347
.label_347:
	mov	rsp, rsp
	jmp	.label_299
.label_299:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_349
.label_307:
	mov	rbp, rbp
	jmp	.label_250
.label_250:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_161
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_179
.label_179:
	lea	rsi, [rsi]
	jmp	.label_164
.label_164:
	jmp	.label_166
.label_166:
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
	jne	.label_254
.label_246:
	jmp	.label_174
.label_174:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_175
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_189
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_189
.label_175:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_163:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_207
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_207
	jmp	.label_210
.label_210:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_211
	jmp	.label_157
.label_211:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_214
	test	byte ptr [rbp - 0x42], 1
	jne	.label_214
	lea	rdi, [rdi]
	jmp	.label_222
.label_222:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_306
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_231
.label_231:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_238
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_238:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_243
.label_243:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_252
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_214:
	jmp	.label_256
.label_256:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_258
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_258:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_315
.label_315:
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_267
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
.label_267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_282
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
.label_282:
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
	jmp	.label_290
.label_207:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_209
	lea	rdi, [rdi]
	jmp	.label_300
.label_300:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_263:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_209:
	nop	
	jmp	.label_290
.label_290:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_310
	jmp	.label_316
.label_310:
	lea	rsi, [rsi]
	jmp	.label_320
.label_320:
	test	byte ptr [rbp - 0x42], 1
	je	.label_321
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_321
	lea	rsi, [rsi]
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_326
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_342:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_321:
	nop	
	jmp	.label_351
.label_351:
	mov	rsp, rsp
	jmp	.label_352
.label_352:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_354
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_354:
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
	jmp	.label_163
.label_316:
	mov	rsp, rsp
	jmp	.label_184
.label_189:
	lea	rsi, [rsi]
	jmp	.label_176
.label_176:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_229
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_185
.label_229:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_188
.label_185:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_188
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
	jne	.label_194
.label_188:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_194
	mov	rsp, rsp
	jmp	.label_184
.label_194:
	nop	
	jmp	.label_216
.label_216:
	jmp	.label_218
.label_218:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_219
	jmp	.label_157
.label_219:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_223
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_228
.label_228:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_241
.label_241:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_236
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_236:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_274
.label_274:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_190
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_223:
	jmp	.label_162
.label_162:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_264
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_272
.label_272:
	nop	
	jmp	.label_184
.label_184:
	jmp	.label_276
.label_276:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_277
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_277
	lea	rdi, [rdi]
	jmp	.label_280
.label_280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_292
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_292:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_277:
	jmp	.label_301
.label_301:
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
	jne	.label_308
	mov	byte ptr [rbp - 0xb7], 0
.label_308:
	mov	rbp, rbp
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_317
.label_340:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_323
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_323
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_323
	nop	
	jmp	.label_157
.label_323:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_183
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_183
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_183
	test	byte ptr [rbp - 0xb7], 1
	je	.label_286
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
	jmp	.label_165
.label_286:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_167
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_167
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_287
.label_167:
	jmp	.label_180
.label_180:
	mov	rbp, rbp
	jmp	.label_183
.label_183:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_186
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_186
	mov	rbp, rbp
	jmp	.label_155
.label_155:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_195
	lea	rdi, [rdi]
	jmp	.label_200
.label_200:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_202
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_202:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_155
.label_195:
	jmp	.label_186
.label_186:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_225
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_225:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_165
.label_157:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_239
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_239
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_239:
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
.label_165:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a30
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
	.align	32
	#Procedure 0x405aa0

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
	je	.label_355
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_356
.label_355:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_356
.label_356:
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
	je	.label_357
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_357:
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
	.align	32
	#Procedure 0x405c70
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
.label_362:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_361
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
	jmp	.label_362
.label_361:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_360
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_358]],  rax
.label_360:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_359
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_359:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80

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
	.align	32
	#Procedure 0x405dd0

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
	jge	.label_369
	call	abort
.label_369:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_364
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
	jge	.label_365
	call	xalloc_die
.label_365:
	test	byte ptr [rbp - 0x51], 1
	je	.label_366
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_370
.label_366:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_370:
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
	je	.label_368
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_358]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_368:
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
.label_364:
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
	ja	.label_367
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
	je	.label_363
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_363:
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
.label_367:
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
	.align	32
	#Procedure 0x406100

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
	.align	32
	#Procedure 0x406140
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
	.align	32
	#Procedure 0x406170
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
	.align	32
	#Procedure 0x4061b0

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
	.align	32
	#Procedure 0x406210

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
	jne	.label_371
	call	abort
.label_371:
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
	.align	32
	#Procedure 0x4062b0

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
	.align	32
	#Procedure 0x406320

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
	.align	32
	#Procedure 0x406360
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
	.align	32
	#Procedure 0x4063a0

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
	.align	32
	#Procedure 0x406450

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
	.align	32
	#Procedure 0x406490

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
	.align	32
	#Procedure 0x4064c0
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
	.align	32
	#Procedure 0x406500

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
	#Procedure 0x4065e0

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
	.align	32
	#Procedure 0x406630

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
	.align	32
	#Procedure 0x4066d0
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
	.align	32
	#Procedure 0x406720
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
	.align	32
	#Procedure 0x406780

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
	.align	32
	#Procedure 0x4067c0
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
	.align	32
	#Procedure 0x406800

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
	.align	32
	#Procedure 0x406840

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
	.align	32
	#Procedure 0x406880

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
	je	.label_375
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_374
.label_375:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_373
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
	jmp	.label_374
.label_373:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_372
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_374
.label_372:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_374:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_0
	lea	rsi, [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_377
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_376
.label_377:
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
.label_376:
	mov	rax, qword ptr [rbp - 0x98]
	add	rsp, 0xa0
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a70

	.globl context_new
	.type context_new, @function
context_new:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406aa0

	.globl context_str
	.type context_str, @function
context_str:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	ecx, edi
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl context_free
	.type context_free, @function
context_free:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ae0

	.globl context_user_set
	.type context_user_set, @function
context_user_set:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b20

	.globl context_role_set
	.type context_role_set, @function
context_role_set:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, edi
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60

	.globl context_range_set
	.type context_range_set, @function
context_range_set:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl context_type_set
	.type context_type_set, @function
context_type_set:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406be0
	.globl context_type_get
	.type context_type_get, @function
context_type_get:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	rax, rcx
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20
	.globl context_range_get
	.type context_range_get, @function
context_range_get:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	mov	rax, rcx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60
	.globl context_role_get
	.type context_role_get, @function
context_role_get:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	call	__errno_location
	xor	edi, edi
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	mov	rax, rcx
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ca0
	.globl context_user_get
	.type context_user_get, @function
context_user_get:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	ecx, edi
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	mov	rax, rcx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ce0
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x406d10

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
	#Procedure 0x406d20
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d90
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
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
	#Procedure 0x406dd0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e10

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e50
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e90

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ed0

	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f10
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f50

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f90
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407010
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
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	word ptr [rbp - 0xa], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060
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
	#Procedure 0x407090
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070d0

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
	je	.label_381
	movabs	rsi, OFFSET FLAT:.str_4
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
	jmp	.label_379
.label_381:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_379:
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_380
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_382]]
	jmp	rcx
.label_1320:
	jmp	.label_378
.label_1321:
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
	jmp	.label_378
.label_1322:
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
	jmp	.label_378
.label_1323:
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
	jmp	.label_378
.label_1324:
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
	jmp	.label_378
.label_1325:
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
	jmp	.label_378
.label_1326:
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
	jmp	.label_378
.label_1327:
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
	jmp	.label_378
.label_1328:
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
	jmp	.label_378
.label_1329:
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
	jmp	.label_378
.label_380:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_378:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407910
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
.label_383:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_384
	mov	rbp, rbp
	jmp	.label_385
.label_385:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_383
.label_384:
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
	.align	32
	#Procedure 0x4079c0

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
.label_387:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_389
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
	jmp	.label_388
.label_389:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_388:
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
.label_390:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_386
	mov	rsp, rsp
	jmp	.label_391
.label_386:
	jmp	.label_392
.label_392:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_387
.label_391:
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
	.align	32
	#Procedure 0x407b20

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
	je	.label_393
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
.label_393:
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
	.align	32
	#Procedure 0x407ce0
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
	.align	32
	#Procedure 0x407d90
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
	jae	.label_394
	mov	rbp, rbp
	call	xalloc_die
.label_394:
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
	.align	32
	#Procedure 0x407df0

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
	jne	.label_395
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_395
	lea	rdi, [rdi]
	call	xalloc_die
.label_395:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e50
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
	jae	.label_396
	mov	rsp, rsp
	call	xalloc_die
.label_396:
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
	.align	32
	#Procedure 0x407ed0

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
	jne	.label_397
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_397
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_399
.label_397:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_398
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_398
	lea	rsi, [rsi]
	call	xalloc_die
.label_398:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_399:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f80

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
	jne	.label_400
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_402
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
.label_402:
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
	jae	.label_404
	call	xalloc_die
.label_404:
	lea	rsi, [rsi]
	jmp	.label_403
.label_400:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_401
	call	xalloc_die
.label_401:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_403:
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
	.align	32
	#Procedure 0x4080b0

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
	.align	32
	#Procedure 0x4080e0
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
	.align	32
	#Procedure 0x408120
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
	.align	32
	#Procedure 0x408170
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
	jb	.label_405
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_406
.label_405:
	lea	rsi, [rsi]
	call	xalloc_die
.label_406:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081e0

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
	.align	32
	#Procedure 0x408230
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
	.align	32
	#Procedure 0x408290

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
	.align	32
	#Procedure 0x4082f0

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
	jne	.label_409
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_408
	lea	rdi, [rdi]
	jmp	.label_407
.label_408:
	nop	
	movabs	rdi, OFFSET FLAT:.str_5
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_407:
	lea	rdi, [rdi]
	call	xalloc_die
.label_409:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

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
	je	.label_410
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
	je	.label_412
.label_410:
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
	je	.label_411
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
	je	.label_411
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 2], cl
.label_411:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
.label_412:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408470

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
	je	.label_434
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	nop	
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_417
.label_434:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_447
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0x200
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_447
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_417
.label_447:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	eax, 0x12
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_421
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_417
.label_421:
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
	jne	.label_431
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jmp	.label_417
.label_431:
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
	je	.label_440
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
.label_440:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_413
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_413
	jmp	.label_444
.label_444:
	movabs	rdi, OFFSET FLAT:.str_6
	xor	esi, esi
	mov	al, 0
	nop	
	call	open_safer
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	jge	.label_442
	mov	rsp, rsp
	jmp	.label_433
.label_442:
	mov	edi, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_433:
	jmp	.label_413
.label_413:
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
	jbe	.label_437
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jmp	.label_443
.label_437:
	mov	rsp, rsp
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_443
.label_443:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rsp, rsp
	call	fts_palloc
	test	al, 1
	jne	.label_451
	jmp	.label_415
.label_451:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_416
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
	jne	.label_425
	mov	rsp, rsp
	jmp	.label_423
.label_425:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x68], -1
.label_416:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_441
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
.label_441:
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], 0
.label_422:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_445
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
	jne	.label_435
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
	jae	.label_414
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_414
	nop	
	jmp	.label_418
.label_418:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rbp - 0x51], cl
	jae	.label_448
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
.label_448:
	nop	
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_438
	mov	rbp, rbp
	jmp	.label_446
.label_438:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_418
.label_446:
	lea	rdi, [rdi]
	jmp	.label_414
.label_414:
	jmp	.label_435
.label_435:
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
	jne	.label_430
	jmp	.label_439
.label_430:
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
	je	.label_426
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_426
	nop	
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x68]
	call	fts_set_stat_required
	jmp	.label_432
.label_426:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	word ptr [rsi + 0x70], ax
.label_432:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_424
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_429
.label_424:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_428
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_450
.label_428:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x90], rax
.label_450:
	lea	rsi, [rsi]
	jmp	.label_429
.label_429:
	lea	rsi, [rsi]
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_422
.label_445:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_427
	cmp	qword ptr [rbp - 0x80], 1
	nop	
	jbe	.label_427
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x80]
	call	fts_sort
	mov	qword ptr [rbp - 0x20], rax
.label_427:
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
	jne	.label_436
	jmp	.label_439
.label_436:
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
	jne	.label_449
	lea	rsi, [rsi]
	jmp	.label_439
.label_449:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_419
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_419
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	diropen
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_419
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_419:
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
	jmp	.label_417
.label_439:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	free
.label_423:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_415:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x38], 0
.label_417:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

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
.label_454:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_453
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
	jbe	.label_455
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_455:
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_454
.label_453:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c80

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
	jae	.label_456
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
	jmp	.label_458
.label_456:
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
	jne	.label_457
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
	jmp	.label_458
.label_457:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_458:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d90

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
	jne	.label_459
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_460
.label_459:
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
.label_460:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0

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
	je	.label_461
	lea	rdi, [rdi]
	call	abort
.label_461:
	nop	
	jmp	.label_462
.label_462:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f50

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
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_470
	mov	byte ptr [rbp - 0x13], 1
.label_470:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_476
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13], 1
	mov	rbp, rbp
	je	.label_468
.label_476:
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
	je	.label_478
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_469
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_469
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 0xd
	jmp	.label_463
.label_469:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_473
.label_478:
	jmp	.label_472
.label_468:
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
	je	.label_471
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], ecx
.label_473:
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
	jmp	.label_463
.label_471:
	lea	rdi, [rdi]
	jmp	.label_472
.label_472:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_474
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_479
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_466
.label_479:
	mov	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_467
.label_466:
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
.label_467:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax + 0x108]
	lea	rdi, [rdi]
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	jne	.label_464
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_477
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 0x109]
	nop	
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_464
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_464
.label_477:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	nop	
	mov	word ptr [rbp - 0x12], si
	mov	rbp, rbp
	jmp	.label_463
.label_464:
	mov	word ptr [rbp - 0x12], 1
	jmp	.label_463
.label_474:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	nop	
	jne	.label_465
	mov	rsp, rsp
	mov	word ptr [rbp - 0x12], 0xc
	jmp	.label_463
.label_465:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_475
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 8
	jmp	.label_463
.label_475:
	mov	rbp, rbp
	mov	word ptr [rbp - 0x12], 3
.label_463:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 0x12]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409280

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
	jne	.label_480
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_486
.label_480:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	jbe	.label_481
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
	jb	.label_484
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
	jne	.label_482
.label_484:
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
	jmp	.label_485
.label_482:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_481:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
.label_489:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_483
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
	jmp	.label_489
.label_483:
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
.label_487:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_488
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
	jmp	.label_487
.label_488:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_485:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094e0

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
	je	.label_490
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
	jne	.label_493
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0
	jmp	.label_491
.label_493:
	jmp	.label_494
.label_490:
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
	jne	.label_492
	mov	byte ptr [rbp - 9], 0
	jmp	.label_491
.label_492:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_494:
	mov	byte ptr [rbp - 9], 1
.label_491:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095e0

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
	je	.label_495
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
	jmp	.label_496
.label_495:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	al, 0
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_496:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409690

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
.label_498:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_499
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_497
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	jmp	.label_498
.label_499:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x409700

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
	je	.label_500
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_506:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jl	.label_507
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_512
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_515
.label_512:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_515:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_506
.label_507:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_500:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_509
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_509:
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
	je	.label_502
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x2c]
	mov	rsp, rsp
	jg	.label_504
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	nop	
	cmp	eax, 0
	nop	
	je	.label_510
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_510:
	lea	rsi, [rsi]
	jmp	.label_504
.label_504:
	jmp	.label_501
.label_502:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_514
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_503
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_503:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rax + 0x28]
	nop	
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_508
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_511
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
.label_511:
	jmp	.label_508
.label_508:
	lea	rdi, [rdi]
	jmp	.label_514
.label_514:
	jmp	.label_501
.label_501:
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
	je	.label_505
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	call	hash_free
.label_505:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_513
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_516
.label_513:
	mov	dword ptr [rbp - 4], 0
.label_516:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099b0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
.label_517:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	i_ring_empty
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_519
	nop	
	jmp	.label_520
.label_519:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax
	cmp	ecx, dword ptr [rbp - 8]
	jg	.label_518
	mov	edi, dword ptr [rbp - 8]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_518:
	jmp	.label_517
.label_520:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a20

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
	je	.label_521
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_523
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	call	hash_free
.label_523:
	lea	rdi, [rdi]
	jmp	.label_522
.label_521:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
.label_522:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409aa0

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
	je	.label_573
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_583
.label_573:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_531
.label_583:
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
	jne	.label_590
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rsi
	jmp	.label_531
.label_590:
	movzx	eax, word ptr [rbp - 0x4a]
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_552
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	nop	
	je	.label_559
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rsp, rsp
	cmp	ecx, 0xd
	jne	.label_552
.label_559:
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
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_548
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_527
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 7
	jmp	.label_529
.label_527:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	nop	
	or	ecx, 2
	mov	dx, cx
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x72], dx
.label_529:
	jmp	.label_548
.label_548:
	jmp	.label_582
.label_552:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_550
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x4a]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_557
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_564
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_564
.label_557:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	and	ecx, 2
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_540
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_540:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_588
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
.label_588:
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
	jmp	.label_531
.label_564:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_543
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x1000
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_543
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
.label_543:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 8], 0
	je	.label_574
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
	je	.label_549
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
.label_591:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_568
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
	jmp	.label_591
.label_568:
	jmp	.label_549
.label_549:
	lea	rdi, [rdi]
	jmp	.label_524
.label_574:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_561
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_533
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_531
.label_533:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x40], 0
	je	.label_575
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_575
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
.label_575:
	nop	
	jmp	.label_535
.label_535:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	leave_dir
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_531
.label_561:
	lea	rdi, [rdi]
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
	jmp	.label_526
.label_550:
	mov	rsp, rsp
	jmp	.label_537
.label_537:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	jne	.label_541
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_541
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
	jne	.label_580
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x2000
	nop	
	cmp	ecx, 0
	je	.label_546
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_531
.label_546:
	jmp	.label_577
.label_580:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	jmp	.label_526
.label_541:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	je	.label_528
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
	jne	.label_547
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	restore_initial_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_556
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x48], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_531
.label_556:
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
	jmp	.label_582
.label_547:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x74]
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_585
	lea	rdi, [rdi]
	jmp	.label_537
.label_585:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + 0x74]
	nop	
	cmp	ecx, 2
	nop	
	jne	.label_589
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
	jne	.label_530
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_530
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_587
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rbp, rbp
	jmp	.label_566
.label_587:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_566:
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
.label_589:
	mov	rbp, rbp
	jmp	.label_526
.label_526:
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
	jne	.label_586
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_534
.label_586:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_534:
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
.label_582:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_560
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0xa8], 2
	mov	rsp, rsp
	jne	.label_584
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], 0
	nop	
	jne	.label_542
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_542
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_542
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_542
	nop	
	jmp	.label_581
.label_542:
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
	jne	.label_555
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	je	.label_555
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	jae	.label_555
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_555
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x68]
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x68], rcx
.label_555:
	mov	rbp, rbp
	jmp	.label_581
.label_581:
	jmp	.label_532
.label_584:
	nop	
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_593
	nop	
	call	abort
.label_593:
	jmp	.label_579
.label_579:
	mov	rsp, rsp
	jmp	.label_532
.label_532:
	mov	rsp, rsp
	jmp	.label_560
.label_560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_536
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_563:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	enter_dir
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_578
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_531
.label_578:
	mov	rbp, rbp
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_531
.label_528:
	jmp	.label_577
.label_577:
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
	jne	.label_569
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
	jmp	.label_531
.label_569:
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rsp, rsp
	jne	.label_545
	call	abort
.label_545:
	jmp	.label_554
.label_554:
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
	jne	.label_553
	mov	rdi, qword ptr [rbp - 0x58]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_571
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
.label_571:
	jmp	.label_525
.label_553:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	je	.label_562
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_567
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_594
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
	jne	.label_539
	jmp	.label_567
.label_594:
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	fchdir
	cmp	eax, 0
	je	.label_567
.label_539:
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
.label_567:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_551
.label_562:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_572
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	nop	
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_572
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
.label_572:
	jmp	.label_551
.label_551:
	nop	
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rbp, rbp
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_538
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
	jne	.label_570
	lea	rdi, [rdi]
	jmp	.label_565
.label_565:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	leave_dir
	jmp	.label_570
.label_570:
	mov	rsp, rsp
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_558
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	jmp	.label_576
.label_558:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
.label_576:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_531:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a800

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
	je	.label_595
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
	jne	.label_602
	call	abort
.label_602:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	lea	rdi, [rdi]
	jmp	.label_597
.label_595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_598
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_598
	mov	rsp, rsp
	jmp	.label_596
.label_596:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_599
	lea	rsi, [rsi]
	call	abort
.label_599:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_601
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_601
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
.label_601:
	mov	rsp, rsp
	jmp	.label_600
.label_600:
	mov	rsp, rsp
	jmp	.label_598
.label_598:
	jmp	.label_597
.label_597:
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9a0

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
	je	.label_610
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
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
.label_610:
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
	je	.label_609
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_616
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0xcc]
	jg	.label_616
	nop	
	mov	edi, dword ptr [rbp - 0xcc]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_616:
	mov	dword ptr [rbp - 0xd4], 0
	lea	rsi, [rsi]
	jmp	.label_606
.label_609:
	cmp	dword ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	jge	.label_612
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb9], 1
	je	.label_612
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_612
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_618
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
	jg	.label_607
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	mov	qword ptr [rbp - 0xa8], 0
.label_607:
	jmp	.label_618
.label_618:
	jmp	.label_612
.label_612:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcc], 0
	mov	rbp, rbp
	jge	.label_608
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
	jge	.label_608
	mov	dword ptr [rbp - 0xd4], 0xffffffff
	nop	
	jmp	.label_606
.label_608:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 2
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_615
	cmp	qword ptr [rbp - 0xa8], 0
	nop	
	je	.label_605
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_2
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_605
.label_615:
	lea	rsi, [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0xdc]
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_613
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_603
.label_613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	jne	.label_604
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x90]
	nop	
	je	.label_617
.label_604:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 8], 0xffffffff
	mov	rbp, rbp
	jmp	.label_603
.label_617:
	jmp	.label_605
.label_605:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_611
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
	jmp	.label_606
.label_611:
	mov	edi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	call	fchdir
	mov	dword ptr [rbp - 8], eax
.label_603:
	nop	
	cmp	dword ptr [rbp - 0xcc], 0
	jge	.label_614
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
.label_614:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
.label_606:
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad80

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
	je	.label_676
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
	jge	.label_619
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xc8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_628
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
.label_628:
	mov	qword ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	jmp	.label_638
.label_619:
	mov	rbp, rbp
	jmp	.label_642
.label_676:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_644
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_644
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	jmp	.label_651
.label_644:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_651
.label_651:
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
	je	.label_639
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
	je	.label_663
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0x81], cl
.label_663:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xe9], al
.label_639:
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
	jne	.label_682
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	nop	
	jne	.label_684
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 4
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
.label_684:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_638
.label_682:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rbp, rbp
	jne	.label_620
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
	jmp	.label_631
.label_620:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_659
	jmp	.label_637
.label_637:
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
	jne	.label_648
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_638
.label_648:
	jmp	.label_659
.label_659:
	jmp	.label_631
.label_631:
	jmp	.label_642
.label_642:
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
	je	.label_655
	mov	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	jmp	.label_662
.label_655:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	je	.label_665
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
	je	.label_667
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_667
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
	jne	.label_667
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdx + 0x88], 2
	nop	
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_667
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 4]
	call	leaf_optimization
	mov	rbp, rbp
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xf9], cl
.label_667:
	mov	al, byte ptr [rbp - 0xf9]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_665:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xae], al
	test	byte ptr [rbp - 0xae], 1
	mov	rsp, rsp
	jne	.label_621
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_629
.label_621:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_633
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	rpl_fcntl
	mov	dword ptr [rbp - 4], eax
.label_633:
	cmp	dword ptr [rbp - 4], 0
	jl	.label_641
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
	je	.label_687
.label_641:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xae], 1
	je	.label_649
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_649
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], ecx
.label_649:
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
	je	.label_660
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_660
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	close
	nop	
	mov	dword ptr [rbp - 0xe8], eax
.label_660:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_672
.label_687:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xae], 1
.label_672:
	nop	
	jmp	.label_629
.label_629:
	jmp	.label_662
.label_662:
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
	jne	.label_679
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_683
.label_679:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_683:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_686
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
	jmp	.label_626
.label_686:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], 0
.label_626:
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
.label_627:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	je	.label_657
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
	jne	.label_661
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_666
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
	jne	.label_668
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xc1], al
.label_668:
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
.label_666:
	jmp	.label_657
.label_661:
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_622
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_622
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x14], 0
	mov	rsp, rsp
	je	.label_688
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_622
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_622
.label_688:
	mov	rsp, rsp
	jmp	.label_627
.label_622:
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
	jne	.label_636
	jmp	.label_654
.label_636:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	cmp	rax, qword ptr [rbp - 0x80]
	jb	.label_643
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
	jne	.label_656
	jmp	.label_654
.label_654:
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
	jmp	.label_638
.label_656:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	je	.label_674
	nop	
	mov	byte ptr [rbp - 0x51], 1
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 4
	cmp	ecx, 0
	je	.label_678
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
.label_678:
	jmp	.label_674
.label_674:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
.label_643:
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_689
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
	jmp	.label_638
.label_689:
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
	je	.label_645
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
	jmp	.label_670
.label_645:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
.label_670:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_675
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	nop	
	je	.label_677
.label_675:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_681
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
	je	.label_681
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0xaf], cl
	nop	
	je	.label_681
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
.label_681:
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
	jmp	.label_647
.label_677:
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
.label_647:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rax + 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_652
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_658
.label_652:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x68], rax
.label_658:
	cmp	qword ptr [rbp - 0xd0], 0x2710
	jne	.label_664
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_664
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dirent_inode_sort_may_be_useful
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_664:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xd0]
	ja	.label_673
	mov	rsp, rsp
	jmp	.label_635
.label_673:
	nop	
	jmp	.label_627
.label_657:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_680
	jmp	.label_632
.label_632:
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
	jmp	.label_680
.label_680:
	lea	rdi, [rdi]
	jmp	.label_635
.label_635:
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	je	.label_690
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_padjust
.label_690:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_624
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_630
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_634
.label_630:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_634:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	byte ptr [rax], 0
.label_624:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xad], 1
	jne	.label_640
	nop	
	test	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	je	.label_640
	cmp	dword ptr [rbp - 0xac], 1
	je	.label_646
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_640
.label_646:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_650
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	call	restore_initial_cwd
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_653
	jmp	.label_640
.label_650:
	mov	edx, 0xffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	fts_safe_changedir
	nop	
	cmp	eax, 0
	je	.label_640
.label_653:
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
	jmp	.label_638
.label_640:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_669
	cmp	dword ptr [rbp - 0xac], 3
	mov	rsp, rsp
	jne	.label_671
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_671
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	lea	rdi, [rdi]
	je	.label_671
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
.label_671:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_lfree
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_638
.label_669:
	test	byte ptr [rbp - 0x11], 1
	je	.label_685
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
.label_685:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_625
	cmp	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jbe	.label_625
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	qword ptr [rbp - 0xa0], rax
.label_625:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
.label_638:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsp, 0x110
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be90

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
	jne	.label_694
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_693
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
	je	.label_692
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_697
.label_692:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_697:
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
	jmp	.label_695
.label_693:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_691
	mov	eax, 0xffffff9c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_696
.label_691:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_696:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_695:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
.label_694:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bff0

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
	je	.label_698
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0x108
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_699
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_698
.label_699:
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
.label_698:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c150

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
	je	.label_713
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_704
	lea	rdi, [rdi]
	jmp	.label_709
.label_709:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	je	.label_712
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	je	.label_705
	mov	rsp, rsp
	jmp	.label_710
.label_710:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x30], rax
	je	.label_701
	jmp	.label_700
.label_700:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x18], rax
	je	.label_705
	lea	rsi, [rsi]
	jmp	.label_707
.label_707:
	mov	eax, 0xff534d42
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	je	.label_711
	lea	rdi, [rdi]
	jmp	.label_708
.label_705:
	mov	dword ptr [rbp - 0x38], 2
	lea	rsi, [rsi]
	jmp	.label_706
.label_713:
	lea	rdi, [rdi]
	jmp	.label_701
.label_701:
	lea	rsi, [rsi]
	jmp	.label_711
.label_711:
	jmp	.label_704
.label_704:
	mov	rbp, rbp
	jmp	.label_712
.label_712:
	mov	dword ptr [rbp - 0x38], 0
	nop	
	jmp	.label_706
.label_708:
	mov	dword ptr [rbp - 0x38], 1
.label_706:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c2a0

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
	je	.label_714
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
	jne	.label_720
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_715
.label_720:
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
	je	.label_719
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_721
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_715
.label_721:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 2
.label_719:
	mov	rbp, rbp
	jmp	.label_717
.label_714:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_716
	jmp	.label_718
.label_716:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x70], 2
.label_718:
	jmp	.label_717
.label_717:
	mov	byte ptr [rbp - 0x19], 1
.label_715:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c430

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
	jne	.label_725
	cmp	dword ptr [rbp - 4], -0x64
	mov	rsp, rsp
	je	.label_725
	call	abort
.label_725:
	mov	rsp, rsp
	jmp	.label_723
.label_723:
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_722
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
	jg	.label_728
	mov	edi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_728:
	mov	rsp, rsp
	jmp	.label_726
.label_722:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_724
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_727
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_727:
	jmp	.label_724
.label_724:
	lea	rdi, [rdi]
	jmp	.label_726
.label_726:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x2c], eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c540

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
	je	.label_729
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_729
	cmp	dword ptr [rbp - 0xc], 2
	lea	rsi, [rsi]
	je	.label_729
	cmp	dword ptr [rbp - 0xc], 3
	nop	
	je	.label_729
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	mov	rsp, rsp
	je	.label_729
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	jmp	.label_730
.label_729:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 8]
	mov	word ptr [rdx + 0x74], cx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
.label_730:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c5e0
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
	je	.label_733
	nop	
	cmp	dword ptr [rbp - 8], 0x1000
	mov	rbp, rbp
	je	.label_733
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_734
.label_733:
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
	je	.label_735
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_734
.label_735:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_743
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_734
.label_743:
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_738
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_734
.label_738:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_732
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
.label_732:
	cmp	dword ptr [rbp - 8], 0x1000
	jne	.label_740
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 2
	nop	
	jmp	.label_744
.label_740:
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 1
.label_744:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_739
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_739
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_736
.label_739:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_734
.label_736:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	nop	
	jge	.label_741
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_734
.label_741:
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
	je	.label_737
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	call	cwd_advance_fd
	jmp	.label_731
.label_737:
	mov	edi, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	fchdir
	cmp	eax, 0
	je	.label_742
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
	jmp	.label_734
.label_742:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 4], eax
.label_731:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_734:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8c0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c900

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
	jne	.label_745
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
.label_745:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c980

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
	jne	.label_746
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_752
.label_746:
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_757
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
.label_757:
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	je	.label_749
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
	je	.label_747
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_752
.label_747:
	nop	
	jmp	.label_749
.label_749:
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jl	.label_759
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	fstatfs
	cmp	eax, 0
	nop	
	je	.label_754
.label_759:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_752
.label_754:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	je	.label_748
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rsi, [rsi]
	je	.label_751
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
	je	.label_756
	mov	rsp, rsp
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_750
	call	abort
.label_750:
	nop	
	jmp	.label_755
.label_755:
	jmp	.label_758
.label_756:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_758:
	jmp	.label_751
.label_751:
	jmp	.label_748
.label_748:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_752:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbf0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc40

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cca0

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
	ja	.label_760
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_762]]
	jmp	rcx
.label_1315:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0x6000
	jmp	.label_761
.label_1313:
	mov	dword ptr [rbp - 0x24], 0x2000
	mov	rsp, rsp
	jmp	.label_761
.label_1314:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0x4000
	mov	rbp, rbp
	jmp	.label_761
.label_1312:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x1000
	mov	rbp, rbp
	jmp	.label_761
.label_1317:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xa000
	mov	rsp, rsp
	jmp	.label_761
.label_1316:
	mov	dword ptr [rbp - 0x24], 0x8000
	jmp	.label_761
.label_1318:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc000
	jmp	.label_761
.label_760:
	mov	dword ptr [rbp - 0x24], 0
.label_761:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd70

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
	je	.label_766
	lea	rdi, [rdi]
	jmp	.label_765
.label_765:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 0x1021994
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	je	.label_766
	jmp	.label_767
.label_767:
	lea	rsi, [rsi]
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	jne	.label_763
	jmp	.label_766
.label_766:
	mov	byte ptr [rbp - 0x25], 0
	nop	
	jmp	.label_764
.label_763:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], 1
.label_764:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce20

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
.label_771:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_772
	nop	
	jmp	.label_768
.label_768:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_769
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
.label_769:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_775
.label_775:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_771
.label_772:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_777:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_770
	lea	rdi, [rdi]
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_778
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
.label_778:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_774
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_773
.label_774:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_773:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_777
.label_770:
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfb0

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
	jae	.label_779
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_780
.label_779:
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
.label_780:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d040

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d0b0

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
	jne	.label_781
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_781:
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
	ja	.label_782
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_782
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_782
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
	jmp	.label_783
.label_782:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_783:
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
	.align	32
	#Procedure 0x40d1a0

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1030
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x30], rdx
	cmp	dword ptr [rbp - 4], -0x64
	je	.label_789
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_793
.label_789:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	call	getfilecon
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x101c], eax
	mov	rsp, rsp
	jmp	.label_785
.label_793:
	lea	rdi, [rbp - 0x1000]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	openat_proc_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1008], rax
	cmp	qword ptr [rbp - 0x1008], 0
	je	.label_787
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1008]
	mov	rsi, qword ptr [rbp - 0x30]
	call	getfilecon
	mov	dword ptr [rbp - 0x1020], eax
	mov	rsp, rsp
	call	__errno_location
	nop	
	lea	rsi, [rbp - 0x1000]
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x1008]
	mov	rsp, rsp
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_794
	mov	rdi, qword ptr [rbp - 0x1008]
	mov	rsp, rsp
	call	free
.label_794:
	mov	eax, 0xffffffff
	cmp	eax, dword ptr [rbp - 0x1020]
	je	.label_784
	mov	eax, dword ptr [rbp - 0x1020]
	mov	dword ptr [rbp - 0x101c], eax
	lea	rdi, [rdi]
	jmp	.label_785
.label_784:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0x14
	je	.label_790
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_790
	cmp	dword ptr [rbp - 0x34], 1
	je	.label_790
	cmp	dword ptr [rbp - 0x34], 0xd
	lea	rdi, [rdi]
	je	.label_790
	cmp	dword ptr [rbp - 0x34], 0x26
	mov	rbp, rbp
	je	.label_790
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0x5f
	lea	rsi, [rsi]
	je	.label_790
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x1024], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1024]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x1020]
	nop	
	mov	dword ptr [rbp - 0x101c], ecx
	jmp	.label_785
.label_790:
	jmp	.label_787
.label_787:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x18]
	mov	rsp, rsp
	call	save_cwd
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_796
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	nop	
	call	openat_save_fail
.label_796:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jg	.label_795
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_795
	mov	rsp, rsp
	lea	rdi, [rbp - 0x18]
	call	free_cwd
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x101c], 0xffffffff
	nop	
	jmp	.label_785
.label_795:
	mov	edi, dword ptr [rbp - 4]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_791
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1018], ecx
	call	free_cwd
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1018]
	mov	dword ptr [rbp - 0x1014], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	dword ptr [rax], ecx
	nop	
	mov	dword ptr [rbp - 0x101c], 0xffffffff
	jmp	.label_785
.label_791:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	getfilecon
	mov	dword ptr [rbp - 0x100c], eax
	nop	
	cmp	dword ptr [rbp - 0x100c], -1
	lea	rsi, [rsi]
	jne	.label_788
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1010], ecx
	jmp	.label_792
.label_788:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x1010], eax
	mov	rsp, rsp
	jmp	.label_792
.label_792:
	mov	eax, dword ptr [rbp - 0x1010]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1018], eax
	call	restore_cwd
	cmp	eax, 0
	je	.label_797
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_restore_fail
.label_797:
	lea	rdi, [rbp - 0x18]
	mov	rbp, rbp
	call	free_cwd
	cmp	dword ptr [rbp - 0x1018], 0
	mov	rbp, rbp
	je	.label_786
	nop	
	mov	eax, dword ptr [rbp - 0x1018]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
.label_786:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x100c]
	mov	dword ptr [rbp - 0x101c], eax
.label_785:
	mov	eax, dword ptr [rbp - 0x101c]
	mov	rbp, rbp
	add	rsp, 0x1030
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d4e0

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1020
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1014], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x1010], rdx
	cmp	dword ptr [rbp - 0x1014], -0x64
	je	.label_806
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rsp, rsp
	jne	.label_810
.label_806:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1010]
	mov	rsp, rsp
	call	lgetfilecon
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_799
.label_810:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1000]
	mov	esi, dword ptr [rbp - 0x1014]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	openat_proc_name
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_808
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1010]
	call	lgetfilecon
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1000]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_800
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
.label_800:
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x30]
	je	.label_805
	mov	eax, dword ptr [rbp - 0x30]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_799
.label_805:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 0x14
	mov	rbp, rbp
	je	.label_798
	cmp	dword ptr [rbp - 0x10], 2
	lea	rdi, [rdi]
	je	.label_798
	cmp	dword ptr [rbp - 0x10], 1
	mov	rbp, rbp
	je	.label_798
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0xd
	je	.label_798
	cmp	dword ptr [rbp - 0x10], 0x26
	je	.label_798
	cmp	dword ptr [rbp - 0x10], 0x5f
	lea	rsi, [rsi]
	je	.label_798
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	jmp	.label_799
.label_798:
	nop	
	jmp	.label_808
.label_808:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x40]
	call	save_cwd
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_811
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_811:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	jg	.label_802
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1014]
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_802
	lea	rdi, [rbp - 0x40]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_799
.label_802:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1014]
	call	fchdir
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_807
	call	__errno_location
	mov	rbp, rbp
	lea	rdi, [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	call	free_cwd
	nop	
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_799
.label_807:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x1010]
	nop	
	call	lgetfilecon
	mov	dword ptr [rbp - 0x1008], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1008], -1
	mov	rbp, rbp
	jne	.label_804
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1004], ecx
	mov	rbp, rbp
	jmp	.label_809
.label_804:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1004], eax
	jmp	.label_809
.label_809:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1004]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
	call	restore_cwd
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_801
	lea	rdi, [rdi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	call	openat_restore_fail
.label_801:
	lea	rdi, [rbp - 0x40]
	nop	
	call	free_cwd
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	je	.label_803
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
.label_803:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1008]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_799:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x1020
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d810

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1020
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], -0x64
	je	.label_814
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	nop	
	jne	.label_819
.label_814:
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	setfilecon
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_820
.label_819:
	lea	rdi, [rbp - 0x1000]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	call	openat_proc_name
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_825
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	setfilecon
	mov	dword ptr [rbp - 0x1008], eax
	mov	rsp, rsp
	call	__errno_location
	nop	
	lea	rsi, [rbp - 0x1000]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, rsi
	nop	
	je	.label_818
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
.label_818:
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1008]
	lea	rdi, [rdi]
	je	.label_822
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1008]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_820
.label_822:
	cmp	dword ptr [rbp - 0x14], 0x14
	lea	rdi, [rdi]
	je	.label_813
	cmp	dword ptr [rbp - 0x14], 2
	nop	
	je	.label_813
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_813
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0xd
	je	.label_813
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0x26
	lea	rsi, [rsi]
	je	.label_813
	cmp	dword ptr [rbp - 0x14], 0x5f
	nop	
	je	.label_813
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x1008]
	mov	dword ptr [rbp - 0x18], ecx
	jmp	.label_820
.label_813:
	jmp	.label_825
.label_825:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1018]
	lea	rdi, [rdi]
	call	save_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_815
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	lea	rsi, [rsi]
	call	openat_save_fail
.label_815:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	jg	.label_817
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1018]
	mov	rbp, rbp
	jne	.label_817
	lea	rdi, [rbp - 0x1018]
	mov	rsp, rsp
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	dword ptr [rbp - 0x18], 0xffffffff
	jmp	.label_820
.label_817:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	call	fchdir
	cmp	eax, 0
	je	.label_812
	call	__errno_location
	nop	
	lea	rdi, [rbp - 0x1018]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 8], ecx
	call	free_cwd
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0xffffffff
	jmp	.label_820
.label_812:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	setfilecon
	nop	
	mov	dword ptr [rbp - 0x101c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x101c], -1
	lea	rdi, [rdi]
	jne	.label_823
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1004], ecx
	mov	rbp, rbp
	jmp	.label_816
.label_823:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1004], eax
	jmp	.label_816
.label_816:
	mov	eax, dword ptr [rbp - 0x1004]
	lea	rdi, [rbp - 0x1018]
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	call	restore_cwd
	cmp	eax, 0
	je	.label_821
	lea	rdi, [rdi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	openat_restore_fail
.label_821:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1018]
	nop	
	call	free_cwd
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_824
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
.label_824:
	mov	eax, dword ptr [rbp - 0x101c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_820:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x1020
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db30

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x1030
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1024], edi
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	cmp	dword ptr [rbp - 0x1024], -0x64
	lea	rsi, [rsi]
	je	.label_833
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_838
.label_833:
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	lsetfilecon
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_826
.label_838:
	lea	rdi, [rbp - 0x1020]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1024]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	openat_proc_name
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_831
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	lsetfilecon
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	lea	rsi, [rbp - 0x1020]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_836
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_836:
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	cmp	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	je	.label_828
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_826
.label_828:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], 0x14
	nop	
	je	.label_830
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x54], 2
	mov	rbp, rbp
	je	.label_830
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 1
	mov	rsp, rsp
	je	.label_830
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 0xd
	je	.label_830
	cmp	dword ptr [rbp - 0x54], 0x26
	mov	rbp, rbp
	je	.label_830
	cmp	dword ptr [rbp - 0x54], 0x5f
	je	.label_830
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x38], ecx
	jmp	.label_826
.label_830:
	nop	
	jmp	.label_831
.label_831:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x20]
	call	save_cwd
	cmp	eax, 0
	je	.label_832
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	nop	
	call	openat_save_fail
.label_832:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1024]
	jg	.label_834
	mov	eax, dword ptr [rbp - 0x1024]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x20]
	jne	.label_834
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_826
.label_834:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1024]
	call	fchdir
	cmp	eax, 0
	je	.label_837
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	call	free_cwd
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xc], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_826
.label_837:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	lsetfilecon
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x50], -1
	jne	.label_827
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	nop	
	jmp	.label_829
.label_827:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_829
.label_829:
	mov	eax, dword ptr [rbp - 4]
	nop	
	lea	rdi, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	call	restore_cwd
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_835
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	call	openat_restore_fail
.label_835:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x20]
	call	free_cwd
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_839
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rax], ecx
.label_839:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
.label_826:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x1030
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de30

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
	jmp	.label_844
.label_840:
	mov	rbp, rbp
	jmp	.label_841
.label_841:
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
	jmp	.label_843
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
	je	.label_841
.label_843:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_844:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df20

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
	.align	32
	#Procedure 0x40e000

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e030

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
	jne	.label_853
	mov	rsp, rsp
	jmp	.label_855
.label_853:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 0x3c
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	mov	rbp, rbp
	call	__assert_fail
.label_855:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_849
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_849
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_849
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_854
.label_849:
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
	jne	.label_850
	mov	rsp, rsp
	jmp	.label_852
.label_850:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_851
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_854
.label_851:
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
.label_852:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
.label_854:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e180

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e1c0

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
	je	.label_856
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
.label_856:
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
	je	.label_857
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
	ja	.label_858
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
	jmp	.label_859
.label_858:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_859:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_857:
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
	.align	32
	#Procedure 0x40e440

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
	je	.label_861
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_862
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_860
.label_862:
	mov	byte ptr [rbp - 0xd], 0
.label_860:
	jmp	.label_861
.label_861:
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
	.align	32
	#Procedure 0x40e4e0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e500

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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e520

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e540

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
.label_868:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_863
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_865
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_869:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_864
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_869
.label_864:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_866
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_866:
	jmp	.label_865
.label_865:
	mov	rbp, rbp
	jmp	.label_867
.label_867:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_868
.label_863:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e620
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
.label_870:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_874
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
.label_871:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_872
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_871
.label_872:
	jmp	.label_874
.label_874:
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_870
.label_875:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_876
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_876
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_873
.label_876:
	mov	byte ptr [rbp - 0x19], 0
.label_873:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e750
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
	mov	ecx, OFFSET FLAT:.str_9
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
	mov	ecx, OFFSET FLAT:.str.1_7
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_878]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_879]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_880]]
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
	movabs	rsi, OFFSET FLAT:.str.3_2
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e8d0

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
	jne	.label_887
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_886
.label_887:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_885:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_883
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_881
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
	jne	.label_881
	mov	rsp, rsp
	jmp	.label_884
.label_881:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_886
.label_884:
	nop	
	jmp	.label_882
.label_882:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_885
.label_883:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_886:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9c0

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
	jb	.label_888
	call	abort
.label_888:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ea50
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
	jne	.label_889
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_892
.label_889:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_891:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_890
	lea	rsi, [rsi]
	call	abort
.label_890:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_893
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_892
.label_893:
	jmp	.label_894
.label_894:
	nop	
	jmp	.label_895
.label_895:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_891
.label_892:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb10
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
.label_899:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_897
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_897
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_901
.label_897:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_899
	jmp	.label_896
.label_896:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_900
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_898
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_901
.label_898:
	jmp	.label_896
.label_900:
	mov	qword ptr [rbp - 0x28], 0
.label_901:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ec10
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
.label_906:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_902
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_904
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_903:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_909
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_905
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_908
.label_905:
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
	jmp	.label_903
.label_909:
	lea	rsi, [rsi]
	jmp	.label_904
.label_904:
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_906
.label_902:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_908:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed20
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
.label_915:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_913
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_910
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_912:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_917
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
	jne	.label_911
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_916
.label_911:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_912
.label_917:
	mov	rbp, rbp
	jmp	.label_910
.label_910:
	nop	
	jmp	.label_914
.label_914:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_915
.label_913:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_916:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee30
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
.label_918:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_919
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
	jmp	.label_918
.label_919:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eea0
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
	mov	rax,  qword ptr [word ptr [label_920]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_921]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eef0

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
	jne	.label_928
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_928:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_930
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_930:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_927
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_923
.label_927:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_924
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_924:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_925
	jmp	.label_922
.label_925:
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
	jne	.label_926
	mov	rsp, rsp
	jmp	.label_922
.label_926:
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
	jne	.label_929
	jmp	.label_922
.label_929:
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
	jmp	.label_923
.label_922:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_923:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f110

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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f160

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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f190

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
	jne	.label_934
	mov	byte ptr [rbp - 1], 1
	jmp	.label_931
.label_934:
	movss	xmm0,  dword ptr [dword ptr [label_932]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_933
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_935]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_933
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_935]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_933
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_933
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_933
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_935]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_933
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
	jbe	.label_933
	mov	byte ptr [rbp - 1], 1
	jmp	.label_931
.label_933:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_931:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f300

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
	jne	.label_936
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_937]]
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
	js	.label_938
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_938:
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
	jb	.label_942
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_940
.label_942:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_941]]
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
.label_936:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_939
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_940
.label_939:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_940:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f470
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
.label_949:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_948
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_945
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_943:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_946
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_950
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_950:
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
	jmp	.label_943
.label_946:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_947
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_947:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_945:
	jmp	.label_944
.label_944:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_949
.label_948:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5e0

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
	je	.label_952
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_952
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_958:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_961
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_951
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_954:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_956
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
	jmp	.label_954
.label_956:
	jmp	.label_951
.label_951:
	jmp	.label_962
.label_962:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_958
.label_961:
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_960:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_953
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_964:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_959
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
	jmp	.label_964
.label_959:
	jmp	.label_963
.label_963:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_960
.label_953:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_955:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_957
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
	jmp	.label_955
.label_957:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7d0

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
	jne	.label_965
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_966
.label_965:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_968
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_966
.label_968:
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
	jne	.label_970
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_966
.label_970:
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
	jne	.label_969
	lea	rsi, [rsi]
	jmp	.label_973
.label_969:
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
	jmp	.label_966
.label_973:
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
	jne	.label_971
	mov	rbp, rbp
	jmp	.label_972
.label_971:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_967
.label_972:
	call	abort
.label_967:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_966:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40faa0

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
.label_985:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_976
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_983
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_979:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_975
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
	je	.label_987
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
	jmp	.label_978
.label_987:
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
.label_978:
	mov	rbp, rbp
	jmp	.label_974
.label_974:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_979
.label_975:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_982
	jmp	.label_984
.label_982:
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
	je	.label_980
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_986
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_977
.label_986:
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
	jmp	.label_981
.label_980:
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
.label_981:
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
.label_983:
	jmp	.label_984
.label_984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_985
.label_976:
	mov	byte ptr [rbp - 0x19], 1
.label_977:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd30

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
	jne	.label_1002
	lea	rsi, [rsi]
	call	abort
.label_1002:
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
	je	.label_994
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_999
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_999:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_989
.label_994:
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
	js	.label_995
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_995:
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
	js	.label_988
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_988:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_990
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
	js	.label_1005
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1005:
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
	js	.label_1001
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1001:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
.label_1270:
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1000
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_996
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
	js	.label_991
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_991:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_998
.label_996:
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
	js	.label_1004
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1004:
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
.label_998:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_937]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_993
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_989
.label_993:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_941]]
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
	jne	.label_1003
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_989
.label_1003:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1006
	call	abort
.label_1006:
	jmp	.label_1000
.label_1000:
	lea	rdi, [rdi]
	jmp	.label_990
.label_990:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_997
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_992
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_989
.label_992:
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
	jmp	.label_989
.label_997:
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
.label_989:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410320

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
	jne	.label_1011
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1009
.label_1011:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1007
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
	jne	.label_1007
	jmp	.label_1018
.label_1007:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1010
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1014
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
	jmp	.label_1017
.label_1014:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1017:
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1009
.label_1018:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1012:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1013
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1016
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
	jne	.label_1016
	lea	rsi, [rsi]
	jmp	.label_1019
.label_1016:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1008
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
.label_1008:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1009
.label_1019:
	mov	rbp, rbp
	jmp	.label_1015
.label_1015:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1012
.label_1013:
	mov	qword ptr [rbp - 0x40], 0
.label_1009:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410560

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
	je	.label_1020
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
	jmp	.label_1021
.label_1020:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1021:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4105e0

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
	jne	.label_1024
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1022
.label_1024:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1025
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1023
.label_1025:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1023:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1022:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410680

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
	jne	.label_1041
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1033
.label_1041:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1035
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
	js	.label_1026
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1026:
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
	js	.label_1039
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1039:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1036
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
	js	.label_1034
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1034:
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
	js	.label_1030
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1030:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1031
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1038
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
	js	.label_1032
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1032:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1037
.label_1038:
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
	js	.label_1028
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1028:
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
.label_1037:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_941]]
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
	jne	.label_1029
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1040:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1027
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
	jmp	.label_1040
.label_1027:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1029:
	lea	rsi, [rsi]
	jmp	.label_1031
.label_1031:
	jmp	.label_1036
.label_1036:
	nop	
	jmp	.label_1035
.label_1035:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1033:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410b50

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
	jae	.label_1042
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1042:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1046:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1044
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1044:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1045
	jmp	.label_1043
.label_1045:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1046
.label_1043:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410c00

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
.label_1047:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1048
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
.label_1048:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1050
	jmp	.label_1049
.label_1050:
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
	jmp	.label_1047
.label_1049:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d00

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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x410d50

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
.label_1052:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 4
	mov	rbp, rbp
	jge	.label_1051
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1052
.label_1051:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410de0

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
	nop	
	.section	.text
	.align	32
	#Procedure 0x410e00

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
	jne	.label_1053
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
.label_1053:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ed0

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
	jne	.label_1055
	mov	rsp, rsp
	jmp	.label_1054
.label_1055:
	lea	rsi, [rsi]
	call	abort
.label_1054:
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
	jne	.label_1056
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_1057
.label_1056:
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
.label_1057:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410fb0

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
	jne	.label_1059
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1059:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1058
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1058:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411030

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_10
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], edi
	mov	rdi, rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	nop	
	call	gettext
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411090

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_9
	mov	dword ptr [rbp - 0xc], edi
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4110f0

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
	je	.label_1060
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
.label_1060:
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
	je	.label_1063
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
	ja	.label_1062
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
	jmp	.label_1061
.label_1062:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x58], rdx
.label_1061:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rcx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], edx
	mov	qword ptr [rbp - 0x10], rcx
.label_1063:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411360

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
	jge	.label_1064
	nop	
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1066
.label_1064:
	mov	edi, dword ptr [rbp - 0x40]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1067
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1065
.label_1067:
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
.label_1065:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1066:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411460

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_6
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdi], eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 0
	jge	.label_1069
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	edx, 0xffffffff
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_1068
.label_1069:
	mov	dword ptr [rbp - 0xc], 0
.label_1068:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411510

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rdi]
	jg	.label_1070
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	nop	
	call	fchdir
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1071
.label_1070:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	call	chdir_long
	mov	dword ptr [rbp - 4], eax
.label_1071:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411570

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jl	.label_1072
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_1072:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4115c0

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
	jg	.label_1073
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1073
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
.label_1073:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411650

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	chdir
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_1090
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	je	.label_1100
.label_1090:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1075
.label_1100:
	nop	
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	cdb_init
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1093
	nop	
	jmp	.label_1097
.label_1093:
	movabs	rdi, OFFSET FLAT:.str_11
	movabs	rsi, OFFSET FLAT:.str.1_10
	nop	
	mov	edx, 0x7e
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	lea	rdi, [rdi]
	call	__assert_fail
.label_1097:
	mov	rbp, rbp
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1083
	lea	rsi, [rsi]
	jmp	.label_1088
.label_1083:
	movabs	rdi, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1088:
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	strspn
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 2
	mov	rsp, rsp
	jne	.label_1077
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memchr
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jne	.label_1095
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1075
.label_1095:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x40]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	je	.label_1082
	jmp	.label_1078
.label_1082:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	find_non_slash
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_1084
.label_1077:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1096
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.3_0
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_1076
	jmp	.label_1078
.label_1076:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_1096:
	jmp	.label_1084
.label_1084:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1086
	lea	rdi, [rdi]
	jmp	.label_1074
.label_1086:
	nop	
	movabs	rdi, OFFSET FLAT:.str.4_1
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1074:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1098
	jmp	.label_1085
.label_1098:
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0xa3
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1085:
	jmp	.label_1087
.label_1087:
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jg	.label_1089
	lea	rdi, [rdi]
	mov	esi, 0x2f
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jne	.label_1099
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1075
.label_1099:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	nop	
	cmp	rax, 0x1000
	jge	.label_1094
	jmp	.label_1091
.label_1094:
	movabs	rdi, OFFSET FLAT:.str.6_1
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0xb3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	mov	rbp, rbp
	call	__assert_fail
.label_1091:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	cdb_advance_fd
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	nop	
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_1079
	mov	rbp, rbp
	jmp	.label_1078
.label_1079:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	nop	
	call	find_non_slash
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_1087
.label_1089:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1092
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	cdb_advance_fd
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1081
	jmp	.label_1078
.label_1081:
	jmp	.label_1092
.label_1092:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_1080
	lea	rdi, [rdi]
	jmp	.label_1078
.label_1080:
	lea	rdi, [rbp - 0x48]
	call	cdb_free
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1075
.label_1078:
	call	__errno_location
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], ecx
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
.label_1075:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411b00

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi], 0xffffff9c
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b20

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	edx, 0x10900
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, 0
	call	openat
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1101
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1102
.label_1101:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	cdb_free
	mov	eax, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 0x14], 0
.label_1102:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411bb0

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bf0

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi]
	mov	rbp, rbp
	call	fchdir
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411c20

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdi]
	lea	rdi, [rdi]
	jg	.label_1103
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	nop	
	cmp	eax, 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	jne	.label_1105
	mov	rbp, rbp
	jmp	.label_1104
.label_1105:
	movabs	rdi, OFFSET FLAT:.str.7_1
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0x40
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rsi, [rsi]
	call	__assert_fail
.label_1104:
	jmp	.label_1103
.label_1103:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411cc0

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
	jge	.label_1109
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1107
.label_1109:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1106
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
	je	.label_1108
.label_1106:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1108
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1108:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1110
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
.label_1110:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1107:
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
	.align	32
	#Procedure 0x411de0

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
	je	.label_1134
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
.label_1134:
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
	je	.label_1137
	nop	
	jmp	.label_1119
.label_1119:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1120
	jmp	.label_1122
.label_1137:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1126
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
	jmp	.label_1133
.label_1126:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1133:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1114
.label_1120:
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
	ja	.label_1132
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
	jmp	.label_1113
.label_1132:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1113:
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
	jmp	.label_1114
.label_1122:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1115
	nop	
	jmp	.label_1118
.label_1118:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1117
	jmp	.label_1124
.label_1124:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1115
	nop	
	jmp	.label_1130
.label_1130:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1117
	nop	
	jmp	.label_1136
.label_1136:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1115
	lea	rsi, [rsi]
	jmp	.label_1112
.label_1112:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1115
	lea	rsi, [rsi]
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1117
	mov	rsp, rsp
	jmp	.label_1129
.label_1129:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1115
	jmp	.label_1131
.label_1131:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1117
	lea	rsi, [rsi]
	jmp	.label_1140
.label_1140:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1115
	jmp	.label_1116
.label_1116:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1117
	mov	rsp, rsp
	jmp	.label_1125
.label_1125:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1115
	lea	rsi, [rsi]
	jmp	.label_1127
.label_1127:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1115
	nop	
	jmp	.label_1139
.label_1139:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1141
	lea	rdi, [rdi]
	jmp	.label_1117
.label_1117:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1123
.label_1115:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1128
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
	jmp	.label_1135
.label_1128:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1135:
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
	jmp	.label_1123
.label_1141:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1138
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
	jmp	.label_1111
.label_1138:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1111:
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
.label_1123:
	jmp	.label_1114
.label_1114:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412440

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
	.align	32
	#Procedure 0x412490

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
	jg	.label_1144
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
	jle	.label_1145
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1146
.label_1145:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1148
.label_1146:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1143
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1143:
	mov	rbp, rbp
	jmp	.label_1148
.label_1148:
	jmp	.label_1149
.label_1144:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1149:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1142
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1142
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1150
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
	jne	.label_1147
.label_1150:
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
.label_1147:
	jmp	.label_1142
.label_1142:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412610

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
	je	.label_1151
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1152
.label_1151:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1153
.label_1152:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1153:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412680

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
	je	.label_1154
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
.label_1154:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4126e0

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
	jne	.label_1155
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1155
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1155
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
	jne	.label_1156
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1157
.label_1156:
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
	jmp	.label_1157
.label_1155:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1157:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4127f0

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
	ja	.label_1158
	jmp	.label_1160
.label_1160:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1159
.label_1158:
	lea	rsi, [rsi]
	jmp	.label_1159
.label_1159:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412850

	.globl openat_proc_name
	.type openat_proc_name, @function
openat_proc_name:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], esi
	mov	qword ptr [rbp - 0x68], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	byte ptr [rdx], 0
	nop	
	jne	.label_1163
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1162
.label_1163:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [openat_proc_name.proc_status]],  0
	jne	.label_1165
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_12
	lea	rsi, [rsi]
	mov	esi, 0x10900
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x74], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x74], 0
	lea	rsi, [rsi]
	jge	.label_1164
	nop	
	mov	dword ptr [dword ptr [openat_proc_name.proc_status]],  0xffffffff
	mov	rsp, rsp
	jmp	.label_1168
.label_1164:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x74]
	mov	al, 0
	call	sprintf
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	call	access
	mov	edx, 1
	mov	esi, 0xffffffff
	cmp	eax, 0
	nop	
	cmovne	edx, esi
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [openat_proc_name.proc_status]],  edx
	mov	edi, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0x70], eax
.label_1168:
	jmp	.label_1165
.label_1165:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [openat_proc_name.proc_status]],  0
	jge	.label_1167
	mov	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jmp	.label_1162
.label_1167:
	lea	rdi, [rdi]
	mov	eax, 0xfc0
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	call	strlen
	add	rax, 0x1b
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_1166
	mov	rdi, qword ptr [rbp - 0x60]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_1161
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1162
.label_1161:
	jmp	.label_1166
.label_1166:
	movabs	rsi, OFFSET FLAT:.str.2_5
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	edx, dword ptr [rbp - 0x6c]
	mov	al, 0
	call	sprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, rax
	call	strcpy
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_1162:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a50
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x412aa0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412af0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b40
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b80
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412be0

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c40
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c90
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412ce0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d40
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412d90
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
	jb	.label_1169
	jmp	.label_1170
.label_1170:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_1169
	nop	
	jmp	.label_1173
.label_1173:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_1172
	jmp	.label_1169
.label_1169:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1172:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_1171:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412e20
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
	jb	.label_1174
	nop	
	jmp	.label_1175
.label_1175:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_1176
	lea	rdi, [rdi]
	jmp	.label_1174
.label_1174:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1177
.label_1176:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_1177:
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
	.align	32
	#Procedure 0x412ea0
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
	ja	.label_1178
	mov	rsp, rsp
	jmp	.label_1180
.label_1180:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1179
.label_1178:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_1179:
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
	.align	32
	#Procedure 0x412ef0
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
	je	.label_1181
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1181:
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
	.align	32
	#Procedure 0x412f40
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
	jb	.label_1182
	nop	
	jmp	.label_1183
.label_1183:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_1184
	lea	rsi, [rsi]
	jmp	.label_1182
.label_1182:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1185
.label_1184:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_1185:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412fb0
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
	ja	.label_1187
	jmp	.label_1188
.label_1188:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_1186
.label_1187:
	mov	byte ptr [rbp - 5], 0
.label_1186:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413000
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
	ja	.label_1189
	lea	rsi, [rsi]
	jmp	.label_1190
.label_1190:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1191
.label_1189:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_1191:
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
	.align	32
	#Procedure 0x413050
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
	ja	.label_1192
	jmp	.label_1193
.label_1193:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1194
.label_1192:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1194:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4130a0
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
	ja	.label_1195
	jmp	.label_1197
.label_1197:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1196
.label_1195:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1196:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4130f0
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
	jb	.label_1198
	jmp	.label_1200
.label_1200:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_1198
	nop	
	jmp	.label_1203
.label_1203:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1198
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_1199
	mov	rsp, rsp
	jmp	.label_1198
.label_1198:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1202
.label_1199:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1202:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4131a0
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
	jb	.label_1204
	mov	rbp, rbp
	jmp	.label_1205
.label_1205:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_1207
	mov	rsp, rsp
	jmp	.label_1204
.label_1204:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1206
.label_1207:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413210
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
	ja	.label_1208
	jmp	.label_1210
.label_1210:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_1209
.label_1208:
	mov	byte ptr [rbp - 5], 0
.label_1209:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413260
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
	jb	.label_1211
	lea	rdi, [rdi]
	jmp	.label_1215
.label_1215:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_1211
	jmp	.label_1212
.label_1212:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1214
	jmp	.label_1211
.label_1211:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1213
.label_1214:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_1213:
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
	.align	32
	#Procedure 0x4132f0

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
	ja	.label_1216
	jmp	.label_1217
.label_1217:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1218
.label_1216:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_1218:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x413340
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
	ja	.label_1219
	mov	rbp, rbp
	jmp	.label_1220
.label_1220:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1221
.label_1219:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1221:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4133a0

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413490

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4134a0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x4134b0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x4134c0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
