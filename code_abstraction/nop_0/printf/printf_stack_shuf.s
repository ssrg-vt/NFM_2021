	.section	.text
	.align	16
	#Procedure 0x401650

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	lea	rsi, [rsi]
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_9
.label_7:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	nop	
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.10
	nop	
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	call	emit_ancillary_info
.label_9:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401870

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_14:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], cl
	lea	rsi, [rsi]
	je	.label_12
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x41], cl
.label_12:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	mov	rsp, rsp
	jne	.label_15
	jmp	.label_13
.label_15:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_14
.label_13:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_11
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	mov	edi, 5
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_10
	movabs	rsi, OFFSET FLAT:.str.32
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.35
	nop	
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.36
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmove	rdx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a80

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rbp, rbp
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.12
	movabs	rsi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	bindtextdomain
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	atexit
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	dword ptr [dword ptr [exit_status]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	getenv
	cmp	rax, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [byte ptr [posixly_correct]],  cl
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rdi, [rdi]
	jne	.label_19
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_24
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_24:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.16
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_23
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	rbp, rbp
	mov	r9d, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	nop	
	mov	al, 0
	call	version_etc
	mov	dword ptr [rbp - 0x18], 0
	jmp	.label_17
.label_23:
	jmp	.label_19
.label_19:
	mov	eax, 1
	cmp	eax, dword ptr [rbp - 0x14]
	jge	.label_16
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.19
	mov	esi, ecx
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_16
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	eax, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
.label_16:
	cmp	dword ptr [rbp - 0x14], 1
	lea	rdi, [rdi]
	jg	.label_22
	movabs	rdi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_22:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	sub	ecx, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_18:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	print_formatted
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	sub	esi, eax
	mov	dword ptr [rbp - 0x14], esi
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	movsxd	rdi, eax
	shl	rdi, 3
	add	rdx, rdi
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jle	.label_21
	cmp	dword ptr [rbp - 0x14], 0
	setg	al
	nop	
	mov	byte ptr [rbp - 0x41], al
.label_21:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_18
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	jle	.label_20
	movabs	rdi, OFFSET FLAT:.str.21
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_20:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
.label_17:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dd0

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x210
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x3c], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdx
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 0xb8], 0
	nop	
	mov	dword ptr [rbp - 0x64], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc8], rdx
.label_65:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax], 0
	je	.label_28
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	nop	
	mov	dword ptr [rbp - 0xa4], ecx
	nop	
	mov	dword ptr [rbp - 0x24], edx
	je	.label_34
	mov	rbp, rbp
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x38], eax
	nop	
	je	.label_44
	lea	rsi, [rsi]
	jmp	.label_47
.label_34:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe1], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xca], 0
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x25
	jne	.label_52
	mov	edi, 0x25
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_25
.label_52:
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x62
	jne	.label_68
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jle	.label_73
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	print_esc_string
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, -1
	nop	
	mov	dword ptr [rbp - 0x3c], ecx
.label_73:
	lea	rsi, [rsi]
	jmp	.label_25
.label_68:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x71
	mov	rsp, rsp
	jne	.label_39
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jle	.label_70
	mov	rsp, rsp
	mov	edi, 3
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	quotearg_style
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	add	rsi, 8
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], eax
.label_70:
	lea	rsi, [rsi]
	jmp	.label_25
.label_39:
	xor	esi, esi
	mov	eax, 0x100
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1f0]
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x198], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x178], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x17b], 1
	mov	byte ptr [rbp - 0x17d], 1
	mov	byte ptr [rbp - 0x181], 1
	mov	byte ptr [rbp - 0x187], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a9], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x189], 1
	nop	
	mov	byte ptr [rbp - 0x1aa], 1
	mov	byte ptr [rbp - 0x18a], 1
	mov	byte ptr [rbp - 0x1ab], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x18b], 1
	mov	byte ptr [rbp - 0x18c], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x18d], 1
	mov	byte ptr [rbp - 0x1af], 1
	mov	byte ptr [rbp - 0x18f], 1
.label_76:
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	nop	
	sub	edx, 0x20
	mov	dword ptr [rbp - 0x88], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], edx
	mov	rsp, rsp
	je	.label_48
	lea	rdi, [rdi]
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sub	eax, 0x23
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_62
	nop	
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x1f4], eax
	mov	rbp, rbp
	je	.label_41
	nop	
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x28], eax
	je	.label_48
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_48
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	je	.label_27
	mov	rbp, rbp
	jmp	.label_33
.label_33:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sub	eax, 0x49
	mov	dword ptr [rbp - 0xb4], eax
	jne	.label_36
	jmp	.label_41
.label_41:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x198], 0
	mov	byte ptr [rbp - 0x178], 0
	mov	byte ptr [rbp - 0x17d], 0
	mov	byte ptr [rbp - 0x181], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1ab], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x18b], 0
	mov	byte ptr [rbp - 0x18d], 0
	mov	byte ptr [rbp - 0x1af], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x18f], 0
	mov	rsp, rsp
	jmp	.label_43
.label_48:
	jmp	.label_43
.label_62:
	mov	byte ptr [rbp - 0x17b], 0
	mov	byte ptr [rbp - 0x17d], 0
	mov	byte ptr [rbp - 0x187], 0
	mov	byte ptr [rbp - 0x18c], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x18d], 0
	jmp	.label_43
.label_27:
	nop	
	mov	byte ptr [rbp - 0x17d], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x18d], 0
	jmp	.label_43
.label_36:
	jmp	.label_72
.label_43:
	jmp	.label_74
.label_74:
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_76
.label_72:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2a
	jne	.label_30
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jle	.label_38
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	vstrtoimax
	lea	rdi, [rdi]
	mov	rdi, -0x80000000
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	jg	.label_56
	cmp	qword ptr [rbp - 0x78], 0x7fffffff
	mov	rsp, rsp
	jg	.label_56
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], ecx
	mov	rbp, rbp
	jmp	.label_66
.label_56:
	nop	
	movabs	rdi, OFFSET FLAT:.str.37
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_66:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rsi, [rsi]
	jmp	.label_53
.label_38:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], 0
.label_53:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xca], 1
	mov	rsp, rsp
	jmp	.label_45
