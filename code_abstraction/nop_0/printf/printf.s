	.section	.text
	.align	16
	#Procedure 0x401650

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
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
	jmp	.label_7
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
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
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.10
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401800

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
	movabs	rdi, OFFSET FLAT:.str.30
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
	movabs	rsi, OFFSET FLAT:.str.32
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.35
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.36
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
	.align	16
	#Procedure 0x4019a0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.12
	movabs	rsi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x38], rax
	call	atexit
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	dword ptr [rbp - 0x3c], eax
	call	getenv
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [byte ptr [posixly_correct]],  cl
	cmp	dword ptr [rbp - 8], 2
	jne	.label_17
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:.str.15
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_22
	xor	edi, edi
	call	usage
.label_22:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:.str.16
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_18
	movabs	rsi, OFFSET FLAT:.str.10
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	mov	dword ptr [rbp - 4], 0
	jmp	.label_20
.label_18:
	jmp	.label_17
.label_17:
	mov	eax, 1
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_23
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:.str.19
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_23
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	qword ptr [rbp - 0x10], rcx
.label_23:
	cmp	dword ptr [rbp - 8], 1
	jg	.label_21
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_21:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 2
	mov	dword ptr [rbp - 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
.label_24:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	print_formatted
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	sub	esi, eax
	mov	dword ptr [rbp - 8], esi
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdi, eax
	shl	rdi, 3
	add	rdx, rdi
	mov	qword ptr [rbp - 0x10], rdx
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x1c], 0
	mov	byte ptr [rbp - 0x3d], cl
	jle	.label_16
	cmp	dword ptr [rbp - 8], 0
	setg	al
	mov	byte ptr [rbp - 0x3d], al
.label_16:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_24
	cmp	dword ptr [rbp - 8], 0
	jle	.label_19
	movabs	rdi, OFFSET FLAT:.str.21
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_19:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	mov	dword ptr [rbp - 4], eax
.label_20:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c20

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x200
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x1c], esi
	mov	dword ptr [rbp - 0x40], 0
	mov	dword ptr [rbp - 0x48], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdx
.label_32:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_45
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x168], ecx
	mov	dword ptr [rbp - 0x16c], edx
	je	.label_47
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x168]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x170], eax
	je	.label_57
	jmp	.label_63
.label_47:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x41], 0
	mov	byte ptr [rbp - 0x39], 0
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x25
	jne	.label_64
	mov	edi, 0x25
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_33
.label_64:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x62
	jne	.label_74
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_70
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	print_esc_string
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
.label_70:
	jmp	.label_33
.label_74:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x71
	jne	.label_36
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_38
	mov	edi, 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	qword ptr [rbp - 0x18], rsi
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	mov	dword ptr [rbp - 0x178], eax
.label_38:
	jmp	.label_33
.label_36:
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	lea	rdi, [rbp - 0x150]
	call	memset
	mov	byte ptr [rbp - 0xf8], 1
	mov	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0xdb], 1
	mov	byte ptr [rbp - 0xdd], 1
	mov	byte ptr [rbp - 0xe1], 1
	mov	byte ptr [rbp - 0xe7], 1
	mov	byte ptr [rbp - 0x109], 1
	mov	byte ptr [rbp - 0xe9], 1
	mov	byte ptr [rbp - 0x10a], 1
	mov	byte ptr [rbp - 0xea], 1
	mov	byte ptr [rbp - 0x10b], 1
	mov	byte ptr [rbp - 0xeb], 1
	mov	byte ptr [rbp - 0xec], 1
	mov	byte ptr [rbp - 0xed], 1
	mov	byte ptr [rbp - 0x10f], 1
	mov	byte ptr [rbp - 0xef], 1
.label_44:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x20
	mov	dword ptr [rbp - 0x17c], ecx
	mov	dword ptr [rbp - 0x180], edx
	je	.label_25
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x17c]
	sub	eax, 0x23
	mov	dword ptr [rbp - 0x184], eax
	je	.label_37
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x17c]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x188], eax
	je	.label_40
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x17c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x18c], eax
	je	.label_25
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x17c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x190], eax
	je	.label_25
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x17c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x194], eax
	je	.label_60
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x17c]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x198], eax
	jne	.label_68
	jmp	.label_40
.label_40:
	mov	byte ptr [rbp - 0xf8], 0
	mov	byte ptr [rbp - 0xd8], 0
	mov	byte ptr [rbp - 0xdd], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	byte ptr [rbp - 0x10b], 0
	mov	byte ptr [rbp - 0xeb], 0
	mov	byte ptr [rbp - 0xed], 0
	mov	byte ptr [rbp - 0x10f], 0
	mov	byte ptr [rbp - 0xef], 0
	jmp	.label_26
.label_25:
	jmp	.label_26
.label_37:
	mov	byte ptr [rbp - 0xdb], 0
	mov	byte ptr [rbp - 0xdd], 0
	mov	byte ptr [rbp - 0xe7], 0
	mov	byte ptr [rbp - 0xec], 0
	mov	byte ptr [rbp - 0xed], 0
	jmp	.label_26
.label_60:
	mov	byte ptr [rbp - 0xdd], 0
	mov	byte ptr [rbp - 0xed], 0
	jmp	.label_26
.label_68:
	jmp	.label_41
.label_26:
	jmp	.label_42
