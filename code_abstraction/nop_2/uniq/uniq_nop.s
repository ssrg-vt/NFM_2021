	.section	.text
	.align	16
	#Procedure 0x4017f0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	nop	
	je	.label_9
	jmp	.label_8
.label_8:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x40], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jmp	.label_7
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	call	emit_mandatory_arg_note
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 8], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_14:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 5], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	nop	
	xor	cl, 0xff
	mov	byte ptr [rbp - 5], cl
.label_10:
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	nop	
	jne	.label_11
	jmp	.label_13
.label_11:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_14
.label_13:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	dword ptr [rbp - 0x44], eax
	call	setlocale
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	strncmp
	cmp	eax, 0
	nop	
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_12:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.47
	mov	dword ptr [rbp - 4], eax
	call	gettext
	nop	
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.48
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x40]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xc0
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], 0
	nop	
	mov	dword ptr [rbp - 0x20], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], 0
	lea	rsi, [rsi]
	mov	rdi, rax
	call	getenv
	movabs	rsi, OFFSET FLAT:.str.16
	cmp	rax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x82], cl
	mov	dword ptr [rbp - 0x4c], 0
	mov	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0xa
	mov	byte ptr [rbp - 0x8d], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0xa0], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.18_0
	movabs	rsi, OFFSET FLAT:.str.19
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	call	textdomain
	mov	edi, 3
	mov	qword ptr [rbp - 0xb0], rax
	call	hard_locale
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_COLLATE]],  al
	lea	rdi, [rdi]
	call	atexit
	mov	qword ptr [word ptr [skip_chars]],  0
	mov	qword ptr [word ptr [skip_fields]],  0
	mov	qword ptr [word ptr [check_chars]],  -1
	mov	byte ptr [byte ptr [output_first_repeated]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [output_unique]],  1
	mov	byte ptr [byte ptr [output_later_repeated]],  0
	mov	rbp, rbp
	mov	dword ptr [dword ptr [countmode]],  1
	mov	dword ptr [dword ptr [delimit_groups]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
.label_61:
	cmp	dword ptr [rbp - 0x8c], -1
	lea	rsi, [rsi]
	je	.label_39
	nop	
	test	byte ptr [rbp - 0x82], 1
	je	.label_41
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_39
.label_41:
	movabs	rdx, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	getopt_long
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	cmp	eax, -1
	nop	
	jne	.label_55
.label_39:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_60
	mov	rsp, rsp
	jmp	.label_64
.label_60:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 2
	nop	
	jne	.label_47
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	lea	rdi, [rdi]
	xor	edx, edx
	mov	edi, edx
	mov	rbp, rbp
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	call	usage
.label_47:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	mov	rsp, rsp
	add	ecx, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rsp, rsp
	mov	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	qword ptr [rbp + rsi*8 - 0xa0], rdx
	lea	rdi, [rdi]
	jmp	.label_34
.label_55:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], ecx
	mov	rsp, rsp
	je	.label_51
	lea	rdi, [rdi]
	jmp	.label_56
.label_56:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	je	.label_58
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_66
	lea	rdi, [rdi]
	jmp	.label_16
.label_16:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_20
	mov	rsp, rsp
	jmp	.label_25
.label_25:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	je	.label_27
	mov	rsp, rsp
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x63
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_57
	jmp	.label_35
.label_35:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	je	.label_38
	mov	rbp, rbp
	jmp	.label_42
.label_42:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_44
	mov	rsp, rsp
	jmp	.label_49
.label_49:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x14], eax
	je	.label_50
	jmp	.label_53
.label_53:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x73
	nop	
	mov	dword ptr [rbp - 0x60], eax
	je	.label_54
	mov	rsp, rsp
	jmp	.label_22
.label_22:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	je	.label_21
	mov	rbp, rbp
	jmp	.label_65
.label_65:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x34], eax
	je	.label_67
	nop	
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_19
	lea	rdi, [rdi]
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	je	.label_26
	jmp	.label_30
.label_66:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2b
	mov	rbp, rbp
	jne	.label_32
	call	strict_posix2
	nop	
	test	al, 1
	nop	
	jne	.label_32
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x78]
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoul
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_32
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	ja	.label_32
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [word ptr [skip_chars]],  rax
	mov	rbp, rbp
	jmp	.label_28
.label_32:
	cmp	dword ptr [rbp - 0x5c], 2
	jne	.label_59
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_59:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x5c], edx
	mov	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	qword ptr [rbp + rsi*8 - 0xa0], rax
	jmp	.label_28
.label_28:
	jmp	.label_24
.label_20:
	cmp	dword ptr [rbp - 0x4c], 2
	nop	
	jne	.label_36
	mov	qword ptr [word ptr [skip_fields]],  0
.label_36:
	movabs	rax, 0x1999999999999999
	cmp	rax,  qword ptr [word ptr [skip_fields]]
	lea	rsi, [rsi]
	jb	.label_40
	nop	
	imul	rax,  qword ptr [word ptr [skip_fields]],  0xa
	mov	ecx, dword ptr [rbp - 0x8c]
	sub	ecx, 0x30
	movsxd	rdx, ecx
	nop	
	add	rax, rdx
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [skip_fields]]
	jae	.label_48
.label_40:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_43
.label_48:
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	imul	rcx,  qword ptr [word ptr [skip_fields]],  0xa
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x8c]
	sub	edx, 0x30
	mov	rbp, rbp
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [skip_fields]],  rcx
	mov	dword ptr [rbp - 4], eax
.label_43:
	mov	eax, dword ptr [rbp - 4]
	nop	
	cmp	eax, 0
	jne	.label_17
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [skip_fields]],  -1
.label_17:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 1
	lea	rsi, [rsi]
	jmp	.label_24
.label_57:
	nop	
	mov	dword ptr [dword ptr [countmode]],  0
	mov	byte ptr [rbp - 0x8d], 1
	jmp	.label_24
.label_38:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [output_unique]],  0
	nop	
	mov	byte ptr [rbp - 0x8d], 1
	nop	
	jmp	.label_24