.label_30:
	jmp	.label_49
.label_49:
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_51
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_49
.label_51:
	mov	rsp, rsp
	jmp	.label_45
.label_45:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_59
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x18d], 0
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2a
	jne	.label_69
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jle	.label_29
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	vstrtoimax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_46
	nop	
	mov	dword ptr [rbp - 0x64], 0xffffffff
	mov	rsp, rsp
	jmp	.label_54
.label_46:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jge	.label_58
	nop	
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	call	quote
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_58:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	nop	
	jmp	.label_54
.label_54:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_77
.label_29:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], 0
.label_77:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
	mov	rsp, rsp
	jmp	.label_31
.label_69:
	jmp	.label_37
.label_37:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_40
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_37
.label_40:
	jmp	.label_31
.label_31:
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	mov	rsp, rsp
	jmp	.label_57
.label_57:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xc8]
	movsx	edx, byte ptr [rcx]
	nop	
	cmp	edx, 0x6c
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc9], al
	je	.label_32
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x4c
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], al
	je	.label_32
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xc8]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x68
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], al
	mov	rbp, rbp
	je	.label_32
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx]
	nop	
	cmp	edx, 0x6a
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc9], al
	lea	rsi, [rsi]
	je	.label_32
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	nop	
	cmp	edx, 0x74
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc9], al
	lea	rsi, [rsi]
	je	.label_32
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x7a
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc9], dl
.label_32:
	mov	al, byte ptr [rbp - 0xc9]
	test	al, 1
	jne	.label_50
	jmp	.label_55
.label_50:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_57
.label_55:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], cl
	movzx	edx, byte ptr [rbp - 0x91]
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + rax - 0x1f0], 0
	mov	rbp, rbp
	jne	.label_63
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.39
	nop	
	call	gettext
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	add	rcx, 1
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	ecx, r8d
	mov	r8, qword ptr [rbp - 0x60]
	mov	al, 0
	call	error
.label_63:
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0xca]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0xb8]
	mov	r9b, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	byte ptr [rbp - 0xb9], cl
	mov	byte ptr [rbp - 0x11], dl
	mov	dword ptr [rbp - 0x68], r8d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], r9b
	mov	dword ptr [rbp - 0x4c], r10d
	lea	rdi, [rdi]
	jg	.label_35
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	jmp	.label_60
.label_35:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, -1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rcx
.label_60:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rcx], edx
	mov	sil, byte ptr [rbp - 0xb9]
	nop	
	movsx	edx, sil
	lea	rsi, [rsi]
	mov	dil, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	and	dil, 1
	mov	rbp, rbp
	movzx	ecx, dil
	nop	
	mov	dil, byte ptr [rbp - 0xa5]
	and	dil, 1
	mov	rbp, rbp
	movzx	r9d, dil
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x68]
	call	print_direc
	jmp	.label_25
.label_44:
	xor	esi, esi
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	print_esc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc8]
	movsxd	rcx, eax
	mov	rbp, rbp
	add	rdi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rdi
	jmp	.label_25
.label_47:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x6c], eax
.label_25:
	mov	rbp, rbp
	jmp	.label_64
.label_64:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	jmp	.label_65
.label_28:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	rsp, 0x210
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_80:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_78
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	nop	
	jne	.label_79
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	print_esc
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rdi, rcx
	mov	qword ptr [rbp - 0x10], rdi
	jmp	.label_82
.label_79:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_82:
	jmp	.label_81
.label_81:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_80
.label_78:
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	movsx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x22
	lea	rdi, [rdi]
	je	.label_83
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	nop	
	jne	.label_84
.label_83:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_84
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], dl
	mov	rbp, rbp
	movzx	esi, byte ptr [rbp - 0x21]
	mov	eax, esi
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	movsx	esi, byte ptr [rax + 1]
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_85
	mov	rsp, rsp
	test	byte ptr [byte ptr [posixly_correct]],  1
	lea	rdi, [rdi]
	jne	.label_85
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	al, 0
	nop	
	call	error
.label_85:
	jmp	.label_86
.label_84:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	lea	rsi, [rbp - 8]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strtoimax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	verify_numeric
.label_86:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl print_direc
	.type print_direc, @function
print_direc:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x148
	lea	rsi, [rsi]
	mov	al, r9b
	mov	rsp, rsp
	mov	r10b, cl
	mov	r11b, dl
	mov	rbx, qword ptr [rbp + 0x18]
	mov	ecx, dword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x115], r11b
	mov	rbp, rbp
	and	r10b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], r10b
	mov	dword ptr [rbp - 0x114], r8d
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11d], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], ecx
	nop	
	mov	qword ptr [rbp - 0xc8], rbx
	movsx	ecx, byte ptr [rbp - 0x115]
	nop	
	mov	edx, ecx
	sub	edx, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xac], edx
	je	.label_113
	mov	rbp, rbp
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	add	eax, -0x45
	sub	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe0], eax
	jb	.label_113
	mov	rbp, rbp
	jmp	.label_120
.label_120:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x58
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	je	.label_94
	mov	rbp, rbp
	jmp	.label_125
.label_125:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x61
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_113
	lea	rdi, [rdi]
	jmp	.label_133
.label_133:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x64
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x110], eax
	je	.label_94
	mov	rsp, rsp
	jmp	.label_116
.label_116:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	add	eax, -0x65
	sub	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jb	.label_113
	jmp	.label_92
.label_92:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x124], eax
	nop	
	je	.label_94
	nop	
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	je	.label_94
	jmp	.label_127
.label_127:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x10], eax
	je	.label_94
	mov	rbp, rbp
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x78
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	jne	.label_114
	lea	rsi, [rsi]
	jmp	.label_94
.label_94:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.44
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0xa8], 1
	jmp	.label_122
.label_113:
	movabs	rax, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0xa8], 1
	mov	rbp, rbp
	jmp	.label_122
.label_114:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	qword ptr [rbp - 0xa8], 0
.label_122:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	lea	rdi, [rax + rcx + 2]
	mov	rsp, rsp
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	mempcpy
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x28], rax
	mov	r8b, byte ptr [rbp - 0x115]
	mov	rcx, rax
	lea	rdi, [rdi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], r8b
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	movsx	r9d, byte ptr [rbp - 0x115]
	lea	rdi, [rdi]
	mov	r10d, r9d
	lea	rsi, [rsi]
	sub	r10d, 0x41
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], r9d
	mov	dword ptr [rbp - 0xd0], r10d
	lea	rsi, [rsi]
	je	.label_105
	jmp	.label_126