.label_42:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_44
.label_41:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2a
	jne	.label_50
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_55
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	vstrtoimax
	mov	rdi, -0x80000000
	mov	qword ptr [rbp - 0x158], rax
	cmp	rdi, qword ptr [rbp - 0x158]
	jg	.label_69
	cmp	qword ptr [rbp - 0x158], 0x7fffffff
	jg	.label_69
	mov	rax, qword ptr [rbp - 0x158]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_73
.label_69:
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_73:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_35
.label_55:
	mov	dword ptr [rbp - 0x40], 0
.label_35:
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_28
.label_50:
	jmp	.label_43
.label_43:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_75
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_43
.label_75:
	jmp	.label_28
.label_28:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_48
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	byte ptr [rbp - 0xed], 0
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2a
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_71
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	vstrtoimax
	mov	qword ptr [rbp - 0x160], rax
	cmp	qword ptr [rbp - 0x160], 0
	jge	.label_76
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_27
.label_76:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x160]
	jge	.label_30
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_30:
	mov	rax, qword ptr [rbp - 0x160]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x48], ecx
	jmp	.label_27
.label_27:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_52
.label_71:
	mov	dword ptr [rbp - 0x48], 0
.label_52:
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_62
.label_59:
	jmp	.label_65
.label_65:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_66
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_65
.label_66:
	jmp	.label_62
.label_62:
	jmp	.label_48
.label_48:
	jmp	.label_56
.label_56:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x6c
	mov	byte ptr [rbp - 0x1a9], al
	je	.label_29
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x4c
	mov	byte ptr [rbp - 0x1a9], al
	je	.label_29
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x68
	mov	byte ptr [rbp - 0x1a9], al
	je	.label_29
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x6a
	mov	byte ptr [rbp - 0x1a9], al
	je	.label_29
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x74
	mov	byte ptr [rbp - 0x1a9], al
	je	.label_29
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7a
	sete	dl
	mov	byte ptr [rbp - 0x1a9], dl
.label_29:
	mov	al, byte ptr [rbp - 0x1a9]
	test	al, 1
	jne	.label_49
	jmp	.label_53
.label_49:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_56
.label_53:
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x161], cl
	movzx	edx, byte ptr [rbp - 0x161]
	mov	eax, edx
	cmp	byte ptr [rbp + rax - 0x150], 0
	jne	.label_61
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, rdx
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	ecx, r8d
	mov	r8, qword ptr [rbp - 0x1b8]
	mov	al, 0
	call	error
.label_61:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	dl, byte ptr [rbp - 0x39]
	mov	r8d, dword ptr [rbp - 0x40]
	mov	r9b, byte ptr [rbp - 0x41]
	mov	r10d, dword ptr [rbp - 0x48]
	cmp	dword ptr [rbp - 0xc], 0
	mov	qword ptr [rbp - 0x1c0], rdi
	mov	qword ptr [rbp - 0x1c8], rsi
	mov	byte ptr [rbp - 0x1c9], cl
	mov	byte ptr [rbp - 0x1ca], dl
	mov	dword ptr [rbp - 0x1d0], r8d
	mov	byte ptr [rbp - 0x1d1], r9b
	mov	dword ptr [rbp - 0x1d8], r10d
	jg	.label_77
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_72
.label_77:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -1
	mov	dword ptr [rbp - 0xc], eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x1e0], rcx
.label_72:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, rsp
	mov	qword ptr [rcx + 8], rax
	mov	edx, dword ptr [rbp - 0x1d8]
	mov	dword ptr [rcx], edx
	mov	sil, byte ptr [rbp - 0x1c9]
	movsx	edx, sil
	mov	dil, byte ptr [rbp - 0x1ca]
	and	dil, 1
	movzx	ecx, dil
	mov	dil, byte ptr [rbp - 0x1d1]
	and	dil, 1
	movzx	r9d, dil
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rsi, qword ptr [rbp - 0x1c8]
	mov	r8d, dword ptr [rbp - 0x1d0]
	call	print_direc
	jmp	.label_33
.label_57:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_esc
	mov	rdi, qword ptr [rbp - 0x28]
	movsxd	rcx, eax
	add	rdi, rcx
	mov	qword ptr [rbp - 0x28], rdi
	jmp	.label_33
.label_63:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1e4], eax
.label_33:
	jmp	.label_31
.label_31:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_32
.label_45:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x200
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_82:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_81
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	jne	.label_79
	mov	esi, 1
	mov	rdi, qword ptr [rbp - 8]
	call	print_esc
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rcx, eax
	add	rdi, rcx
	mov	qword ptr [rbp - 8], rdi
	jmp	.label_80
.label_79:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
.label_80:
	jmp	.label_78
.label_78:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_82
.label_81:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_83
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_84
.label_83:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_84
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	mov	eax, esi
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	esi, 0
	je	.label_86
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_86
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
.label_86:
	jmp	.label_85
.label_84:
	call	__errno_location
	lea	rsi, [rbp - 0x10]
	xor	edx, edx
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strtoimax
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_85:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl print_direc
	.type print_direc, @function