.label_27:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [output_unique]],  0
	mov	byte ptr [byte ptr [output_later_repeated]],  1
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rsp, rsp
	jne	.label_37
	mov	dword ptr [dword ptr [delimit_groups]],  0
	mov	rsp, rsp
	jmp	.label_46
.label_37:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.22
	nop	
	movabs	rdx, OFFSET FLAT:delimit_method_string
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:delimit_method_map
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	r8d, ecx
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + delimit_method_map]]
	mov	dword ptr [dword ptr [delimit_groups]],  r10d
.label_46:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8d], 1
	nop	
	jmp	.label_24
.label_26:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_33
	mov	rbp, rbp
	mov	dword ptr [dword ptr [grouping]],  3
	jmp	.label_52
.label_33:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:grouping_method_string
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:grouping_method_map
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	r8d, ecx
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + grouping_method_map]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [grouping]],  r10d
.label_52:
	lea	rsi, [rsi]
	jmp	.label_24
.label_44:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.24
	mov	dword ptr [rbp - 0x4c], 2
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	size_opt
	mov	rbp, rbp
	mov	qword ptr [word ptr [skip_fields]],  rax
	jmp	.label_24
.label_50:
	mov	byte ptr [byte ptr [ignore_case]],  1
	jmp	.label_24
.label_54:
	movabs	rsi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	size_opt
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [skip_chars]],  rax
	jmp	.label_24
.label_21:
	mov	byte ptr [byte ptr [output_first_repeated]],  0
	mov	byte ptr [rbp - 0x8d], 1
	lea	rsi, [rsi]
	jmp	.label_24
.label_67:
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	size_opt
	mov	qword ptr [word ptr [check_chars]],  rax
	jmp	.label_24
.label_19:
	mov	byte ptr [rbp - 0x81], 0
	jmp	.label_24
.label_58:
	lea	rsi, [rsi]
	xor	edi, edi
	call	usage
.label_51:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.28
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str.29
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	mov	al, 0
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	call	exit
.label_30:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_24:
	lea	rsi, [rsi]
	jmp	.label_34
.label_34:
	mov	rbp, rbp
	jmp	.label_61
.label_64:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [grouping]],  0
	mov	rbp, rbp
	je	.label_62
	test	byte ptr [rbp - 0x8d], 1
	je	.label_62
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_62:
	cmp	dword ptr [dword ptr [grouping]],  0
	lea	rdi, [rdi]
	je	.label_29
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [countmode]],  1
	je	.label_29
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	edi, 1
	call	usage
.label_29:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [countmode]],  0
	jne	.label_45
	test	byte ptr [byte ptr [output_later_repeated]],  1
	lea	rdi, [rdi]
	je	.label_45
	nop	
	movabs	rdi, OFFSET FLAT:.str.32
	nop	
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_45:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	movsx	edx, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	call	check_file
	lea	rdi, [rdi]
	xor	eax, eax
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl strict_posix2
	.type strict_posix2, @function
strict_posix2:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	call	posix2_version
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	mov	ecx, 0x30db0
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 5], dl
	jg	.label_68
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x31069
	setl	al
	nop	
	mov	byte ptr [rbp - 5], al
.label_68:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770

	.globl size_opt
	.type size_opt, @function
size_opt:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	r8d, eax
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edx, 0xa
	mov	rbp, rbp
	lea	rcx, [rbp - 0x18]
	lea	rdi, [rdi]
	call	xstrtoul
	lea	rdi, [rdi]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	ja	.label_69
	lea	rdi, [rdi]
	jmp	.label_71
.label_71:
	jmp	.label_73
.label_69:
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, rax
	mov	al, 0
	call	error
.label_73:
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_72
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_70
.label_72:
	mov	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_70
.label_70:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl check_file
	.type check_file, @function
check_file:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	lea	rdi, [rdi]
	mov	al, dl
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa1], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	edx, OFFSET FLAT:.str.16
	mov	esi, edx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_96
	nop	
	movabs	rsi, OFFSET FLAT:.str.67
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	freopen_safer
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_96
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x54]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_96:
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_77
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.69
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	freopen_safer
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_77
	call	__errno_location
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_77:
	mov	esi, 2
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fadvise
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xd0]
	mov	rsp, rsp
	lea	rax, [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	initbuffer
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	initbuffer
	test	byte ptr [byte ptr [output_unique]],  1
	mov	rbp, rbp
	je	.label_74
	test	byte ptr [byte ptr [output_first_repeated]],  1
	lea	rdi, [rdi]
	je	.label_74
	cmp	dword ptr [dword ptr [countmode]],  1
	mov	rsp, rsp
	jne	.label_74
	nop	
	mov	byte ptr [rbp - 0x39], 0
.label_85:
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	call	feof_unlocked
	cmp	eax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	nop	
	test	cl, 1
	jne	.label_106
	mov	rbp, rbp
	jmp	.label_82
.label_106:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rsi,  qword ptr [word ptr [stdin]]
	nop	
	movsx	edx, byte ptr [rbp - 0xa1]
	call	readlinebuffer_delim
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_94
	mov	rsp, rsp
	jmp	.label_82
.label_94:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	find_field
	mov	cl, 1
	mov	qword ptr [rbp - 0x100], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rdi, rdx
	mov	rbp, rbp
	sub	rax, rdi
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], cl
	je	.label_108
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	different
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], al
.label_108:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe5], al
	nop	
	test	byte ptr [rbp - 0xe5], 1
	je	.label_78
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [grouping]],  0
	lea	rsi, [rsi]
	je	.label_78
	cmp	dword ptr [dword ptr [grouping]],  1
	je	.label_84
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [grouping]],  4
	lea	rdi, [rdi]
	je	.label_84
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	nop	
	je	.label_78
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [grouping]],  2
	je	.label_84
	cmp	dword ptr [dword ptr [grouping]],  3
	jne	.label_78
.label_84:
	movsx	edi, byte ptr [rbp - 0xa1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xe4], eax
.label_78:
	test	byte ptr [rbp - 0xe5], 1
	jne	.label_103
	cmp	dword ptr [dword ptr [grouping]],  0
	lea	rsi, [rsi]
	je	.label_104