.label_126:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	eax, -0x45
	sub	eax, 3
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jb	.label_105
	mov	rsp, rsp
	jmp	.label_134
.label_134:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x58
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x12c], eax
	lea	rsi, [rsi]
	je	.label_87
	mov	rsp, rsp
	jmp	.label_139
.label_139:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x61
	nop	
	mov	dword ptr [rbp - 0x60], eax
	je	.label_105
	nop	
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_93
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x134], eax
	lea	rdi, [rdi]
	je	.label_100
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, -0x65
	mov	rbp, rbp
	sub	eax, 3
	mov	dword ptr [rbp - 0x7c], eax
	jb	.label_105
	jmp	.label_108
.label_108:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	je	.label_100
	lea	rsi, [rsi]
	jmp	.label_129
.label_129:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x6f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x108], eax
	je	.label_87
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_131
	nop	
	jmp	.label_128
.label_128:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x75
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], eax
	mov	rsp, rsp
	je	.label_87
	lea	rsi, [rsi]
	jmp	.label_135
.label_135:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x78
	nop	
	mov	dword ptr [rbp - 0x11c], eax
	lea	rsi, [rsi]
	je	.label_87
	jmp	.label_95
.label_100:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	call	vstrtoimax
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb1], 1
	mov	rsp, rsp
	jne	.label_89
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11d], 1
	jne	.label_98
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xa0], eax
	nop	
	jmp	.label_106
.label_98:
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	xprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
.label_106:
	mov	rsp, rsp
	jmp	.label_97
.label_89:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11d], 1
	jne	.label_138
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x10c], eax
	lea	rsi, [rsi]
	jmp	.label_136
.label_138:
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x114]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	al, 0
	call	xprintf
	nop	
	mov	dword ptr [rbp - 0xb0], eax
.label_136:
	lea	rdi, [rdi]
	jmp	.label_97
.label_97:
	mov	rbp, rbp
	jmp	.label_95
.label_87:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	call	vstrtoumax
	nop	
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb1], 1
	lea	rdi, [rdi]
	jne	.label_141
	test	byte ptr [rbp - 0x11d], 1
	jne	.label_96
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	al, 0
	call	xprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	jmp	.label_102
.label_96:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xb8], eax
.label_102:
	jmp	.label_112
.label_141:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11d], 1
	mov	rbp, rbp
	jne	.label_115
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	al, 0
	mov	rbp, rbp
	call	xprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], eax
	lea	rsi, [rsi]
	jmp	.label_124
.label_115:
	nop	
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x114]
	nop	
	mov	edx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	al, 0
	call	xprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
.label_124:
	jmp	.label_112
.label_112:
	jmp	.label_95
.label_105:
	mov	rdi, qword ptr [rbp - 0xc8]
	call	vstrtold
	fstp	xword ptr [rbp - 0xf0]
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_140
	nop	
	test	byte ptr [rbp - 0x11d], 1
	mov	rbp, rbp
	jne	.label_88
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, rsp
	mov	rsp, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	lea	rdi, [rdi]
	jmp	.label_104
.label_88:
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x5c]
	fld	xword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_104:
	jmp	.label_91
.label_140:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11d], 1
	mov	rbp, rbp
	jne	.label_117
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	fld	xword ptr [rbp - 0xf0]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	mov	al, dl
	lea	rdi, [rdi]
	call	xprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_130
.label_117:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	mov	edx, dword ptr [rbp - 0x5c]
	fld	xword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rax, rsp
	mov	rbp, rbp
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8b, cl
	nop	
	mov	al, r8b
	lea	rdi, [rdi]
	call	xprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
.label_130:
	mov	rsp, rsp
	jmp	.label_91
.label_91:
	jmp	.label_95
.label_93:
	test	byte ptr [rbp - 0xb1], 1
	lea	rdi, [rdi]
	jne	.label_118
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	movsx	esi, byte ptr [rax]
	mov	al, 0
	lea	rsi, [rsi]
	call	xprintf
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_107
.label_118:
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x114]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_107:
	mov	rsp, rsp
	jmp	.label_95
.label_131:
	test	byte ptr [rbp - 0xb1], 1
	lea	rdi, [rdi]
	jne	.label_119
	test	byte ptr [rbp - 0x11d], 1
	lea	rdi, [rdi]
	jne	.label_121
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	mov	dword ptr [rbp - 0x128], eax
	mov	rbp, rbp
	jmp	.label_132
.label_121:
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	al, 0
	mov	rsp, rsp
	call	xprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
.label_132:
	lea	rdi, [rdi]
	jmp	.label_111
.label_119:
	test	byte ptr [rbp - 0x11d], 1
	lea	rsi, [rsi]
	jne	.label_142
	mov	rdi, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x114]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	al, 0
	call	xprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], eax
	nop	
	jmp	.label_137
.label_142:
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x114]
	mov	edx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	al, 0
	nop	
	call	xprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_137:
	jmp	.label_111
.label_111:
	mov	rbp, rbp
	jmp	.label_95
.label_95:
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x148
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, sil
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rdi, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdi
	mov	dword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x58]
	movsx	esi, byte ptr [rdi]
	mov	rbp, rbp
	cmp	esi, 0x78
	jne	.label_148
	nop	
	mov	dword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
.label_147:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x40], 2
	mov	byte ptr [rbp - 5], cl
	lea	rdi, [rdi]
	jge	.label_173
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 5], dl
.label_173:
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	mov	rsp, rsp
	jne	.label_166
	jmp	.label_169
.label_166:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x38], eax
	jl	.label_171
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x66
	jg	.label_171
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_149
.label_171:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_158
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x46
	jg	.label_158
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	sub	ecx, 0x41
	add	ecx, 0xa
	nop	
	mov	dword ptr [rbp - 0x68], ecx
	jmp	.label_168
.label_158:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x68], ecx
.label_168:
	mov	eax, dword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