print_direc:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x128
	mov	al, r9b
	mov	r10b, cl
	mov	r11b, dl
	mov	rbx, qword ptr [rbp + 0x18]
	mov	ecx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], r11b
	and	r10b, 1
	mov	byte ptr [rbp - 0x1a], r10b
	mov	dword ptr [rbp - 0x20], r8d
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	dword ptr [rbp - 0x28], ecx
	mov	qword ptr [rbp - 0x30], rbx
	movsx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	sub	edx, 0x41
	mov	dword ptr [rbp - 0x74], ecx
	mov	dword ptr [rbp - 0x78], edx
	je	.label_91
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x74]
	add	eax, -0x45
	sub	eax, 3
	mov	dword ptr [rbp - 0x7c], eax
	jb	.label_91
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x80], eax
	je	.label_98
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	je	.label_91
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x88], eax
	je	.label_98
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x74]
	add	eax, -0x65
	sub	eax, 3
	mov	dword ptr [rbp - 0x8c], eax
	jb	.label_91
	jmp	.label_117
.label_117:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x90], eax
	je	.label_98
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x94], eax
	je	.label_98
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x98], eax
	je	.label_98
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x9c], eax
	jne	.label_130
	jmp	.label_98
.label_98:
	movabs	rax, OFFSET FLAT:.str.44
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 1
	jmp	.label_137
.label_91:
	movabs	rax, OFFSET FLAT:.str.45
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 1
	jmp	.label_137
.label_130:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 0
.label_137:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rax + rcx + 2]
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x40], rax
	mov	r8b, byte ptr [rbp - 0x19]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], r8b
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax], 0
	movsx	r9d, byte ptr [rbp - 0x19]
	mov	r10d, r9d
	sub	r10d, 0x41
	mov	dword ptr [rbp - 0xa0], r9d
	mov	dword ptr [rbp - 0xa4], r10d
	je	.label_111
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0xa0]
	add	eax, -0x45
	sub	eax, 3
	mov	dword ptr [rbp - 0xa8], eax
	jb	.label_111
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0xac], eax
	je	.label_110
	jmp	.label_133
.label_133:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_111
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_140
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_104
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0xa0]
	add	eax, -0x65
	sub	eax, 3
	mov	dword ptr [rbp - 0xbc], eax
	jb	.label_111
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_104
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_110
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_116
	jmp	.label_120
.label_120:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_110
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_110
	jmp	.label_88
.label_104:
	mov	rdi, qword ptr [rbp - 0x30]
	call	vstrtoimax
	mov	qword ptr [rbp - 0x58], rax
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_131
	test	byte ptr [rbp - 0x21], 1
	jne	.label_142
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_141
.label_142:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xd8], eax
.label_141:
	jmp	.label_93
.label_131:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_95
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_102
.label_95:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xe0], eax
.label_102:
	jmp	.label_93
.label_93:
	jmp	.label_88
.label_110:
	mov	rdi, qword ptr [rbp - 0x30]
	call	vstrtoumax
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_114
	test	byte ptr [rbp - 0x21], 1
	jne	.label_118
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_123
.label_118:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xe8], eax
.label_123:
	jmp	.label_127
.label_114:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_128
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_135
.label_128:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xf0], eax
.label_135:
	jmp	.label_127
.label_127:
	jmp	.label_88
.label_111:
	mov	rdi, qword ptr [rbp - 0x30]
	call	vstrtold
	fstp	xword ptr [rbp - 0x70]
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_92
	test	byte ptr [rbp - 0x21], 1
	jne	.label_97
	mov	rdi, qword ptr [rbp - 0x38]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_105
.label_97:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	dword ptr [rbp - 0xf8], eax
.label_105:
	jmp	.label_113
.label_92:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_115
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_122
.label_115:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	call	xprintf
	mov	dword ptr [rbp - 0x100], eax
.label_122:
	jmp	.label_113
.label_113:
	jmp	.label_88
.label_140:
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_132
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x104], eax
	jmp	.label_139
.label_132:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rax]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x108], eax
.label_139:
	jmp	.label_88
.label_116:
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_94
	test	byte ptr [rbp - 0x21], 1
	jne	.label_108
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_106
.label_108:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x110], eax
.label_106:
	jmp	.label_89
.label_94:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_100
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_136
.label_100:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x118], eax
.label_136:
	jmp	.label_89
.label_89:
	jmp	.label_88
.label_88:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	add	rsp, 0x128
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rdi]
	cmp	esi, 0x78
	jne	.label_159
	mov	dword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_171:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 2
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_156
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x38], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x29], dl
.label_156:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_163
	jmp	.label_167
.label_163:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x3c], eax
	jl	.label_168
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_168
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_144
.label_168:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_149
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_149
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x44], ecx
	jmp	.label_157
.label_149:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x44], ecx
.label_157:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x40], eax
.label_144:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_171
.label_167:
	cmp	dword ptr [rbp - 0x20], 0
	jne	.label_146
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_146:
	mov	edi, dword ptr [rbp - 0x1c]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_160
.label_159:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_161
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jg	.label_161
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 0x20], 0
	test	byte ptr [rbp - 9], 1
	mov	byte ptr [rbp - 0x49], cl
	je	.label_170
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	sete	dl
	mov	byte ptr [rbp - 0x49], dl
.label_170:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsxd	rsi, ecx
	add	rdx, rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_175:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 3
	mov	byte ptr [rbp - 0x4a], cl
	jge	.label_151
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x4b], cl
	jl	.label_154
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	setle	dl
	mov	byte ptr [rbp - 0x4b], dl
.label_154:
	mov	al, byte ptr [rbp - 0x4b]
	mov	byte ptr [rbp - 0x4a], al
.label_151:
	mov	al, byte ptr [rbp - 0x4a]
	test	al, 1
	jne	.label_169
	jmp	.label_173