.label_103:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0x39], 1
.label_104:
	lea	rsi, [rsi]
	jmp	.label_85
.label_82:
	cmp	dword ptr [dword ptr [grouping]],  4
	lea	rsi, [rsi]
	je	.label_87
	cmp	dword ptr [dword ptr [grouping]],  2
	mov	rsp, rsp
	jne	.label_92
.label_87:
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_92
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rbp - 0xa1]
	mov	rbp, rbp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x64], eax
.label_92:
	jmp	.label_100
.label_74:
	mov	qword ptr [rbp - 0x60], 0
	nop	
	mov	byte ptr [rbp - 0x29], 1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdin]]
	mov	rsp, rsp
	movsx	edx, byte ptr [rbp - 0xa1]
	call	readlinebuffer_delim
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_107
	jmp	.label_98
.label_107:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	find_field
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rdi, rcx
	sub	rax, rdi
	mov	qword ptr [rbp - 0xe0], rax
.label_93:
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rsp, rsp
	call	feof_unlocked
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_79
	lea	rdi, [rdi]
	jmp	.label_81
.label_79:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 0xa1]
	call	readlinebuffer_delim
	cmp	rax, 0
	jne	.label_90
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	call	ferror_unlocked
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_102
	nop	
	jmp	.label_98
.label_102:
	jmp	.label_81
.label_90:
	mov	rdi, qword ptr [rbp - 0x78]
	call	find_field
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rdi, rcx
	sub	rax, rdi
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	different
	xor	al, 0xff
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], al
	mov	al, byte ptr [rbp - 0x7d]
	and	al, 1
	movzx	r8d, al
	mov	ecx, r8d
	add	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_75
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x60], rax
.label_75:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [delimit_groups]],  0
	lea	rdi, [rdi]
	je	.label_80
	nop	
	test	byte ptr [rbp - 0x7d], 1
	jne	.label_83
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	je	.label_86
	mov	byte ptr [rbp - 0x29], 0
.label_86:
	jmp	.label_91
.label_83:
	cmp	qword ptr [rbp - 0x60], 1
	lea	rsi, [rsi]
	jne	.label_95
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [delimit_groups]],  1
	mov	rsp, rsp
	je	.label_97
	cmp	dword ptr [dword ptr [delimit_groups]],  2
	lea	rsi, [rsi]
	jne	.label_99
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_99
.label_97:
	movsx	edi, byte ptr [rbp - 0xa1]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
.label_99:
	jmp	.label_95
.label_95:
	mov	rsp, rsp
	jmp	.label_91
.label_91:
	jmp	.label_80
.label_80:
	test	byte ptr [rbp - 0x7d], 1
	mov	rbp, rbp
	je	.label_88
	mov	rsp, rsp
	test	byte ptr [byte ptr [output_later_repeated]],  1
	lea	rsi, [rsi]
	je	.label_89
.label_88:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7d]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	and	al, 1
	movzx	esi, al
	call	writeline
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
	test	byte ptr [rbp - 0x7d], 1
	jne	.label_76
	mov	qword ptr [rbp - 0x60], 0
.label_76:
	lea	rsi, [rsi]
	jmp	.label_89
.label_89:
	mov	rbp, rbp
	jmp	.label_93
.label_81:
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	writeline
.label_100:
	mov	rbp, rbp
	jmp	.label_98
.label_98:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	call	ferror_unlocked
	cmp	eax, 0
	jne	.label_101
	nop	
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_105
.label_101:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.70
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_105:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	nop	
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x100
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403060

	.globl find_field
	.type find_field, @function
find_field:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	sub	rdi, 1
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_114:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rdx,  qword ptr [word ptr [skip_fields]]
	mov	byte ptr [rbp - 0xb], cl
	jae	.label_120
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb], cl
.label_120:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_115
	mov	rbp, rbp
	jmp	.label_110
.label_115:
	jmp	.label_111
.label_111:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], cl
	mov	rbp, rbp
	jae	.label_109
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edi, byte ptr [rcx + rax]
	call	field_sep
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], al
.label_109:
	mov	al, byte ptr [rbp - 0xa]
	test	al, 1
	jne	.label_123
	jmp	.label_119
.label_123:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_111
.label_119:
	nop	
	jmp	.label_116
.label_116:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	jae	.label_117
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	field_sep
	lea	rdi, [rdi]
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_117:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_118
	jmp	.label_122
.label_118:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_116
.label_122:
	jmp	.label_112
.label_112:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_114
.label_110:
	nop	
	mov	rax,  qword ptr [word ptr [skip_chars]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_121
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [skip_chars]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_113
.label_121:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_113:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403270

	.globl different
	.type different, @function
different:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx,  qword ptr [word ptr [check_chars]]
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_127
	mov	rax,  qword ptr [word ptr [check_chars]]
	mov	qword ptr [rbp - 0x10], rax
.label_127:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [check_chars]]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_126
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [check_chars]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_126:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_129
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x12], al
	jne	.label_125
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcasecmp
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_125:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
	lea	rsi, [rsi]
	jmp	.label_124
.label_129:
	mov	rsp, rsp
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	lea	rsi, [rsi]
	je	.label_128
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	call	xmemcoll
	cmp	eax, 0
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], r8b
	lea	rsi, [rsi]
	jmp	.label_124
.label_128:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	jne	.label_130
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x11], cl
.label_130:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
.label_124:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl writeline
	.type writeline, @function
writeline:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	al, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_134
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [output_unique]],  1
	jne	.label_132
	mov	rsp, rsp
	jmp	.label_133
.label_134:
	nop	
	test	byte ptr [rbp - 0x15], 1
	nop	
	jne	.label_131
	mov	rbp, rbp
	test	byte ptr [byte ptr [output_first_repeated]],  1
	lea	rsi, [rsi]
	jne	.label_132
	mov	rbp, rbp
	jmp	.label_133
.label_131:
	test	byte ptr [byte ptr [output_later_repeated]],  1
	jne	.label_132
.label_133:
	jmp	.label_135