.label_149:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	ecx, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	ecx, eax
	mov	dword ptr [rbp - 0x20], ecx
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	jmp	.label_147
.label_169:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jne	.label_164
	nop	
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_164:
	mov	edi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_143
.label_148:
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x30
	jl	.label_146
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x37
	jg	.label_146
	xor	eax, eax
	nop	
	mov	cl, al
	mov	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	test	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	je	.label_161
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	sete	dl
	mov	byte ptr [rbp - 0x19], dl
.label_161:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rbp, rbp
	add	rdx, rsi
	mov	qword ptr [rbp - 0x58], rdx
.label_175:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x40], 3
	nop	
	mov	byte ptr [rbp - 0x49], cl
	mov	rsp, rsp
	jge	.label_144
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x59], cl
	mov	rsp, rsp
	jl	.label_154
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x37
	mov	rbp, rbp
	setle	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], dl
.label_154:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x59]
	mov	byte ptr [rbp - 0x49], al
.label_144:
	nop	
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_172
	jmp	.label_174
.label_172:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	shl	eax, 3
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	sub	edx, 0x30
	add	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_175
.label_174:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x20]
	nop	
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	nop	
	jmp	.label_156
.label_146:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_167
	movabs	rdi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_167
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	movsx	edi, byte ptr [rax]
	nop	
	call	print_esc_char
	jmp	.label_145
.label_167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	je	.label_160
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x55
	jne	.label_152
.label_160:
	mov	eax, 8
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x58]
	mov	sil, byte ptr [rdx]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], sil
	mov	dword ptr [rbp - 4], 0
	movsx	edi, byte ptr [rbp - 0x41]
	cmp	edi, 0x75
	mov	rsp, rsp
	cmove	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
.label_170:
	cmp	dword ptr [rbp - 0x40], 0
	jle	.label_153
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edi, 0x1000
	lea	rsi, [rsi]
	cmp	edi, 0
	jne	.label_165
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_165:
	mov	eax, dword ptr [rbp - 4]
	shl	eax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 0x61
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jl	.label_155
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_155
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	nop	
	sub	ecx, 0x61
	lea	rsi, [rsi]
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x48], ecx
	nop	
	jmp	.label_151
.label_155:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x41
	jl	.label_159
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x46
	jg	.label_159
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x70], ecx
	nop	
	jmp	.label_162
.label_159:
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], ecx
.label_162:
	nop	
	mov	eax, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
.label_151:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_170
.label_153:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0x9f
	ja	.label_150
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0x24
	je	.label_150
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0x40
	lea	rsi, [rsi]
	je	.label_150
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0x60
	mov	rsp, rsp
	jne	.label_176
.label_150:
	cmp	dword ptr [rbp - 4], 0xd800
	jb	.label_157
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0xdfff
	ja	.label_157
.label_176:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	mov	ecx, 8
	mov	edx, 4
	movsx	r8d, byte ptr [rbp - 0x41]
	movsx	r9d, byte ptr [rbp - 0x41]
	cmp	r9d, 0x75
	lea	rdi, [rdi]
	cmove	ecx, edx
	mov	r9d, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	dword ptr [rbp - 0x64], ecx
	nop	
	mov	ecx, r8d
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_157:
	xor	edx, edx
	nop	
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	esi, dword ptr [rbp - 4]
	call	print_unicode_char
	mov	rsp, rsp
	jmp	.label_163
.label_152:
	mov	rbp, rbp
	mov	edi, 0x5c
	mov	rbp, rbp
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	je	.label_177
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dword ptr [rbp - 0x34], eax
.label_177:
	jmp	.label_163
.label_163:
	jmp	.label_145
.label_145:
	jmp	.label_156
.label_156:
	jmp	.label_143
.label_143:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	rbp, rbp
	sub	rax, 1
	mov	edx, eax
	mov	eax, edx
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	je	.label_182
	call	__errno_location
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rbp, rbp
	call	quote
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	dword ptr [dword ptr [exit_status]],  1
	jmp	.label_180
.label_182:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_179
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jne	.label_181
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	quote
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	jmp	.label_178
.label_181:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	call	quote
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_178:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [exit_status]],  1
.label_179:
	jmp	.label_180
.label_180:
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd0

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_186
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x27
	jne	.label_183
.label_186:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	nop	
	je	.label_183
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	dl, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
	nop	
	movzx	esi, byte ptr [rbp - 1]
	nop	
	mov	eax, esi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	movsx	esi, byte ptr [rax + 1]
	nop	
	cmp	esi, 0
	lea	rdi, [rdi]
	je	.label_185
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_185
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_185:
	lea	rsi, [rsi]
	jmp	.label_184
.label_183:
	nop	
	call	__errno_location
	lea	rsi, [rbp - 0x10]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	strtoumax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_184:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdi]
	mov	rsp, rsp
	cmp	eax, 0x22
	lea	rdi, [rdi]
	je	.label_189
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_188
.label_189:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_188
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	movzx	edx, byte ptr [rax + 1]
	mov	sil, dl
	mov	byte ptr [rbp - 0x19], sil
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], edx
	fild	dword ptr [rbp - 0x34]
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_187
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_187
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	lea	rdi, [rdi]
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_187:
	nop	
	jmp	.label_190
.label_188:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rbp - 0x10]
	nop	
	call	cl_strtold
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_190:
	nop	
	fld	xword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e50

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	eax, byte ptr [rbp - 1]
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e70

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, dil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], al
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp - 5]
	mov	rsp, rsp
	add	edi, -0x61
	lea	rsi, [rsi]
	mov	ecx, edi
	sub	edi, 0x15
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	dword ptr [rbp - 4], edi
	ja	.label_192
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_193]]
	jmp	rcx
.label_675:
	lea	rsi, [rsi]
	mov	edi, 7
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_191
.label_676:
	lea	rsi, [rsi]
	mov	edi, 8
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_191
.label_677:
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_678:
	lea	rsi, [rsi]
	mov	edi, 0x1b
	nop	
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_191
.label_679:
	nop	
	mov	edi, 0xc
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_191
.label_680:
	lea	rsi, [rsi]
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_191
.label_681:
	nop	
	mov	edi, 0xd
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_191
.label_682:
	nop	
	mov	edi, 9
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_191
.label_683:
	mov	rbp, rbp
	mov	edi, 0xb
	lea	rsi, [rsi]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_191