.label_169:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_175
.label_173:
	mov	edi, dword ptr [rbp - 0x1c]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_152
.label_161:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_153
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rax, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_153
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edi, byte ptr [rax]
	call	print_esc_char
	jmp	.label_155
.label_153:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	je	.label_177
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x55
	jne	.label_147
.label_177:
	mov	eax, 8
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rdx]
	mov	byte ptr [rbp - 0x21], sil
	mov	dword ptr [rbp - 0x28], 0
	movsx	edi, byte ptr [rbp - 0x21]
	cmp	edi, 0x75
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x20], eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
.label_165:
	cmp	dword ptr [rbp - 0x20], 0
	jle	.label_164
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x58], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	jne	.label_176
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_176:
	mov	eax, dword ptr [rbp - 0x28]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x5c], eax
	jl	.label_150
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_150
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_166
.label_150:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_174
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_174
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_148
.label_174:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x64], ecx
.label_148:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_166:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, -1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_165
.label_164:
	cmp	dword ptr [rbp - 0x28], 0x9f
	ja	.label_172
	cmp	dword ptr [rbp - 0x28], 0x24
	je	.label_172
	cmp	dword ptr [rbp - 0x28], 0x40
	je	.label_172
	cmp	dword ptr [rbp - 0x28], 0x60
	jne	.label_162
.label_172:
	cmp	dword ptr [rbp - 0x28], 0xd800
	jb	.label_143
	cmp	dword ptr [rbp - 0x28], 0xdfff
	ja	.label_143
.label_162:
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, 8
	mov	edx, 4
	movsx	r8d, byte ptr [rbp - 0x21]
	movsx	r9d, byte ptr [rbp - 0x21]
	cmp	r9d, 0x75
	cmove	ecx, edx
	mov	r9d, dword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	dword ptr [rbp - 0x68], ecx
	mov	ecx, r8d
	mov	r8d, dword ptr [rbp - 0x68]
	mov	al, 0
	call	error
.label_143:
	xor	edx, edx
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	esi, dword ptr [rbp - 0x28]
	call	print_unicode_char
	jmp	.label_158
.label_147:
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	byte ptr [rcx], 0
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_145
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x70], eax
.label_145:
	jmp	.label_158
.label_158:
	jmp	.label_155
.label_155:
	jmp	.label_152
.label_152:
	jmp	.label_160
.label_160:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	sub	rax, 1
	mov	edx, eax
	mov	eax, edx
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030f0

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_178
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	jmp	.label_181
.label_178:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_180
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_182
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_179
.label_182:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_179:
	mov	dword ptr [dword ptr [exit_status]],  1
.label_180:
	jmp	.label_181
.label_181:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031e0

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_183
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_184
.label_183:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_184
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	mov	eax, esi
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	esi, 0
	je	.label_186
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_186
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
.label_186:
	jmp	.label_185
.label_184:
	call	__errno_location
	lea	rsi, [rbp - 0x10]
	xor	edx, edx
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strtoumax
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_185:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_190
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_188
.label_190:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_188
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 8], rcx
	movzx	edx, byte ptr [rax + 1]
	mov	sil, dl
	mov	byte ptr [rbp - 0x21], sil
	mov	dword ptr [rbp - 0x28], edx
	fild	dword ptr [rbp - 0x28]
	fstp	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	je	.label_189
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_189
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
.label_189:
	jmp	.label_187
.label_188:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x10]
	call	cl_strtold
	fstp	xword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_187:
	fld	xword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	add	edi, -0x61
	mov	ecx, edi
	sub	edi, 0x15
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_192
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_193]]
	jmp	rcx
.label_660:
	mov	edi, 7
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_191
.label_661:
	mov	edi, 8
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_191
.label_662:
	xor	edi, edi
	call	exit
.label_663:
	mov	edi, 0x1b
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_191
.label_664:
	mov	edi, 0xc
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_191
.label_665:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_191
.label_666:
	mov	edi, 0xd
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_191
.label_667:
	mov	edi, 9
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_191
.label_668:
	mov	edi, 0xb
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_191
.label_192:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
.label_191:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034b0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x18]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	byte ptr [rsi], 0
	je	.label_195
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x40]
	call	c_strtold
	fstp	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_197
	fld	xword ptr [rbp - 0x50]
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_194
.label_197:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rax], ecx
.label_194:
	jmp	.label_195
.label_195:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_196
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_196:
	fld	xword ptr [rbp - 0x30]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403550
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
	.align	16
	#Procedure 0x403570
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
	.align	16
	#Procedure 0x403590

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_199
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_201
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_199
.label_201:
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_202
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
	jmp	.label_198
.label_202:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_198:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_199:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_200
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_200:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_203
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_203:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_206
.label_204:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_206:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_205
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_205
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_207
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_207:
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037a0
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
	je	.label_208
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_209
.label_208:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_209
.label_209:
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
	.align	16
	#Procedure 0x403820
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_210
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_211
.label_210:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403860
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
	je	.label_212
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_213
.label_212:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038b0

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
	je	.label_214
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_215
.label_214:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_215
.label_215:
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
	.align	16
	#Procedure 0x403960
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_216
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_216:
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
	.align	16
	#Procedure 0x4039a0

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
	jne	.label_217
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_217:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_219
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_218
.label_219:
	call	abort
.label_218:
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
	.align	16
	#Procedure 0x403a10
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
	je	.label_220
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_221
.label_220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_221
.label_221:
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
	.align	16
	#Procedure 0x403ae0

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
.label_297:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_396
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_403]]
	jmp	rcx