.label_132:
	cmp	dword ptr [dword ptr [countmode]],  0
	jne	.label_136
	movabs	rdi, OFFSET FLAT:.str.71
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 0x14], eax
.label_136:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_135:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034f0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 0xa], al
	movzx	edi, byte ptr [rbp - 0xa]
	lea	rsi, [rsi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	dl, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	lea	rdi, [rdi]
	cmp	edi, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dl
	jne	.label_137
	movzx	eax, byte ptr [rbp - 0xa]
	mov	rbp, rbp
	cmp	eax, 0xa
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], cl
.label_137:
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403570

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403590

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
.label_147:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_145
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
	jne	.label_142
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_148
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_138
.label_148:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_143
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_141
.label_143:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_149
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
	je	.label_139
.label_149:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_139:
	lea	rsi, [rsi]
	jmp	.label_141
.label_141:
	mov	rbp, rbp
	jmp	.label_144
.label_144:
	mov	rsp, rsp
	jmp	.label_142
.label_142:
	nop	
	jmp	.label_146
.label_146:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_147
.label_145:
	test	byte ptr [rbp - 0x21], 1
	je	.label_140
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_138
.label_140:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_138:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403740

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
	jne	.label_150
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_151
.label_150:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_151:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
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
.label_154:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_156
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_155
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
	je	.label_153
.label_155:
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
	movabs	rsi, OFFSET FLAT:.str.3_0
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
	jmp	.label_157
.label_153:
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
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_157:
	jmp	.label_152
.label_152:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_154
.label_156:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

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
	jl	.label_158
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_159
.label_158:
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
.label_159:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90
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
.label_162:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_164
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
	jne	.label_161
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_160
.label_161:
	lea	rdi, [rdi]
	jmp	.label_163
.label_163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_162
.label_164:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_160:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b60
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
	#Procedure 0x403b90
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
	#Procedure 0x403bc0

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
	je	.label_165
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_168
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_165
.label_168:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_169
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
	jmp	.label_166
.label_169:
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
.label_166:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_165:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_167
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_167:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_170
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	fdadvise
.label_170:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403d90

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2d], 0
	mov	byte ptr [rbp - 0x39], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x45], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	nop	
	mov	ecx, eax
	test	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	je	.label_179
	mov	rsp, rsp
	jmp	.label_185
.label_185:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	je	.label_186
	mov	rsp, rsp
	jmp	.label_188
.label_188:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	je	.label_172
	lea	rdi, [rdi]
	jmp	.label_175
.label_175:
	mov	eax, 2
	mov	rbp, rbp
	mov	edi, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_181
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x45], 1
.label_181:
	mov	rbp, rbp
	jmp	.label_172
.label_172:
	nop	
	mov	eax, 1
	nop	
	mov	edi, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	call	dup2
	cmp	eax, 1
	je	.label_187
	mov	byte ptr [rbp - 0x39], 1
.label_187:
	nop	
	jmp	.label_186
.label_186:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	nop	
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_173
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2d], 1
.label_173:
	lea	rdi, [rdi]
	jmp	.label_179
.label_179:
	nop	
	jmp	.label_176
.label_176:
	test	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	je	.label_178
	nop	
	xor	edi, edi
	nop	
	call	protect_fd
	test	al, 1
	jne	.label_178
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_182
.label_178:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	je	.label_183
	mov	edi, 1
	call	protect_fd
	test	al, 1
	nop	
	jne	.label_183
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_180
.label_183:
	nop	
	test	byte ptr [rbp - 0x45], 1
	je	.label_171
	lea	rsi, [rsi]
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_171
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_177
.label_171:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x28], rax
.label_177:
	jmp	.label_180
.label_180:
	jmp	.label_182
.label_182:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x40], ecx
	nop	
	test	byte ptr [rbp - 0x45], 1
	je	.label_184
	mov	rbp, rbp
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_184:
	nop	
	test	byte ptr [rbp - 0x39], 1
	je	.label_189
	mov	edi, 1
	nop	
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_189:
	nop	
	test	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	je	.label_174
	lea	rdi, [rdi]
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_174:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_190
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
.label_190:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_4
	xor	esi, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	open
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	je	.label_191
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x10]
	jg	.label_193
	mov	edi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 9
.label_193:
	mov	byte ptr [rbp - 5], 0
	jmp	.label_192
.label_191:
	nop	
	mov	byte ptr [rbp - 5], 1
.label_192:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

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
	je	.label_195
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_5
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_196
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_194
.label_196:
	mov	byte ptr [rbp - 0xd], 0
.label_194:
	jmp	.label_195
.label_195:
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
	#Procedure 0x404130

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x18
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	edx, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	readlinebuffer_delim
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	al, dl
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x21], al
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_202
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_197
.label_202:
	jmp	.label_198
.label_198:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_203
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	je	.label_201
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_199
.label_201:
	nop	
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_197
.label_199:
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	ecx, edx
	jne	.label_205
	mov	rsp, rsp
	jmp	.label_204
.label_205:
	movsx	eax, byte ptr [rbp - 0x21]
	mov	dword ptr [rbp - 0xc], eax
.label_203:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_200
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	call	x2realloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rsi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_200:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	movsx	ecx, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_198
.label_204:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_197:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
.label_210:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], dl
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dl
	movzx	edi, byte ptr [rbp - 0x29]
	call	toupper
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 9]
	nop	
	call	toupper
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	je	.label_209
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_208
.label_209:
	mov	rsp, rsp
	jmp	.label_207
.label_207:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_210
.label_206:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_208:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0x31069
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_213
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_213
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	call	strtol
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_211
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_211:
	nop	
	jmp	.label_213
.label_213:
	cmp	qword ptr [rbp - 0x30], -0x80000000
	jge	.label_212
	mov	rax, -0x80000000
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_215
.label_212:
	cmp	qword ptr [rbp - 0x30], 0x7fffffff
	mov	rbp, rbp
	jge	.label_216
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_214
.label_216:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	nop	
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045c0

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
	jne	.label_217
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_217:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_220
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_219
.label_220:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_219:
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
	jl	.label_218
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_3
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
	jne	.label_218
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
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
	jne	.label_221
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_221:
	jmp	.label_218