.label_192:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_191:
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fb0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rbp - 0x28]
	lea	rsi, [rsi]
	call	strtold
	fstp	xword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	byte ptr [rsi], 0
	je	.label_196
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	lea	rsi, [rbp - 0x48]
	call	c_strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jae	.label_195
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x10]
	fstp	xword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_194
.label_195:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
.label_194:
	jmp	.label_196
.label_196:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_197
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_197:
	fld	xword ptr [rbp - 0x40]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404080
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
	#Procedure 0x4040b0
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
	#Procedure 0x4040e0

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
	je	.label_198
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_200
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_198
.label_200:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_202
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
	jmp	.label_199
.label_202:
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
.label_199:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_198:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_201
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_201:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404210

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
	jne	.label_205
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_205:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_203
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_207
.label_203:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_207:
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
	jl	.label_206
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
	jne	.label_206
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
	jne	.label_204
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_204:
	jmp	.label_206
.label_206:
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
	#Procedure 0x404390
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
	je	.label_209
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_208
.label_209:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_208
.label_208:
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
	#Procedure 0x404440
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
	je	.label_210
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_211
.label_210:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044a0
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
	je	.label_212
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_213
.label_212:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404500

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
	je	.label_214
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_215
.label_214:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_215
.label_215:
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
	#Procedure 0x404600
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
	jne	.label_216
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_216:
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
	#Procedure 0x404660

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
	jne	.label_217
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_217:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_219
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_218
.label_219:
	call	abort
.label_218:
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
	#Procedure 0x404700
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
	je	.label_220
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_221
.label_220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_221
.label_221:
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
	#Procedure 0x404800

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
.label_269:
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
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_348]]
	jmp	rcx
.label_620:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_619:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_289
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_295
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_295:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_289
.label_289:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_306
.label_621:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_306
.label_622:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_321
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
.label_321:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_335
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_352:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_340
	jmp	.label_341
.label_341:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_342
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_342:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_352
.label_340:
	mov	rbp, rbp
	jmp	.label_335
.label_335:
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
	jmp	.label_306
.label_617:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_616:
	mov	byte ptr [rbp - 0x3e], 1
.label_618:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_376
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_376:
	jmp	.label_379
.label_379:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_380
	jmp	.label_384
.label_384:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_323
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_380
.label_380:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_306
.label_615:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_306
.label_274:
	call	abort
.label_306:
	mov	qword ptr [rbp - 0xd8], 0
.label_408:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_404
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
	jmp	.label_405
.label_404:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_405:
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
	jmp	.label_231
.label_422:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_233
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_233
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_233
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_249
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_249
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_266
.label_249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_266:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_233
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
	jne	.label_233
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_286
	jmp	.label_241
.label_286:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_233:
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
	ja	.label_293
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_304]]
	nop	
	jmp	rcx
.label_628:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_296
	mov	rsp, rsp
	jmp	.label_320
.label_320:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_317
	jmp	.label_241
.label_317:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_326
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_326
	nop	
	jmp	.label_327
.label_327:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_330
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_336
.label_336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_344
.label_344:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_347
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_347:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_326:
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
	jmp	.label_366
.label_366:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_300
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_300
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_300
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_300
	nop	
	jmp	.label_390
.label_390:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_392:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_398
.label_398:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_370:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_300
.label_300:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_409
.label_296:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_360
	mov	rbp, rbp
	jmp	.label_406
.label_360:
	jmp	.label_409
.label_409:
	jmp	.label_230
.label_639:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_420
	mov	rbp, rbp
	jmp	.label_226
.label_226:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_228
	jmp	.label_237
.label_420:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_239
	jmp	.label_241
.label_239:
	jmp	.label_243
.label_228:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_248
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_248
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
	je	.label_271
	nop	
	jmp	.label_400
.label_400:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_271
	jmp	.label_276
.label_276:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_271
	jmp	.label_283
.label_283:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_271
	jmp	.label_386
.label_386:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_387
	jmp	.label_271
.label_271:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_297
	jmp	.label_241
.label_297:
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
	jae	.label_301
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_301:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_325
.label_325:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_383:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_333
.label_333:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_254
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_331:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_362
.label_387:
	jmp	.label_362
.label_362:
	jmp	.label_248
.label_248:
	jmp	.label_243
.label_237:
	jmp	.label_243
.label_243:
	jmp	.label_230
.label_629:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_358
.label_630:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_358
.label_634:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_358
.label_632:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_257
.label_635:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_257
.label_631:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_257
.label_633:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_358
.label_640:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_377
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_382
	nop	
	jmp	.label_241
.label_382:
	lea	rsi, [rsi]
	jmp	.label_288
.label_377:
	test	byte ptr [rbp - 0x89], 1
	je	.label_391
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_391
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_391
	jmp	.label_288
.label_391:
	jmp	.label_257
.label_257:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_282
	test	byte ptr [rbp - 0x3e], 1
	je	.label_282
	jmp	.label_241
.label_282:
	mov	rsp, rsp
	jmp	.label_358
.label_358:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_402
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_305
.label_402:
	jmp	.label_230
.label_641:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_410
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_413
	jmp	.label_419
.label_410:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_413
.label_419:
	nop	
	jmp	.label_230
.label_413:
	jmp	.label_222
.label_222:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_270
	lea	rsi, [rsi]
	jmp	.label_230
.label_270:
	nop	
	jmp	.label_232
.label_232:
	mov	byte ptr [rbp - 0x91], 1
.label_636:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_236
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_236
	jmp	.label_241
.label_236:
	lea	rsi, [rsi]
	jmp	.label_230
.label_638:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_244
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_252
	jmp	.label_241
.label_252:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_258
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_258
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_258:
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_268
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_273
.label_273:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_279
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_279:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_287
.label_287:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_292
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_292:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_244:
	lea	rsi, [rsi]
	jmp	.label_230
.label_637:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_230
.label_293:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_310
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
	jmp	.label_264
.label_310:
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
	jne	.label_337
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_337:
	jmp	.label_253