.label_653:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_652:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_410
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_414
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_410
.label_410:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_223
.label_654:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_223
.label_655:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_227
	movabs	rdi, OFFSET FLAT:.str.11
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_227:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_240
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_263:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_244
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_263
.label_244:
	jmp	.label_240
.label_240:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_223
.label_650:
	mov	byte ptr [rbp - 0x79], 1
.label_649:
	mov	byte ptr [rbp - 0x7b], 1
.label_651:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_280
	mov	byte ptr [rbp - 0x79], 1
.label_280:
	jmp	.label_282
.label_282:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_283
	jmp	.label_337
.label_337:
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
	jmp	.label_283
.label_283:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_223
.label_648:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_223
.label_396:
	call	abort
.label_223:
	mov	qword ptr [rbp - 0x58], 0
.label_260:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_302
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_306
.label_302:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_306:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_319
	jmp	.label_360
.label_319:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_327
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_327
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_327
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_336
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_336
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_348
.label_336:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_348:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_327
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_327
	test	byte ptr [rbp - 0x7b], 1
	je	.label_359
	jmp	.label_266
.label_359:
	mov	byte ptr [rbp - 0x81], 1
.label_327:
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
	ja	.label_363
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_371]]
	jmp	rcx
.label_609:
	test	byte ptr [rbp - 0x79], 1
	je	.label_372
	jmp	.label_295
.label_295:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_301
	jmp	.label_266
.label_301:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_325
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_325
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_382
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_385
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_325:
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_412
.label_412:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_243
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_243
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_243
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_243
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_236
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_236:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_243
.label_243:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_250
.label_372:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_253
	jmp	.label_257
.label_253:
	jmp	.label_250
.label_250:
	jmp	.label_265
.label_620:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_259
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_270
	jmp	.label_274
.label_259:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_275
	jmp	.label_266
.label_275:
	jmp	.label_279
.label_270:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_281
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_281
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_281
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_289
	jmp	.label_294
.label_294:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_289
	jmp	.label_299
.label_299:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_289
	jmp	.label_307
.label_307:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_289
	jmp	.label_313
.label_313:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_314
	jmp	.label_289
.label_289:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_321
	jmp	.label_266
.label_321:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_326:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_344
.label_344:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_247
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_355
.label_314:
	jmp	.label_355
.label_355:
	jmp	.label_281
.label_281:
	jmp	.label_279
.label_274:
	jmp	.label_279
.label_279:
	jmp	.label_265
.label_610:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_364
.label_611:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_364
.label_615:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_364
.label_613:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_369
.label_616:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_369
.label_612:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_369
.label_614:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_364
.label_621:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_374
	test	byte ptr [rbp - 0x7b], 1
	je	.label_377
	jmp	.label_266
.label_377:
	jmp	.label_357
.label_374:
	test	byte ptr [rbp - 0x79], 1
	je	.label_356
	test	byte ptr [rbp - 0x7b], 1
	je	.label_356
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_356
	jmp	.label_357
.label_356:
	jmp	.label_369
.label_369:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_384
	test	byte ptr [rbp - 0x7b], 1
	je	.label_384
	jmp	.label_266
.label_384:
	jmp	.label_364
.label_364:
	test	byte ptr [rbp - 0x79], 1
	je	.label_389
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_376
.label_389:
	jmp	.label_265
.label_622:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_393
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_286
	jmp	.label_400
.label_393:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_286
.label_400:
	jmp	.label_265
.label_286:
	jmp	.label_402
.label_402:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_405
	jmp	.label_265
.label_405:
	jmp	.label_408
.label_408:
	mov	byte ptr [rbp - 0x83], 1
.label_617:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_411
	test	byte ptr [rbp - 0x7b], 1
	je	.label_411
	jmp	.label_266
.label_411:
	jmp	.label_265
.label_619:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_416
	test	byte ptr [rbp - 0x7b], 1
	je	.label_419
	jmp	.label_266
.label_419:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_272
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_272
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_272:
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_239
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_239:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_254
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_254:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_416:
	jmp	.label_265
.label_618:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_265
.label_363:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_269
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
	jmp	.label_278
.label_269:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_290
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_290:
	jmp	.label_296
.label_296:
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
	jne	.label_310
	jmp	.label_312
.label_310:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_318
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_312
.label_318:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_352
	mov	byte ptr [rbp - 0x91], 0
.label_345:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_328
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_328:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_341
	jmp	.label_343
.label_341:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_345
.label_343:
	jmp	.label_312
.label_352:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_351
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_351
	mov	qword ptr [rbp - 0xb8], 1
.label_379:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_354
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
	jb	.label_222
	jmp	.label_366
.label_366:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_222
	jmp	.label_256
.label_256:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_222
	jmp	.label_373
.label_373:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_375
	jmp	.label_222
.label_222:
	jmp	.label_266
.label_375:
	jmp	.label_335
.label_335:
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_379
.label_354:
	jmp	.label_351
.label_351:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_386
	mov	byte ptr [rbp - 0x91], 0
.label_386:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_388
.label_388:
	jmp	.label_391
.label_391:
	jmp	.label_392
.label_392:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_296
.label_312:
	jmp	.label_278
.label_278:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_401
	test	byte ptr [rbp - 0x79], 1
	je	.label_350
	test	byte ptr [rbp - 0x91], 1
	jne	.label_350