.label_218:
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
	#Procedure 0x404740
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
	je	.label_223
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_222
.label_223:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_222
.label_222:
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
	#Procedure 0x4047f0
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
	je	.label_224
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_225
.label_224:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404850
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
	je	.label_226
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_227
.label_226:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0

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
	je	.label_228
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_229
.label_228:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_229
.label_229:
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
	#Procedure 0x4049b0
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
	jne	.label_230
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_230:
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
	#Procedure 0x404a10

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
	jne	.label_231
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_231:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_233
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_232
.label_233:
	call	abort
.label_232:
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
	#Procedure 0x404ab0
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
	je	.label_234
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_235
.label_234:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_235
.label_235:
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
	#Procedure 0x404bb0

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
.label_257:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_261]]
	jmp	rcx
.label_705:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_704:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_291
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_287
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_287:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_291
.label_291:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_299
.label_706:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_299
.label_707:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_325
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
.label_325:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_330
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_350:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_335
	jmp	.label_413
.label_413:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_337
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_337:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_346
.label_346:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_350
.label_335:
	mov	rbp, rbp
	jmp	.label_330
.label_330:
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
	jmp	.label_299
.label_702:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_701:
	mov	byte ptr [rbp - 0x3e], 1
.label_703:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_370
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_370:
	jmp	.label_374
.label_374:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_376
	jmp	.label_381
.label_381:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_382
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_376
.label_376:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_299
.label_700:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_299
.label_274:
	call	abort
.label_299:
	mov	qword ptr [rbp - 0xd8], 0
.label_404:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_401
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
	jmp	.label_402
.label_401:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_402:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_422
	mov	rbp, rbp
	jmp	.label_430
.label_422:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_238
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_238
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_238
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_243
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_243
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_254
.label_243:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_254:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_238
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
	jne	.label_238
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_278
	jmp	.label_246
.label_278:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_238:
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
	ja	.label_285
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_297]]
	nop	
	jmp	rcx
.label_709:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_304
	mov	rsp, rsp
	jmp	.label_308
.label_308:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_310
	jmp	.label_246
.label_310:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_320
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_320
	nop	
	jmp	.label_321
.label_321:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_324
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_331
.label_331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_334:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_339
.label_339:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_343
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_343:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_320:
	lea	rsi, [rsi]
	jmp	.label_355
.label_355:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_356:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_371
.label_371:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_240
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_240
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_240
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_240
	nop	
	jmp	.label_386
.label_386:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_388:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_392
.label_392:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_394
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_394:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_240
.label_240:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_405
.label_304:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_275
	mov	rbp, rbp
	jmp	.label_314
.label_275:
	jmp	.label_405
.label_405:
	jmp	.label_262
.label_720:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_420
	mov	rbp, rbp
	jmp	.label_426
.label_426:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_428
	jmp	.label_434
.label_420:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_435
	jmp	.label_246
.label_435:
	jmp	.label_353
.label_428:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_242
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_242
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
	je	.label_258
	nop	
	jmp	.label_352
.label_352:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_258
	jmp	.label_265
.label_265:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_258
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_258
	jmp	.label_311
.label_311:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_341
	jmp	.label_258
.label_258:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_288
	jmp	.label_246
.label_288:
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
	jae	.label_293
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_293:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_319
.label_319:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_322
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_322:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_328
.label_328:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_333
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_333:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_236
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_236:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_313
.label_341:
	jmp	.label_313
.label_313:
	jmp	.label_242
.label_242:
	jmp	.label_353
.label_434:
	jmp	.label_353
.label_353:
	jmp	.label_262
.label_710:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_358
.label_711:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_358
.label_715:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_358
.label_713:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_365
.label_716:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_365
.label_712:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_365
.label_714:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_358
.label_721:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_372
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_379
	nop	
	jmp	.label_246
.label_379:
	lea	rsi, [rsi]
	jmp	.label_295
.label_372:
	test	byte ptr [rbp - 0x89], 1
	je	.label_383
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_383
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_383
	jmp	.label_295
.label_383:
	jmp	.label_365
.label_365:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_393
	test	byte ptr [rbp - 0x3e], 1
	je	.label_393
	jmp	.label_246
.label_393:
	mov	rsp, rsp
	jmp	.label_358
.label_358:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_424
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_298
.label_424:
	jmp	.label_262
.label_722:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_406
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_410
	jmp	.label_418
.label_406:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_410
.label_418:
	nop	
	jmp	.label_262
.label_410:
	jmp	.label_423
.label_423:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_344
	lea	rsi, [rsi]
	jmp	.label_262
.label_344:
	nop	
	jmp	.label_431
.label_431:
	mov	byte ptr [rbp - 0x91], 1
.label_717:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_433
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_433
	jmp	.label_246
.label_433:
	lea	rsi, [rsi]
	jmp	.label_262
.label_719:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_237
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_245
	jmp	.label_246
.label_245:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_247
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_247
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_247:
	jmp	.label_255
.label_255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_256
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_263
.label_263:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_270
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_270:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_279
.label_279:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_237:
	lea	rsi, [rsi]
	jmp	.label_262
.label_718:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_262
.label_285:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_305
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
	jmp	.label_259
.label_305:
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
	jne	.label_332
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_332:
	jmp	.label_338
.label_338:
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
	jne	.label_354
	jmp	.label_359
.label_354:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_360
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_359
.label_360:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_364
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_384:
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
	jae	.label_397
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_397:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_301
	jmp	.label_318
.label_301:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_384
.label_318:
	jmp	.label_359
.label_364:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_241
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_241
	mov	qword ptr [rbp - 0xe8], 1
.label_436:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_395
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
	jb	.label_345
	jmp	.label_415
.label_415:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_345
	jmp	.label_421
.label_421:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_345
	jmp	.label_427
.label_427:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_429
	mov	rsp, rsp
	jmp	.label_345
.label_345:
	mov	rsp, rsp
	jmp	.label_246
.label_429:
	jmp	.label_411
.label_411:
	mov	rsp, rsp
	jmp	.label_419
.label_419:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_436
.label_395:
	mov	rbp, rbp
	jmp	.label_241