.label_253:
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
	jne	.label_361
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_359
.label_361:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_369
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_388:
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
	jae	.label_372
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_372:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_385
	jmp	.label_394
.label_385:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_388
.label_394:
	jmp	.label_359
.label_369:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_247
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_247
	mov	qword ptr [rbp - 0xe8], 1
.label_242:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_399
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
	jmp	.label_416
.label_416:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_235
	jmp	.label_421
.label_421:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_235
	jmp	.label_227
.label_227:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_229
	mov	rsp, rsp
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	jmp	.label_241
.label_229:
	jmp	.label_240
.label_240:
	mov	rsp, rsp
	jmp	.label_343
.label_343:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_242
.label_399:
	mov	rbp, rbp
	jmp	.label_247
.label_247:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_365
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_365:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_255
.label_255:
	lea	rsi, [rsi]
	jmp	.label_260
.label_260:
	jmp	.label_262
.label_262:
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
	jne	.label_253
.label_359:
	jmp	.label_264
.label_264:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_272
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_281
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_281
.label_272:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_259:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_294
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_294
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_299
	jmp	.label_241
.label_299:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_303
	test	byte ptr [rbp - 0x42], 1
	jne	.label_303
	lea	rdi, [rdi]
	jmp	.label_311
.label_311:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_322
.label_322:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_328
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_328:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_318
.label_318:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_250
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_303:
	jmp	.label_345
.label_345:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_346
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_346:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_263
.label_263:
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_353
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
.label_353:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_374
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
.label_374:
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
	jmp	.label_381
.label_294:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_389
	lea	rdi, [rdi]
	jmp	.label_393
.label_393:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_396
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_396:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_389:
	nop	
	jmp	.label_381
.label_381:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_403
	jmp	.label_407
.label_403:
	lea	rsi, [rsi]
	jmp	.label_411
.label_411:
	test	byte ptr [rbp - 0x42], 1
	je	.label_412
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_412
	lea	rsi, [rsi]
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_418
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_418:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_313
.label_313:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_234
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_234:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_412:
	nop	
	jmp	.label_246
.label_246:
	mov	rsp, rsp
	jmp	.label_373
.label_373:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_251
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_251:
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
	jmp	.label_259
.label_407:
	mov	rsp, rsp
	jmp	.label_288
.label_281:
	lea	rsi, [rsi]
	jmp	.label_230
.label_230:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_309
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_277
.label_309:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_280
.label_277:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_280
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
	jne	.label_284
.label_280:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_284
	mov	rsp, rsp
	jmp	.label_288
.label_284:
	nop	
	jmp	.label_305
.label_305:
	jmp	.label_307
.label_307:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_290
	jmp	.label_241
.label_290:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_312
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_312
	lea	rdi, [rdi]
	jmp	.label_319
.label_319:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_401
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_401:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_224:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_339
.label_339:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_334
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_312:
	jmp	.label_349
.label_349:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_350
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_350:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_357
.label_357:
	nop	
	jmp	.label_288
.label_288:
	jmp	.label_364
.label_364:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_256
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_256
	lea	rdi, [rdi]
	jmp	.label_371
.label_371:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_375
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_256:
	jmp	.label_395
.label_395:
	nop	
	jmp	.label_397
.label_397:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_245
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_245:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_324
	mov	byte ptr [rbp - 0xb7], 0
.label_324:
	mov	rbp, rbp
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_408
.label_231:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_414
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_414
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_414
	nop	
	jmp	.label_241
.label_414:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_223
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_223
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_223
	test	byte ptr [rbp - 0xb7], 1
	je	.label_238
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
	jmp	.label_261
.label_238:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_265
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_265
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_269
.label_265:
	jmp	.label_275
.label_275:
	mov	rbp, rbp
	jmp	.label_223
.label_223:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_278
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_278
	mov	rbp, rbp
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_285
	lea	rdi, [rdi]
	jmp	.label_415
.label_415:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_291
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_291:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_308
.label_285:
	jmp	.label_278
.label_278:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_316
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_316:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_261
.label_241:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_329
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_329
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_329:
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
.label_261:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062a0
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
	#Procedure 0x406310

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
	je	.label_423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_424
.label_423:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_424
.label_424:
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
	je	.label_425
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_425:
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
	#Procedure 0x4064e0
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
.label_430:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_429
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
	jmp	.label_430
.label_429:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_428
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_426]],  rax
.label_428:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_427
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_427:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065f0

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
	#Procedure 0x406640

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
	jge	.label_435
	call	abort
.label_435:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_431
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
	jge	.label_437
	call	xalloc_die
.label_437:
	test	byte ptr [rbp - 0x51], 1
	je	.label_432
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_436
.label_432:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_436:
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
	je	.label_434
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_426]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_434:
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
.label_431:
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
	ja	.label_433
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
	je	.label_438
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_438:
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
.label_433:
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
	#Procedure 0x406970

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
	#Procedure 0x4069b0
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
	#Procedure 0x4069e0
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
	#Procedure 0x406a20

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
	#Procedure 0x406a80

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
	jne	.label_439
	call	abort
.label_439:
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
	#Procedure 0x406b20

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
	#Procedure 0x406b90

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
	#Procedure 0x406bd0
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
	#Procedure 0x406c10

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
	#Procedure 0x406cc0

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
	#Procedure 0x406d00

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
	#Procedure 0x406d30
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
	#Procedure 0x406d70
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
	#Procedure 0x406e50

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
	#Procedure 0x406ea0

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
	#Procedure 0x406f40
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
	#Procedure 0x406f90
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
	#Procedure 0x406ff0

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
	#Procedure 0x407030
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
	#Procedure 0x407070

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
	#Procedure 0x4070b0

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
	#Procedure 0x4070f0

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
	je	.label_443
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_440
.label_443:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_4
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_441
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
	jmp	.label_440
.label_441:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_442
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
	jmp	.label_440
.label_442:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_440:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407230

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	cmp	dword ptr [dword ptr [unicode_to_mb.initialized]],  0
	jne	.label_452
	call	locale_charset
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	ecx, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	esi, ecx
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	setne	dl
	xor	dl, 0xff
	lea	rsi, [rsi]
	and	dl, 1
	movzx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  eax
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	nop	
	jne	.label_444
	movabs	rsi, OFFSET FLAT:.str_4
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	call	iconv_open
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rsi
	jne	.label_446
	movabs	rdi, OFFSET FLAT:.str.1_2
	movabs	rsi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	call	iconv_open
	mov	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