.label_401:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_330:
	test	byte ptr [rbp - 0x79], 1
	je	.label_417
	test	byte ptr [rbp - 0x91], 1
	jne	.label_417
	jmp	.label_397
.label_397:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_420
	jmp	.label_266
.label_420:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_224
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_224
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_231
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_238
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_245
.label_245:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_252
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_224:
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_264
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_264:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_248
.label_248:
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_277
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_287
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_287:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_292
.label_417:
	test	byte ptr [rbp - 0x81], 1
	je	.label_298
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_303
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_298:
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_315
	jmp	.label_320
.label_315:
	jmp	.label_322
.label_322:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_324
	test	byte ptr [rbp - 0x82], 1
	jne	.label_324
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_324:
	jmp	.label_346
.label_346:
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_349:
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
	jmp	.label_330
.label_320:
	jmp	.label_357
.label_350:
	jmp	.label_265
.label_265:
	test	byte ptr [rbp - 0x79], 1
	je	.label_361
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_362
.label_361:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_365
.label_362:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_365
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
	jne	.label_367
.label_365:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_367
	jmp	.label_357
.label_367:
	jmp	.label_376
.label_376:
	jmp	.label_317
.label_317:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_378
	jmp	.label_266
.label_378:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_358
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_358
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_358:
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_415
.label_415:
	jmp	.label_357
.label_357:
	jmp	.label_381
.label_381:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_418
	test	byte ptr [rbp - 0x82], 1
	jne	.label_418
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_418:
	jmp	.label_241
.label_241:
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_342
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_370
	mov	byte ptr [rbp - 0x7e], 0
.label_370:
	jmp	.label_257
.label_257:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_260
.label_360:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_267
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_267
	test	byte ptr [rbp - 0x7b], 1
	je	.label_267
	jmp	.label_266
.label_267:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_273
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_273
	test	byte ptr [rbp - 0x7d], 1
	je	.label_273
	test	byte ptr [rbp - 0x7e], 1
	je	.label_308
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
	jmp	.label_291
.label_308:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_293
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_293
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_297
.label_293:
	jmp	.label_237
.label_237:
	jmp	.label_273
.label_273:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_305
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_305
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_311
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_316:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_309
.label_311:
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_291
.label_266:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_340
	test	byte ptr [rbp - 0x79], 1
	je	.label_340
	mov	dword ptr [rbp - 0x34], 4
.label_340:
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
.label_291:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e80
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
	.align	16
	#Procedure 0x404ec0

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
	je	.label_423
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_424
.label_423:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_424
.label_424:
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
	je	.label_425
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405020
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_429:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_427
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_429
.label_427:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_430
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_428]],  rax
.label_430:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_426
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_426:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405100

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
	.align	16
	#Procedure 0x405140

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
	jge	.label_433
	call	abort
.label_433:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_438
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_432
	call	xalloc_die
.label_432:
	test	byte ptr [rbp - 0x31], 1
	je	.label_437
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_431
.label_437:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_431:
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
	je	.label_436
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_428]]
	mov	qword ptr [rax + 8], rcx
.label_436:
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
.label_438:
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
	ja	.label_434
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_435
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_435:
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
.label_434:
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
	.align	16
	#Procedure 0x4053c0

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
	.align	16
	#Procedure 0x405400
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
	.align	16
	#Procedure 0x405420
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
	.align	16
	#Procedure 0x405450

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
	.align	16
	#Procedure 0x405490

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
	jne	.label_439
	call	abort
.label_439:
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
	.align	16
	#Procedure 0x405500

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
	.align	16
	#Procedure 0x405540

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
	.align	16
	#Procedure 0x405570
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
	.align	16
	#Procedure 0x4055a0

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
	.align	16
	#Procedure 0x405620

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
	.align	16
	#Procedure 0x405650

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
	.align	16
	#Procedure 0x405670
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
	.align	16
	#Procedure 0x4056a0
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
	.align	16
	#Procedure 0x405750

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
	.align	16
	#Procedure 0x405790

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
	.align	16
	#Procedure 0x405810
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
	.align	16
	#Procedure 0x405840
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
	.align	16
	#Procedure 0x405880

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
	.align	16
	#Procedure 0x4058c0
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
	.align	16
	#Procedure 0x4058f0

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
	.align	16
	#Procedure 0x405920

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
	.align	16
	#Procedure 0x405940

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
	je	.label_442
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_440
.label_442:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_441
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_440
.label_441:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_443
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_440
.label_443:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_440:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a40

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	dword ptr [dword ptr [unicode_to_mb.initialized]],  0
	jne	.label_444
	call	locale_charset
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	ecx, OFFSET FLAT:.str_4
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  eax
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_445
	movabs	rsi, OFFSET FLAT:.str_4
	mov	rdi, qword ptr [rbp - 0x40]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
	cmp	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rsi
	jne	.label_453
	movabs	rdi, OFFSET FLAT:.str.1_2
	movabs	rsi, OFFSET FLAT:.str_4
	call	iconv_open
	mov	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
.label_453:
	jmp	.label_445
.label_445:
	mov	dword ptr [dword ptr [unicode_to_mb.initialized]],  1
.label_444:
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_448
	mov	rax, -1
	cmp	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
	jne	.label_450
	movabs	rsi, OFFSET FLAT:.str.2_1
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_447
.label_450:
	jmp	.label_448