.label_241:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_280
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_280:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_292
.label_292:
	lea	rsi, [rsi]
	jmp	.label_249
.label_249:
	jmp	.label_251
.label_251:
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
	jne	.label_338
.label_359:
	jmp	.label_259
.label_259:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_260
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_272
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_272
.label_260:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_248:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_286
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_286
	jmp	.label_289
.label_289:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_290
	jmp	.label_246
.label_290:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_296
	test	byte ptr [rbp - 0x42], 1
	jne	.label_296
	lea	rdi, [rdi]
	jmp	.label_306
.label_306:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_307:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_267
.label_267:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_303
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_303:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_329
.label_329:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_367
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_367:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_296:
	jmp	.label_340
.label_340:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_342:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_282
.label_282:
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_351
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
.label_351:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_368
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
.label_368:
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
	jmp	.label_377
.label_286:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_385
	lea	rdi, [rdi]
	jmp	.label_389
.label_389:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_391
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_391:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_385:
	nop	
	jmp	.label_377
.label_377:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_398
	jmp	.label_403
.label_398:
	lea	rsi, [rsi]
	jmp	.label_407
.label_407:
	test	byte ptr [rbp - 0x42], 1
	je	.label_409
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_409
	lea	rsi, [rsi]
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_417
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_417:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_425
.label_425:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_432:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_409:
	nop	
	jmp	.label_239
.label_239:
	mov	rsp, rsp
	jmp	.label_327
.label_327:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_244
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_244:
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
	jmp	.label_248
.label_403:
	mov	rsp, rsp
	jmp	.label_295
.label_272:
	lea	rsi, [rsi]
	jmp	.label_262
.label_262:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_316
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_268
.label_316:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_271
.label_268:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_271
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
	jne	.label_276
.label_271:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_276
	mov	rsp, rsp
	jmp	.label_295
.label_276:
	nop	
	jmp	.label_298
.label_298:
	jmp	.label_300
.label_300:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_400
	jmp	.label_246
.label_400:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_312
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_312
	lea	rdi, [rdi]
	jmp	.label_315
.label_315:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_347
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_347:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_387
.label_387:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_336
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_312:
	jmp	.label_414
.label_414:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_348
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_348:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_357
.label_357:
	nop	
	jmp	.label_295
.label_295:
	jmp	.label_361
.label_361:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_362
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_362
	lea	rdi, [rdi]
	jmp	.label_366
.label_366:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_369
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_369:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_380
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_362:
	jmp	.label_390
.label_390:
	nop	
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_408
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_408:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_396
	mov	byte ptr [rbp - 0xb7], 0
.label_396:
	mov	rbp, rbp
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_404
.label_430:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_412
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_412
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_412
	nop	
	jmp	.label_246
.label_412:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_266
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_266
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_266
	test	byte ptr [rbp - 0xb7], 1
	je	.label_399
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
	jmp	.label_250
.label_399:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_253
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_253
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_257
.label_253:
	jmp	.label_264
.label_264:
	mov	rbp, rbp
	jmp	.label_266
.label_266:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_269
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_269
	mov	rbp, rbp
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_277
	lea	rdi, [rdi]
	jmp	.label_281
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_283:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_302
.label_277:
	jmp	.label_269
.label_269:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_309
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_309:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_250
.label_246:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_323
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_323
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_323:
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
.label_250:
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
	#Procedure 0x406650
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
	#Procedure 0x4066c0

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
	je	.label_437
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_438
.label_437:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_438
.label_438:
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
	je	.label_439
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_439:
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
	#Procedure 0x406890
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
.label_444:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_443
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
	jmp	.label_444
.label_443:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_442
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_440]],  rax
.label_442:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_441
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_441:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0

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
	#Procedure 0x4069f0

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
	jge	.label_449
	call	abort
.label_449:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_452
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
	jge	.label_445
	call	xalloc_die
.label_445:
	test	byte ptr [rbp - 0x51], 1
	je	.label_446
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_450
.label_446:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_450:
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
	je	.label_448
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_440]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_448:
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
.label_452:
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
	ja	.label_447
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
	je	.label_451
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_451:
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
.label_447:
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
	#Procedure 0x406d20

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
	#Procedure 0x406d60
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
	#Procedure 0x406d90
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
	#Procedure 0x406dd0

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
	#Procedure 0x406e30

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
	jne	.label_453
	call	abort
.label_453:
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
	#Procedure 0x406ed0

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
	#Procedure 0x406f40

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
	#Procedure 0x406f80
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
	#Procedure 0x406fc0

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
	#Procedure 0x407070

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
	#Procedure 0x4070b0

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
	#Procedure 0x4070e0
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
	#Procedure 0x407120

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
	#Procedure 0x407200

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
	#Procedure 0x407250

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
	#Procedure 0x4072f0
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
	#Procedure 0x407340
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
	#Procedure 0x4073a0

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
	#Procedure 0x4073e0
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
	#Procedure 0x407420

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
	#Procedure 0x407460

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
	#Procedure 0x4074a0

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
	je	.label_457
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_455
.label_457:
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
	jne	.label_456
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
	jmp	.label_455
.label_456:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_454
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
	jmp	.label_455
.label_454:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_455:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075e0

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
	je	.label_462
	movabs	rsi, OFFSET FLAT:.str_8
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
	jmp	.label_460
.label_462:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_460:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_2
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
	ja	.label_461
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_459]]
	jmp	rcx
.label_672:
	jmp	.label_458
.label_673:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_458
.label_674:
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
	jmp	.label_458
.label_675:
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
	jmp	.label_458
.label_676:
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
	jmp	.label_458
.label_677:
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
	jmp	.label_458
.label_678:
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
	jmp	.label_458
.label_679:
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
	jmp	.label_458
.label_680:
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
	jmp	.label_458
.label_681:
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
	jmp	.label_458
.label_461:
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
.label_458:
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
	#Procedure 0x407e20
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
.label_463:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_464
	mov	rbp, rbp
	jmp	.label_465
.label_465:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_463
.label_464:
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
	#Procedure 0x407ed0

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
.label_470:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_466
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_472
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
	jmp	.label_471