.label_446:
	mov	rbp, rbp
	jmp	.label_444
.label_444:
	mov	dword ptr [dword ptr [unicode_to_mb.initialized]],  1
.label_452:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	lea	rsi, [rsi]
	jne	.label_451
	mov	rax, -1
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
	mov	rsp, rsp
	jne	.label_454
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	call	rax
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_445
.label_454:
	jmp	.label_451
.label_451:
	mov	edx, 6
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x4e]
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	call	u8_uctomb
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_449
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	call	rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_445
.label_449:
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_448
	lea	rsi, [rbp - 0x28]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x58]
	nop	
	lea	rcx, [rbp - 0x18]
	nop	
	lea	r8, [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x90]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x4e]
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x58], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	qword ptr [rbp - 0x60], 0x19
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [unicode_to_mb.utf8_to_local]]
	call	iconv
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	ja	.label_453
	cmp	qword ptr [rbp - 0x98], -1
	jne	.label_447
.label_453:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	rcx
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_445
.label_447:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x18]
	mov	rsp, rsp
	lea	r8, [rbp - 0x60]
	mov	rdi,  qword ptr [word ptr [unicode_to_mb.utf8_to_local]]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	iconv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], -1
	jne	.label_450
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	rcx
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_445
.label_450:
	lea	rax, [rbp - 0x90]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	rcx
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_445
.label_448:
	lea	rdi, [rbp - 0x4e]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_445:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407580

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	call	fwrite
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	ecx, r8d
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407600

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:fwrite_success_callback
	movabs	rcx, OFFSET FLAT:fallback_failure_callback
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:exit_failure_callback
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	cmovne	rcx, r8
	mov	r8, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rcx, r8
	call	unicode_to_mb
	mov	qword ptr [rbp - 8], rax
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407670

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_455
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	ecx, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	nop	
	jmp	.label_456
.label_455:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	gettext
	mov	ecx, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 8], ecx
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 8]
	mov	r8, rax
	mov	al, 0
	nop	
	call	error
.label_456:
	lea	rsi, [rsi]
	mov	rax, -1
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407720

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rdx
	cmp	dword ptr [rbp - 4], 0x10000
	nop	
	jae	.label_457
	movabs	rsi, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	jmp	.label_458
.label_457:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.7_0
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_458:
	mov	rax, -1
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077c0

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x10], esi
	nop	
	mov	dword ptr [rbp - 8], edx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0x80
	nop	
	jae	.label_459
	mov	rsp, rsp
	cmp	dword ptr [rbp - 8], 0
	jle	.label_471
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rdx], cl
	nop	
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_470
.label_471:
	jmp	.label_473
.label_459:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0x800
	jae	.label_468
	mov	dword ptr [rbp - 0x14], 2
	lea	rsi, [rsi]
	jmp	.label_461
.label_468:
	cmp	dword ptr [rbp - 0x10], 0x10000
	nop	
	jae	.label_477
	cmp	dword ptr [rbp - 0x10], 0xd800
	jb	.label_469
	cmp	dword ptr [rbp - 0x10], 0xe000
	lea	rsi, [rsi]
	jb	.label_466
.label_469:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 3
	jmp	.label_472
.label_466:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_470
.label_472:
	lea	rdi, [rdi]
	jmp	.label_475
.label_477:
	nop	
	cmp	dword ptr [rbp - 0x10], 0x110000
	jae	.label_460
	nop	
	mov	dword ptr [rbp - 0x14], 4
	jmp	.label_467
.label_460:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_470
.label_467:
	lea	rsi, [rsi]
	jmp	.label_475
.label_475:
	lea	rsi, [rsi]
	jmp	.label_461
.label_461:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x14]
	jl	.label_478
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	je	.label_463
	mov	rsp, rsp
	jmp	.label_474
.label_474:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 3
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_476
	jmp	.label_462
.label_462:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	jne	.label_464
	jmp	.label_465
.label_465:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x3f
	mov	rbp, rbp
	or	eax, 0x80
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 3], cl
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	shr	eax, 6
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	or	eax, 0x10000
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
.label_476:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	and	eax, 0x3f
	mov	rbp, rbp
	or	eax, 0x80
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rdx + 2], cl
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	shr	eax, 6
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	or	eax, 0x800
	mov	dword ptr [rbp - 0x10], eax
.label_463:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	eax, 0x3f
	or	eax, 0x80
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rdx + 1], cl
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	shr	eax, 6
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 0xc0
	mov	dword ptr [rbp - 0x10], eax
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
.label_464:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_470
.label_478:
	jmp	.label_473
.label_473:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xfffffffe
.label_470:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a10

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
	je	.label_482
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
	jmp	.label_480
.label_482:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_480:
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
	ja	.label_481
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_483]]
	jmp	rcx
.label_688:
	jmp	.label_479
.label_689:
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
	jmp	.label_479
.label_690:
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
	jmp	.label_479
.label_691:
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
	jmp	.label_479
.label_692:
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
	jmp	.label_479
.label_693:
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
	jmp	.label_479
.label_694:
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
	jmp	.label_479
.label_695:
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
	jmp	.label_479
.label_696:
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
	jmp	.label_479
.label_697:
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
	jmp	.label_479
.label_481:
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
.label_479:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408250
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
.label_484:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_485
	mov	rbp, rbp
	jmp	.label_486
.label_486:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_484
.label_485:
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
	#Procedure 0x408300

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
.label_488:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_490
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
	jmp	.label_489
.label_490:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_489:
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
.label_491:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_487
	mov	rsp, rsp
	jmp	.label_492
.label_487:
	jmp	.label_493
.label_493:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_488
.label_492:
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
	#Procedure 0x408460

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
	je	.label_494
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
.label_494:
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
	#Procedure 0x408620
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
	.align	16
	#Procedure 0x4086d0
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
	jae	.label_495
	mov	rbp, rbp
	call	xalloc_die