.label_448:
	mov	edx, 6
	lea	rdi, [rbp - 0x2e]
	mov	esi, dword ptr [rbp - 0xc]
	call	u8_uctomb
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_446
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_447
.label_446:
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_449
	lea	rsi, [rbp - 0x68]
	lea	rdx, [rbp - 0x70]
	lea	rcx, [rbp - 0x78]
	lea	r8, [rbp - 0x80]
	lea	rax, [rbp - 0x60]
	lea	rdi, [rbp - 0x2e]
	mov	qword ptr [rbp - 0x68], rdi
	movsxd	rdi, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x80], 0x19
	mov	rdi,  qword ptr [word ptr [unicode_to_mb.utf8_to_local]]
	call	iconv
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x70], 0
	ja	.label_451
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_452
.label_451:
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_447
.label_452:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x78]
	lea	r8, [rbp - 0x80]
	mov	rdi,  qword ptr [word ptr [unicode_to_mb.utf8_to_local]]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x90]
	call	iconv
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_454
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_447
.label_454:
	lea	rax, [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	sub	rdx, rax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_447
.label_449:
	lea	rdi, [rbp - 0x2e]
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_447:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd0

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	call	fwrite
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rcx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d30

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:fwrite_success_callback
	movabs	rcx, OFFSET FLAT:fallback_failure_callback
	movabs	r8, OFFSET FLAT:exit_failure_callback
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	edi, dword ptr [rbp - 0xc]
	cmp	dword ptr [rbp - 0x10], 0
	cmovne	rcx, r8
	mov	r8, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	rdx, rcx
	mov	rcx, r8
	call	unicode_to_mb
	mov	qword ptr [rbp - 0x18], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d90

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_455
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_456
.label_455:
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	gettext
	mov	ecx, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x24], ecx
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	r8, rax
	mov	al, 0
	call	error
.label_456:
	mov	rax, -1
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e20

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	dword ptr [rbp - 4], 0x10000
	jae	.label_457
	movabs	rsi, OFFSET FLAT:.str.6_0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_458
.label_457:
	movabs	rsi, OFFSET FLAT:.str.7_0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x28], eax
.label_458:
	mov	rax, -1
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e90

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	cmp	dword ptr [rbp - 0x14], 0x80
	jae	.label_464
	cmp	dword ptr [rbp - 0x18], 0
	jle	.label_474
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx], cl
	mov	dword ptr [rbp - 4], 1
	jmp	.label_461
.label_474:
	jmp	.label_462
.label_464:
	cmp	dword ptr [rbp - 0x14], 0x800
	jae	.label_471
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_467
.label_471:
	cmp	dword ptr [rbp - 0x14], 0x10000
	jae	.label_473
	cmp	dword ptr [rbp - 0x14], 0xd800
	jb	.label_476
	cmp	dword ptr [rbp - 0x14], 0xe000
	jb	.label_468
.label_476:
	mov	dword ptr [rbp - 0x1c], 3
	jmp	.label_465
.label_468:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_461
.label_465:
	jmp	.label_463
.label_473:
	cmp	dword ptr [rbp - 0x14], 0x110000
	jae	.label_475
	mov	dword ptr [rbp - 0x1c], 4
	jmp	.label_477
.label_475:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_461
.label_477:
	jmp	.label_463
.label_463:
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0x1c]
	jl	.label_469
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x20], eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_472
	jmp	.label_478
.label_478:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 3
	mov	dword ptr [rbp - 0x28], eax
	je	.label_460
	jmp	.label_459
.label_459:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 4
	mov	dword ptr [rbp - 0x2c], eax
	jne	.label_466
	jmp	.label_470
.label_470:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x3f
	or	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 3], cl
	mov	eax, dword ptr [rbp - 0x14]
	shr	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, 0x10000
	mov	dword ptr [rbp - 0x14], eax
.label_460:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x3f
	or	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 2], cl
	mov	eax, dword ptr [rbp - 0x14]
	shr	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, 0x800
	mov	dword ptr [rbp - 0x14], eax
.label_472:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x3f
	or	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 1], cl
	mov	eax, dword ptr [rbp - 0x14]
	shr	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, 0xc0
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx], cl
.label_466:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_461
.label_469:
	jmp	.label_462
.label_462:
	mov	dword ptr [rbp - 4], 0xfffffffe
.label_461:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406050

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
	je	.label_482
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_481
.label_482:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_481:
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_480
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_483]]
	jmp	rcx
.label_673:
	jmp	.label_479
.label_674:
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_479
.label_675:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_479
.label_676:
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_479
.label_677:
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_479
.label_678:
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
	jmp	.label_479
.label_679:
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
	jmp	.label_479
.label_680:
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
	jmp	.label_479
.label_681:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_479
.label_682:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_479
.label_480:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_479:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406610
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
.label_486:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_484
	jmp	.label_485
.label_485:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_486
.label_484:
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
	.align	16
	#Procedure 0x406680

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
.label_490:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_492
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_491
.label_492:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_491:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_487:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_493
	jmp	.label_488
.label_493:
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_490
.label_488:
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
	.align	16
	#Procedure 0x406790

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
	je	.label_494
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
.label_494:
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
	.align	16
	#Procedure 0x406900
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
	movabs	rdi, OFFSET FLAT:.str.16_1
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
	.align	16
	#Procedure 0x406990
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
	jae	.label_495
	call	xalloc_die
.label_495:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069e0

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
	jne	.label_496
	cmp	qword ptr [rbp - 8], 0
	je	.label_496
	call	xalloc_die