.label_472:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_471:
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
.label_466:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_469
	mov	rsp, rsp
	jmp	.label_467
.label_469:
	jmp	.label_468
.label_468:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_470
.label_467:
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
	#Procedure 0x408030

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
	je	.label_473
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
.label_473:
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
	#Procedure 0x4081f0
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
	#Procedure 0x4082a0
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
	jae	.label_474
	mov	rbp, rbp
	call	xalloc_die
.label_474:
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
	#Procedure 0x408300

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
	jne	.label_475
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_475
	lea	rdi, [rdi]
	call	xalloc_die
.label_475:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408360
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
	jae	.label_476
	mov	rsp, rsp
	call	xalloc_die
.label_476:
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
	#Procedure 0x4083e0

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
	jne	.label_477
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_477
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_479
.label_477:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_478
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_478
	lea	rsi, [rsi]
	call	xalloc_die
.label_478:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_479:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408490

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
	jne	.label_480
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_482
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
.label_482:
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
	jae	.label_484
	call	xalloc_die
.label_484:
	lea	rsi, [rsi]
	jmp	.label_483
.label_480:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_481
	call	xalloc_die
.label_481:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_483:
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
	#Procedure 0x4085c0

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
	#Procedure 0x4085f0

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
	#Procedure 0x408630
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
	#Procedure 0x408680
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
	jb	.label_485
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_486
.label_485:
	lea	rsi, [rsi]
	call	xalloc_die
.label_486:
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
	#Procedure 0x4086f0

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
	#Procedure 0x408740
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
	#Procedure 0x4087a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x408800

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	memcoll
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	je	.label_487
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	collate_error
.label_487:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088a0

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_9
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], r8
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdi, rax
	mov	dword ptr [rbp - 0x2c], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	movabs	rdi, OFFSET FLAT:.str.2_3
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [exit_failure]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	call	quotearg_n_style_mem
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	memcoll0
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], r8d
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_488
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, rax
	mov	r8, qword ptr [rbp - 0x18]
	call	collate_error
.label_488:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a60

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0xe0], r8
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xa4]
	jg	.label_512
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 0x24
	mov	rsp, rsp
	jg	.label_512
	nop	
	jmp	.label_535
.label_512:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_535:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_550
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	jmp	.label_494
.label_550:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_494
.label_494:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x89], cl
.label_530:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_522
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x89], dl
	jmp	.label_530
.label_522:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x89]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_538
	mov	dword ptr [rbp - 0xc8], 4
	nop	
	jmp	.label_489
.label_538:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xa4]
	call	strtoul
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jne	.label_493
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	je	.label_504
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_504
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_504
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_523
.label_504:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_489
.label_523:
	jmp	.label_520
.label_493:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_534
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_529
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_489
.label_529:
	mov	dword ptr [rbp - 0x18], 1
.label_534:
	mov	rbp, rbp
	jmp	.label_520
.label_520:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_549
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0xc8], edx
	nop	
	jmp	.label_489
.label_549:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_497
	mov	dword ptr [rbp - 0x90], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_516
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0xc8], edx
	jmp	.label_489
.label_516:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_491
	lea	rdi, [rdi]
	jmp	.label_537
.label_537:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_491
	nop	
	jmp	.label_545
.label_545:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x74], eax
	nop	
	je	.label_491
	lea	rsi, [rsi]
	jmp	.label_554
.label_554:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_491
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_491
	jmp	.label_507
.label_507:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_491
	jmp	.label_513
.label_513:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jb	.label_491
	mov	rsp, rsp
	jmp	.label_503
.label_503:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_491
	lea	rsi, [rsi]
	jmp	.label_490
.label_490:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_491
	nop	
	jmp	.label_540
.label_540:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	je	.label_491
	jmp	.label_548
.label_548:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	jne	.label_536
	jmp	.label_491
.label_491:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_499
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
	nop	
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	je	.label_502
	mov	rsp, rsp
	jmp	.label_511
.label_511:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_502
	jmp	.label_519
.label_519:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xd0], eax
	jne	.label_521
	lea	rsi, [rsi]
	jmp	.label_526
.label_526:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_527
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_527:
	jmp	.label_521
.label_502:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_521:
	lea	rsi, [rsi]
	jmp	.label_499
.label_499:
	nop	
	jmp	.label_536
.label_536:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 4], edx
	nop	
	je	.label_552
	mov	rbp, rbp
	jmp	.label_495
.label_495:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	je	.label_501
	lea	rdi, [rdi]
	jmp	.label_525
.label_525:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	je	.label_506
	jmp	.label_508
.label_508:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_515
	lea	rsi, [rsi]
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x94], eax
	je	.label_524
	mov	rsp, rsp
	jmp	.label_528
.label_528:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_531
	jmp	.label_517
.label_517:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x28], eax
	je	.label_514
	jmp	.label_543
.label_543:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_544
	nop	
	jmp	.label_539
.label_539:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	je	.label_553
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_551
	jmp	.label_532
.label_532:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_505
	nop	
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_506
	mov	rbp, rbp
	jmp	.label_518
.label_518:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	je	.label_515
	lea	rsi, [rsi]
	jmp	.label_498
.label_498:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	je	.label_524
	nop	
	jmp	.label_533
.label_533:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_514
	mov	rbp, rbp
	jmp	.label_541
.label_541:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_542
	jmp	.label_547
.label_551:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	jmp	.label_500
.label_552:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_500
.label_505:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], 0
	jmp	.label_500
.label_501:
	lea	rdi, [rbp - 0x70]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_506:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_500
.label_515:
	lea	rdi, [rbp - 0x70]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_500
.label_524:
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_531:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_514:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_542:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_544:
	lea	rdi, [rbp - 0x70]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_553:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_500
.label_547:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 0xc8], edx
	mov	rbp, rbp
	jmp	.label_489
.label_500:
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	or	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_546
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_546:
	lea	rsi, [rsi]
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], edx
.label_489:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409430

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	movsxd	rdi, dword ptr [rbp - 4]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_555
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 0x14], 1
	lea	rsi, [rsi]
	jmp	.label_556