.label_495:
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
	#Procedure 0x408730

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
	jne	.label_496
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_496
	lea	rdi, [rdi]
	call	xalloc_die
.label_496:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408790
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
	jae	.label_497
	mov	rsp, rsp
	call	xalloc_die
.label_497:
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
	#Procedure 0x408810

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
	jne	.label_498
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_498
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_500
.label_498:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_499
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_499
	lea	rsi, [rsi]
	call	xalloc_die
.label_499:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088c0

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
	jne	.label_501
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_503
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
.label_503:
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
	jae	.label_505
	call	xalloc_die
.label_505:
	lea	rsi, [rsi]
	jmp	.label_504
.label_501:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_502
	call	xalloc_die
.label_502:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_504:
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
	#Procedure 0x4089f0

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
	#Procedure 0x408a20
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
	#Procedure 0x408a60
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
	#Procedure 0x408ab0
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
	jb	.label_506
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_507
.label_506:
	lea	rsi, [rsi]
	call	xalloc_die
.label_507:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b20

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
	#Procedure 0x408b70
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
	#Procedure 0x408bd0

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
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408c30

	.globl xprintf
	.type xprintf, @function
xprintf:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0x20], xmm7
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmmword ptr [rbp - 0x1b0], xmm4
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmmword ptr [rbp - 0x50], xmm2
	movaps	xmmword ptr [rbp - 0x90], xmm1
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], r9
	mov	qword ptr [rbp - 0x1a0], r8
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	je	.label_508
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x160], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0xa0]
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm3
	lea	rdi, [rdi]
	movaps	xmm4, xmmword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm4
	lea	rsi, [rsi]
	movaps	xmm5, xmmword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0xf0], xmm7
.label_508:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x198]
	nop	
	mov	qword ptr [rbp - 0x168], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], rcx
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], rdx
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x188], rdi
	mov	r8, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r8
	lea	rdi, [rdi]
	lea	r8, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], r8
	mov	dword ptr [rbp - 0xdc], 0x30
	mov	dword ptr [rbp - 0xe0], 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	lea	rsi, [rbp - 0xe0]
	nop	
	call	xvprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408dd0

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	vprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_509
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_509
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_509:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e80
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1b0
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x180], xmm6
	nop	
	movaps	xmmword ptr [rbp - 0x10], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x40], xmm2
	movaps	xmmword ptr [rbp - 0x50], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x138], rdx
	mov	qword ptr [rbp - 0x140], rsi
	nop	
	je	.label_510
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	lea	rsi, [rsi]
	movaps	xmm1, xmmword ptr [rbp - 0x50]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x40]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x10]
	nop	
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_510:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rcx, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rsi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x140]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], rdi
	nop	
	lea	rdi, [rbp - 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	rbp, rbp
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1a8], rdi
	nop	
	mov	dword ptr [rbp - 0x1ac], 0x30
	nop	
	mov	dword ptr [rbp - 0x1b0], 0x10
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rdx, [rbp - 0x1b0]
	call	xvfprintf
	mov	dword ptr [rbp - 0x144], eax
	nop	
	add	rsp, 0x1b0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409050

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	vfprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_511
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	ferror
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_511
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x14], edi
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_511:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409100

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
	jne	.label_512
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_512:
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
	ja	.label_513
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_513
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_513
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
	jmp	.label_514
.label_513:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_514:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091f0

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
	jne	.label_515
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_519
.label_515:
	mov	rbp, rbp
	jmp	.label_516
.label_516:
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
	jne	.label_517
	jmp	.label_518
.label_517:
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
	je	.label_516
.label_518:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_519:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092e0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsp, rsp
	call	c_locale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_520
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_524
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_524:
	mov	rbp, rbp
	fldz	
	fstp	xword ptr [rbp - 0x40]
	jmp	.label_523
.label_520:
	mov	rdi, qword ptr [rbp - 8]
	call	uselocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_521
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	je	.label_525
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_525:
	fldz	
	fstp	xword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jmp	.label_523
.label_521:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x58]
	call	strtold
	fstp	xword ptr [rbp - 0x50]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	uselocale
	cmp	rax, 0
	jne	.label_522
	mov	rsp, rsp
	call	abort
.label_522:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	nop	
	fld	xword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	fstp	xword ptr [rbp - 0x40]
.label_523:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x40]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409400

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_526
	mov	rsp, rsp
	mov	edi, 0x1fbf
	nop	
	movabs	rsi, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_526:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409450

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
	jne	.label_529
	test	byte ptr [rbp - 0x15], 1
	je	.label_528
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_529
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_528
.label_529:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_527
	call	__errno_location
	mov	dword ptr [rax], 0
.label_527:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_530
.label_528:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_530:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409530

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
	je	.label_532
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_533
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_531
.label_533:
	mov	byte ptr [rbp - 0xd], 0
.label_531:
	jmp	.label_532
.label_532:
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
	#Procedure 0x4095d0

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
	jne	.label_535
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_535:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_534
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_534:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409650

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
	jge	.label_540
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_538
.label_540:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_537
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
	je	.label_536
.label_537:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_536
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_536:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_539
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
.label_539:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_538:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409770

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
	je	.label_541
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_542
.label_541:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_543
.label_542:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_543:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097e0

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
	je	.label_544
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
.label_544:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409840

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
	jne	.label_545
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_545
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_545
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
	jne	.label_547
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_546
.label_547:
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
	jmp	.label_546
.label_545:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_546:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409950

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
	ja	.label_548
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_549
.label_548:
	lea	rsi, [rsi]
	jmp	.label_549
.label_549:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099b0
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
	#Procedure 0x409a20
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
	#Procedure 0x409a70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_560
	jmp	.label_562
.label_562:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_561
.label_560:
	mov	byte ptr [rbp - 1], 0
.label_561:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409aa0
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
	#Procedure 0x409ad0
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
	#Procedure 0x409b20
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
	#Procedure 0x409b60
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
	#Procedure 0x409ba0
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
	#Procedure 0x409be0
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
	#Procedure 0x409c20
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
	#Procedure 0x409ca0
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
	#Procedure 0x409cf0
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
	#Procedure 0x409d30
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
	#Procedure 0x409da0

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
	#Procedure 0x409de0
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