.label_496:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a20
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
	jae	.label_497
	call	xalloc_die
.label_497:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a70

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_498
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_498
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_500
.label_498:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_499
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_499
	call	xalloc_die
.label_499:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_500:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406af0

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
	jne	.label_501
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_504
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
.label_504:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_502
	call	xalloc_die
.label_502:
	jmp	.label_503
.label_501:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_505
	call	xalloc_die
.label_505:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_503:
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
	.align	16
	#Procedure 0x406be0

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
	.align	16
	#Procedure 0x406c00
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
	.align	16
	#Procedure 0x406c30
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
	.align	16
	#Procedure 0x406c70
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
	jb	.label_506
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_507
.label_506:
	call	xalloc_die
.label_507:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cd0

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
	.align	16
	#Procedure 0x406d10
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
	.align	16
	#Procedure 0x406d50

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
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406d90

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
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
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_508
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
.label_508:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvprintf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f00

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	vprintf
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_509
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	cmp	eax, 0
	jne	.label_509
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x18], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_509:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f80
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

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
	je	.label_510
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
.label_510:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	call	xvfprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_511
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	jne	.label_511
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x20], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_511:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407170

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
	jne	.label_512
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_512:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_513
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_513
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_514
.label_513:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_514:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407220

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
	jne	.label_515
	mov	dword ptr [rbp - 4], 0
	jmp	.label_519
.label_515:
	jmp	.label_516
.label_516:
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
	jne	.label_518
	jmp	.label_517
.label_518:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_516
.label_517:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_519:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072e0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_523
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_524
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_524:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_522
.label_523:
	mov	rdi, qword ptr [rbp - 0x38]
	call	uselocale
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_521
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_520
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_520:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_522
.label_521:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	uselocale
	cmp	rax, 0
	jne	.label_525
	call	abort
.label_525:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x48], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rax], ecx
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x10]
.label_522:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073b0

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_526
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_526:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073f0

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
	jne	.label_527
	test	byte ptr [rbp - 0x13], 1
	je	.label_528
	test	byte ptr [rbp - 0x11], 1
	jne	.label_527
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_528
.label_527:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_529
	call	__errno_location
	mov	dword ptr [rax], 0
.label_529:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_530
.label_528:
	mov	dword ptr [rbp - 4], 0
.label_530:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074a0

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
	je	.label_531
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_7
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_533
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_532
.label_533:
	mov	byte ptr [rbp - 5], 0
.label_532:
	jmp	.label_531
.label_531:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407520

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
	jne	.label_534
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_534:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_535
	movabs	rax, OFFSET FLAT:.str.1_2
	mov	qword ptr [rbp - 8], rax
.label_535:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407580

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
	jge	.label_536
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_539
.label_536:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_537
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_538
.label_537:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_538
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_538:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_540
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_540:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_539:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407650

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_541
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_542
.label_541:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_543
.label_542:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_543:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076b0

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
	je	.label_544
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_544:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076f0

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
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_545
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_547
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_546
.label_547:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_546
.label_545:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_546:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077c0

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
	ja	.label_548
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_549
.label_548:
	jmp	.label_549
.label_549:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407810
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
	jb	.label_551
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_551
	jmp	.label_552
.label_552:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_553
	jmp	.label_551
.label_551:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_555
.label_553:
	mov	byte ptr [rbp - 1], 0
.label_555:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407880
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
	jb	.label_556
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_557
	jmp	.label_556
.label_556:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_558
.label_557:
	mov	byte ptr [rbp - 1], 0
.label_558:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_560
	jmp	.label_561
.label_561:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_562
.label_560:
	mov	byte ptr [rbp - 1], 0
.label_562:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407900
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_563
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_563:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407930
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
	jb	.label_564
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_567
	jmp	.label_564
.label_564:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_565
.label_567:
	mov	byte ptr [rbp - 1], 0
.label_565:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407980
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_568
	jmp	.label_570
.label_570:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_569
.label_568:
	mov	byte ptr [rbp - 1], 0
.label_569:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079c0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_571
	jmp	.label_573
.label_573:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_572
.label_571:
	mov	byte ptr [rbp - 1], 0
.label_572:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a00
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_574
	jmp	.label_576
.label_576:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_575
.label_574:
	mov	byte ptr [rbp - 1], 0
.label_575:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a40
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_577
	jmp	.label_579
.label_579:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_578
.label_577:
	mov	byte ptr [rbp - 1], 0
.label_578:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a80
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
	jb	.label_580
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_580
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_580
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_585
	jmp	.label_580
.label_580:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_581
.label_585:
	mov	byte ptr [rbp - 1], 0
.label_581:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b00
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
	jb	.label_586
	jmp	.label_588
.label_588:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_589
	jmp	.label_586
.label_586:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_587
.label_589:
	mov	byte ptr [rbp - 1], 0
.label_587:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b50
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_590
	jmp	.label_592
.label_592:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_591
.label_590:
	mov	byte ptr [rbp - 1], 0
.label_591:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b90
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
	jb	.label_593
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_593
	jmp	.label_594
.label_594:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_595
	jmp	.label_593
.label_593:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_597
.label_595:
	mov	byte ptr [rbp - 1], 0
.label_597:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c00

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_598
	jmp	.label_600
.label_600:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_599
.label_598:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_599:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c40
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_601
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_602
.label_601:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_602:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