.label_555:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_556:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094b0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_558:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 4], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_557
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	call	bkm_scale
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_558
.label_557:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409520

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
	jge	.label_562
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_560
.label_562:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_559
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
	je	.label_561
.label_559:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_561
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_561:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_563
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
.label_563:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_560:
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
	#Procedure 0x409640

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
	je	.label_564
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_565
.label_564:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_566
.label_565:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_566:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096b0

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
	je	.label_567
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
.label_567:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409710

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	orig_freopen
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_570
	jmp	.label_569
.label_570:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_568
	mov	rdi, qword ptr [rbp - 0x38]
	call	fileno
	mov	dword ptr [rbp - 4], eax
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	call	dup2
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_573
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_573
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	nop	
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	mov	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 4]
	nop	
	je	.label_571
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dup2
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_574
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 1
.label_574:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 8], eax
.label_571:
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jne	.label_572
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	orig_freopen
	mov	qword ptr [rbp - 0x38], rax
.label_572:
	mov	rbp, rbp
	jmp	.label_573
.label_573:
	mov	rbp, rbp
	jmp	.label_568
.label_568:
	lea	rdi, [rdi]
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409870

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	freopen
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098b0

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
	jne	.label_575
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_575
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_575
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
	jne	.label_577
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_576
.label_577:
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
	jmp	.label_576
.label_575:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_576:
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
	#Procedure 0x4099c0

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
	jne	.label_578
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_578:
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
	ja	.label_579
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_579
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_579
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
	jmp	.label_580
.label_579:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_580:
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
	#Procedure 0x409ab0

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
	jne	.label_581
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_582
.label_581:
	mov	rbp, rbp
	jmp	.label_584
.label_584:
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
	jne	.label_583
	jmp	.label_585
.label_583:
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
	je	.label_584
.label_585:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_582:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ba0

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
	jne	.label_588
	test	byte ptr [rbp - 0x15], 1
	je	.label_587
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_588
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_587
.label_588:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_586
	call	__errno_location
	mov	dword ptr [rax], 0
.label_586:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_589
.label_587:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_589:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c80

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
	jne	.label_591
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_591:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_590
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_590:
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
	#Procedure 0x409d00

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x20]
	jne	.label_592
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	nop	
	cmp	eax, 0
	jne	.label_592
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jmp	.label_593
.label_592:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 1
	mov	rsi, rax
	call	strcoll_loop
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	r8b, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], r8b
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx], r8b
.label_593:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e20

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
.label_600:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	strcoll
	lea	rsi, [rsi]
	mov	cl, 1
	mov	dword ptr [rbp - 0x20], eax
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_594
	mov	rbp, rbp
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x19], cl
.label_594:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_598
	jmp	.label_595
.label_598:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x40], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_599
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_596
.label_599:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_597
	mov	dword ptr [rbp - 0x2c], 1
	mov	rbp, rbp
	jmp	.label_596
.label_597:
	mov	rsp, rsp
	jmp	.label_600
.label_595:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_596:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409f90

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	jne	.label_601
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_601
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	jmp	.label_602
.label_601:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	call	strcoll_loop
	mov	dword ptr [rbp - 0x24], eax
.label_602:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a030

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
	ja	.label_603
	jmp	.label_604
.label_604:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_605
.label_603:
	lea	rsi, [rsi]
	jmp	.label_605
.label_605:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a090
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
	jb	.label_606
	jmp	.label_608
.label_608:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_606
	nop	
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_610
	jmp	.label_606
.label_606:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_609
.label_610:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_609:
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
	#Procedure 0x40a120
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
	jb	.label_611
	nop	
	jmp	.label_612
.label_612:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_613
	lea	rdi, [rdi]
	jmp	.label_611
.label_611:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_614
.label_613:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_614:
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
	#Procedure 0x40a1a0
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
	ja	.label_615
	mov	rsp, rsp
	jmp	.label_617
.label_617:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_616
.label_615:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_616:
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
	#Procedure 0x40a1f0
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
	je	.label_618
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_618:
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
	#Procedure 0x40a240
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
	jb	.label_619
	nop	
	jmp	.label_620
.label_620:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_621
	lea	rsi, [rsi]
	jmp	.label_619
.label_619:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_622
.label_621:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_622:
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
	#Procedure 0x40a2b0
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
	ja	.label_624
	jmp	.label_625
.label_625:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_623
.label_624:
	mov	byte ptr [rbp - 5], 0
.label_623:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a300
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
	ja	.label_627
	lea	rsi, [rsi]
	jmp	.label_628
.label_628:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_626
.label_627:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_626:
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
	#Procedure 0x40a350
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
	ja	.label_629
	jmp	.label_630
.label_630:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_631
.label_629:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_631:
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
	#Procedure 0x40a3a0
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
	ja	.label_632
	jmp	.label_634
.label_634:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_633
.label_632:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_633:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3f0
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
	jb	.label_635
	jmp	.label_636
.label_636:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_635
	nop	
	jmp	.label_639
.label_639:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_635
	jmp	.label_637
.label_637:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_640
	mov	rsp, rsp
	jmp	.label_635
.label_635:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_638
.label_640:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_638:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4a0
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
	jb	.label_641
	mov	rbp, rbp
	jmp	.label_642
.label_642:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_644
	mov	rsp, rsp
	jmp	.label_641
.label_641:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_643
.label_644:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_643:
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
	#Procedure 0x40a510
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
	ja	.label_645
	jmp	.label_647
.label_647:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_646
.label_645:
	mov	byte ptr [rbp - 5], 0
.label_646:
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
	#Procedure 0x40a560
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
	jb	.label_648
	lea	rdi, [rdi]
	jmp	.label_652
.label_652:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_648
	jmp	.label_649
.label_649:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_651
	jmp	.label_648
.label_648:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_650
.label_651:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_650:
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
	#Procedure 0x40a5f0

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
	ja	.label_653
	jmp	.label_654
.label_654:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_655
.label_653:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_655:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section .text
	.align	16
	#Procedure 0x40a640
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
	ja	.label_656
	mov	rbp, rbp
	jmp	.label_657
.label_657:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_658
.label_656:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_658:
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
