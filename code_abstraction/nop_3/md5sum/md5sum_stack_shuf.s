	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401680

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x30], edi
	cmp	dword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_7
	jmp	.label_8
.label_8:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.2
	mov	ecx, 0x80
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x38], eax
	call	emit_stdin_note
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_9:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401930

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_11:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	je	.label_12
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	sete	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 1], cl
.label_12:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	mov	rsp, rsp
	jne	.label_14
	lea	rdi, [rdi]
	jmp	.label_13
.label_14:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_11
.label_13:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_10
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.45
	nop	
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	setlocale
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_15
	nop	
	movabs	rsi, OFFSET FLAT:.str.47
	mov	rsp, rsp
	mov	eax, 3
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_15
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
.label_15:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.50
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.51
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b50

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x140
	mov	eax, 4
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x60]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 0
	mov	dword ptr [rbp - 0xe4], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	ptr_align
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x119], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], 0xffffffff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.16
	mov	qword ptr [rbp - 0x110], rax
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.15
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	call	textdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	call	atexit
	nop	
	xor	r8d, r8d
	mov	ecx, r8d
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	call	setvbuf
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x100], eax
.label_49:
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	getopt_long
	nop	
	mov	dword ptr [rbp - 0x120], eax
	mov	rsp, rsp
	cmp	eax, -1
	je	.label_54
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x120]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], ecx
	je	.label_56
	mov	rbp, rbp
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0xffffff7e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_63
	mov	rsp, rsp
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0x78], eax
	lea	rsi, [rsi]
	je	.label_67
	jmp	.label_19
.label_19:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x63
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	je	.label_20
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_27
	mov	rsp, rsp
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x104], eax
	mov	rbp, rbp
	je	.label_35
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	je	.label_41
	mov	rsp, rsp
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x80
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], eax
	je	.label_17
	nop	
	jmp	.label_48
.label_48:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x81
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	nop	
	je	.label_53
	nop	
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x82
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	mov	rbp, rbp
	je	.label_43
	nop	
	jmp	.label_62
.label_62:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x83
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_64
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_69
	mov	rbp, rbp
	jmp	.label_30
.label_67:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], 1
	jmp	.label_24
.label_20:
	nop	
	mov	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jmp	.label_24
.label_53:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [status_only]],  1
	mov	byte ptr [byte ptr [warn]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [quiet]],  0
	jmp	.label_24
.label_27:
	mov	dword ptr [rbp - 0x80], 0
	nop	
	jmp	.label_24
.label_35:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [status_only]],  0
	mov	byte ptr [byte ptr [warn]],  1
	mov	byte ptr [byte ptr [quiet]],  0
	jmp	.label_24
.label_17:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [ignore_missing]],  1
	lea	rsi, [rsi]
	jmp	.label_24
.label_43:
	mov	byte ptr [byte ptr [status_only]],  0
	mov	byte ptr [byte ptr [warn]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [quiet]],  1
	jmp	.label_24
.label_64:
	nop	
	mov	byte ptr [byte ptr [strict]],  1
	nop	
	jmp	.label_24
.label_69:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], 1
	lea	rsi, [rsi]
	jmp	.label_24
.label_41:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [delim]],  0
	jmp	.label_24
.label_63:
	xor	edi, edi
	nop	
	call	usage
.label_56:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	nop	
	movabs	r8, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:.str.20
	movabs	rax, OFFSET FLAT:.str.21
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rdi, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_30:
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_24:
	mov	rsp, rsp
	jmp	.label_49
.label_54:
	mov	rsp, rsp
	mov	qword ptr [word ptr [min_digest_line_length]],  0x22
	mov	qword ptr [word ptr [digest_hex_bytes]],  0x20
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_51
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x80], 0
	jne	.label_51
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_51:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [delim]]
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rbp, rbp
	je	.label_21
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_21
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_21:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_29
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_29
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.24
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_29:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x80]
	jg	.label_32
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_32
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_32:
	test	byte ptr [byte ptr [ignore_missing]],  1
	mov	rbp, rbp
	je	.label_18
	test	byte ptr [rbp - 0x19], 1
	jne	.label_18
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.26
	nop	
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_18:
	nop	
	test	byte ptr [byte ptr [status_only]],  1
	je	.label_39
	test	byte ptr [rbp - 0x19], 1
	jne	.label_39
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_39:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [warn]],  1
	mov	rbp, rbp
	je	.label_55
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jne	.label_55
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_55:
	test	byte ptr [byte ptr [quiet]],  1
	je	.label_23
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jne	.label_23
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	nop	
	call	usage
.label_23:
	mov	al,  byte ptr [byte ptr [strict]]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	and	ecx, edx
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_40
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_40:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x80], 0
	jge	.label_58
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], 0
.label_58:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsxd	rcx, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	shl	rcx, 3
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	edx,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	cmp	edx, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	jne	.label_47
	nop	
	movabs	rdi, OFFSET FLAT:.str.31
	call	bad_cast
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, rdi
	nop	
	add	rcx, 8
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
.label_47:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	nop	
	shl	rcx, 3
	nop	
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rax
.label_50:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_37
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	je	.label_45
	mov	rdi, qword ptr [rbp - 0xf8]
	call	digest_check
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	lea	rsi, [rsi]
	jmp	.label_42
.label_45:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x74]
	lea	rcx, [rbp - 0xb9]
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x74], eax
	nop	
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	call	digest_file
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_16
	mov	byte ptr [rbp - 0x119], 0
	jmp	.label_34
.label_16:
	mov	esi, 0x5c
	nop	
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	strchr
	cmp	rax, 0
	jne	.label_28
	lea	rdi, [rdi]
	mov	esi, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0xf8]
	call	strchr
	xor	esi, esi
	mov	cl, sil
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
	je	.label_59
.label_28:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [delim]]
	cmp	eax, 0xa
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
.label_59:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], al
	nop	
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_60
	nop	
	test	byte ptr [rbp - 0x121], 1
	mov	rsp, rsp
	je	.label_52
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x94], eax
.label_52:
	nop	
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x121]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	call	print_filename
	movabs	rdi, OFFSET FLAT:.str.33
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x88], eax
.label_60:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	jne	.label_33
	mov	rsp, rsp
	test	byte ptr [rbp - 0x121], 1
	je	.label_33
	lea	rsi, [rsi]
	mov	edi, 0x5c
	mov	rsp, rsp
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
.label_33:
	mov	qword ptr [rbp - 0xd8], 0
.label_61:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [digest_hex_bytes]]
	shr	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_22
	movabs	rdi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rcx + rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x8c], eax
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_61
.label_22:
	test	byte ptr [rbp - 0x79], 1
	jne	.label_25
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	ecx, 0x2a
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x74], 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xb8], eax
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x121]
	and	dl, 1
	mov	rsp, rsp
	movzx	esi, dl
	nop	
	mov	dword ptr [rbp - 0x90], eax
	nop	
	call	print_filename
.label_25:
	movzx	edi,  byte ptr [byte ptr [delim]]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x118], eax
.label_34:
	lea	rsi, [rsi]
	jmp	.label_42
.label_42:
	lea	rsi, [rsi]
	jmp	.label_44
.label_44:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	add	rax, 8
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_50
.label_37:
	mov	rsp, rsp
	test	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	je	.label_36
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_36
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.35
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x38], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x38]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_36:
	mov	eax, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x119]
	nop	
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x140
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rbp - 0x18]
	nop	
	add	rsi, -1
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	xor	edx, edx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	rbp, rbp
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl digest_check
	.type digest_check, @function
digest_check:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	eax, 4
	mov	esi, eax
	lea	rcx, [rbp - 0x120]
	mov	qword ptr [rbp - 0x90], rdi
	mov	qword ptr [rbp - 0x100], 0
	nop	
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0xd1], 0
	mov	byte ptr [rbp - 0x91], 0
	mov	rdi, rcx
	call	ptr_align
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	mov	edx, OFFSET FLAT:.str.31
	mov	esi, edx
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb], r8b
	test	byte ptr [rbp - 0xb], 1
	nop	
	je	.label_75
	movabs	rdi, OFFSET FLAT:.str.35
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	jmp	.label_71
.label_75:
	movabs	rsi, OFFSET FLAT:.str.64
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	fopen_safer
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x130], 0
	jne	.label_97
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xac]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99], 0
	mov	rbp, rbp
	jmp	.label_72
.label_97:
	lea	rdi, [rdi]
	jmp	.label_71
.label_71:
	mov	qword ptr [rbp - 0xe8], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	qword ptr [rbp - 0xc8], 0
.label_115:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_76
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
.label_76:
	lea	rdi, [rbp - 0xd0]
	lea	rsi, [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x130]
	call	getline
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	lea	rdi, [rdi]
	jg	.label_106
	nop	
	jmp	.label_112
.label_106:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	mov	rbp, rbp
	jne	.label_114
	lea	rdi, [rdi]
	jmp	.label_99
.label_114:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	nop	
	jne	.label_70
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax - 1], 0
.label_70:
	lea	rdx, [rbp - 0xa8]
	lea	rcx, [rbp - 0x3c]
	lea	r8, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	split_3
	test	al, 1
	mov	rsp, rsp
	jne	.label_111
	jmp	.label_93
.label_111:
	nop	
	test	byte ptr [rbp - 0xb], 1
	je	.label_95
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:.str.31
	nop	
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_95
.label_93:
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 1
	mov	qword ptr [rbp - 0x100], rax
	test	byte ptr [byte ptr [warn]],  1
	je	.label_101
	movabs	rdi, OFFSET FLAT:.str.67
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	esi, esi
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_101:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_77
.label_95:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [status_only]],  1
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	jne	.label_83
	nop	
	mov	esi, 0xa
	mov	rdi, qword ptr [rbp - 0x28]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
.label_83:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rbp - 0x3c]
	mov	rbp, rbp
	lea	rcx, [rbp - 9]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	byte ptr [rbp - 0xd1], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	digest_file
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x139], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x139], 1
	lea	rsi, [rsi]
	jne	.label_104
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_113
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_117
	nop	
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
.label_117:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x51]
	lea	rsi, [rsi]
	and	al, 1
	movzx	esi, al
	call	print_filename
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.69
	call	gettext
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	rsi, rax
	nop	
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6c], eax
.label_113:
	jmp	.label_86
.label_104:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_87
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	je	.label_87
	lea	rdi, [rdi]
	jmp	.label_92
.label_87:
	mov	rax,  qword ptr [word ptr [digest_hex_bytes]]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x68], 0
.label_88:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_85
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	movzx	edi, byte ptr [rdx + rcx]
	sar	edi, 4
	nop	
	movsxd	rcx, edi
	mov	rbp, rbp
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + digest_check.bin2hex]]
	cmp	eax, edi
	jne	.label_110
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edi, byte ptr [rcx + rax + 1]
	call	tolower
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	movzx	edi, byte ptr [rdx + rcx]
	and	edi, 0xf
	movsxd	rcx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + digest_check.bin2hex]]
	cmp	eax, edi
	je	.label_74
.label_110:
	mov	rbp, rbp
	jmp	.label_85
.label_74:
	jmp	.label_80
.label_80:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_88
.label_85:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	je	.label_79
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_89
.label_79:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
.label_89:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_98
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jne	.label_100
	test	byte ptr [byte ptr [quiet]],  1
	lea	rsi, [rsi]
	jne	.label_96
.label_100:
	test	byte ptr [rbp - 0x51], 1
	je	.label_109
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x124], eax
.label_109:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x51]
	mov	rsp, rsp
	and	al, 1
	movzx	esi, al
	call	print_filename
.label_96:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_118
	movabs	rdi, OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_91
.label_118:
	mov	rsp, rsp
	test	byte ptr [byte ptr [quiet]],  1
	mov	rsp, rsp
	jne	.label_108
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.71
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.68
	nop	
	mov	rsi, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 0x14], eax
.label_108:
	jmp	.label_91
.label_91:
	lea	rdi, [rdi]
	jmp	.label_98
.label_98:
	jmp	.label_92
.label_92:
	mov	rbp, rbp
	jmp	.label_86
.label_86:
	lea	rsi, [rsi]
	jmp	.label_77
.label_77:
	jmp	.label_99
.label_99:
	mov	rdi, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	call	feof_unlocked
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xa], dl
	jne	.label_105
	nop	
	mov	rdi, qword ptr [rbp - 0x130]
	nop	
	call	ferror_unlocked
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], cl
.label_105:
	mov	al, byte ptr [rbp - 0xa]
	test	al, 1
	jne	.label_115
.label_112:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	mov	rdi, qword ptr [rbp - 0x130]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_102
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.72
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x138]
	nop	
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x99], 0
	lea	rsi, [rsi]
	jmp	.label_72
.label_102:
	test	byte ptr [rbp - 0xb], 1
	mov	rbp, rbp
	jne	.label_94
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_94
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], ecx
	nop	
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xec]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99], 0
	lea	rsi, [rsi]
	jmp	.label_72
.label_94:
	test	byte ptr [rbp - 0xd1], 1
	jne	.label_73
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.73
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 8], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_90
.label_73:
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_78
	cmp	qword ptr [rbp - 0x100], 0
	je	.label_84
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	call	select_plural
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.74
	movabs	rsi, OFFSET FLAT:.str.75
	mov	rdx, rax
	nop	
	call	ngettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_84:
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	je	.label_116
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	select_plural
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.76
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.77
	mov	rdx, rax
	lea	rdi, [rdi]
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_116:
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_82
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	call	select_plural
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.78
	nop	
	movabs	rsi, OFFSET FLAT:.str.79
	mov	rdx, rax
	call	ngettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	call	error
.label_82:
	mov	rsp, rsp
	test	byte ptr [byte ptr [ignore_missing]],  1
	lea	rsi, [rsi]
	je	.label_107
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_107
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_107:
	jmp	.label_78
.label_78:
	nop	
	jmp	.label_90
.label_90:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd1], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], cl
	lea	rsi, [rsi]
	je	.label_81
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	byte ptr [rbp - 0x91], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], cl
	mov	rsp, rsp
	je	.label_81
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	mov	byte ptr [rbp - 0x81], cl
	lea	rdi, [rdi]
	jne	.label_81
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x81], cl
	mov	rbp, rbp
	jne	.label_81
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [strict]],  1
	mov	byte ptr [rbp - 0x92], al
	je	.label_103
	cmp	qword ptr [rbp - 0xf8], 0
	sete	al
	mov	byte ptr [rbp - 0x92], al
.label_103:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x92]
	mov	byte ptr [rbp - 0x81], al
.label_81:
	mov	al, byte ptr [rbp - 0x81]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
.label_72:
	nop	
	mov	al, byte ptr [rbp - 0x99]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x150
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl digest_file
	.type digest_file, @function
digest_file:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	eax, OFFSET FLAT:.str.31
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	r8b
	nop	
	and	r8b, 1
	mov	byte ptr [rbp - 0x25], r8b
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x25], 1
	mov	rsp, rsp
	je	.label_125
	mov	rsp, rsp
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_121
.label_125:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.64
	mov	rdi, qword ptr [rbp - 0x20]
	call	fopen_safer
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_119
	mov	rbp, rbp
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_124
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_124
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_120
.label_124:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x39], 0
	lea	rsi, [rsi]
	jmp	.label_120
.label_119:
	mov	rsp, rsp
	jmp	.label_121
.label_121:
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	fadvise
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	md5_stream
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	je	.label_122
	call	__errno_location
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [stdin]]
	je	.label_126
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
.label_126:
	mov	byte ptr [rbp - 0x39], 0
	mov	rsp, rsp
	jmp	.label_120
.label_122:
	test	byte ptr [rbp - 0x25], 1
	lea	rsi, [rsi]
	jne	.label_123
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_123
	call	__errno_location
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_120
.label_123:
	nop	
	mov	byte ptr [rbp - 0x39], 1
.label_120:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl print_filename
	.type print_filename, @function
print_filename:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	al, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	nop	
	jne	.label_130
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_127
.label_130:
	lea	rdi, [rdi]
	jmp	.label_132
.label_132:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_127
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0xa
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	nop	
	je	.label_131
	jmp	.label_134
.label_134:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	je	.label_133
	nop	
	jmp	.label_129
.label_131:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.81
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_128
.label_133:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_128
.label_129:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_128:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_132
.label_127:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0

	.globl split_3
	.type split_3, @function
split_3:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	byte ptr [rbp - 0x51], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
.label_136:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2a], al
	je	.label_140
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 9
	mov	rsp, rsp
	sete	sil
	mov	byte ptr [rbp - 0x2a], sil
.label_140:
	mov	al, byte ptr [rbp - 0x2a]
	nop	
	test	al, 1
	jne	.label_142
	jmp	.label_145
.label_142:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_136
.label_145:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x5c
	mov	rsp, rsp
	jne	.label_152
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	byte ptr [rbp - 0x51], 1
.label_152:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_146
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	jne	.label_150
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_150:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x28
	mov	rsp, rsp
	jne	.label_147
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dil, byte ptr [rbp - 0x51]
	lea	rdi, [rdi]
	and	dil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], dil
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 0x19]
	movzx	r8d, r8b
	call	bsd_split_3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	jmp	.label_135
.label_147:
	mov	byte ptr [rbp - 0x29], 0
	lea	rdi, [rdi]
	jmp	.label_135
.label_146:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [min_digest_line_length]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	edi, byte ptr [rsi + rdx]
	mov	rbp, rbp
	cmp	edi, 0x5c
	sete	r8b
	and	r8b, 1
	movzx	edi, r8b
	movsxd	rdx, edi
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_143
	mov	byte ptr [rbp - 0x29], 0
	lea	rsi, [rsi]
	jmp	.label_135
.label_143:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [digest_hex_bytes]]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	lea	rsi, [rsi]
	je	.label_148
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 9
	mov	rbp, rbp
	je	.label_148
	mov	byte ptr [rbp - 0x29], 0
	lea	rsi, [rsi]
	jmp	.label_135
.label_148:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	call	hex_digits
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_137
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_135
.label_137:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, 1
	je	.label_151
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	lea	rdi, [rdi]
	je	.label_139
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	cmp	edx, 0x2a
	je	.label_139
.label_151:
	cmp	dword ptr [dword ptr [bsd_reversed]],  0
	jne	.label_149
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
	mov	rbp, rbp
	jmp	.label_135
.label_149:
	mov	dword ptr [dword ptr [bsd_reversed]],  1
	lea	rsi, [rsi]
	jmp	.label_138
.label_139:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [bsd_reversed]],  1
	je	.label_144
	mov	rsp, rsp
	mov	dword ptr [dword ptr [bsd_reversed]],  0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2a
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], edx
.label_144:
	lea	rsi, [rsi]
	jmp	.label_138
.label_138:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	je	.label_141
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rbp, rbp
	call	filename_unescape
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	nop	
	and	dl, 1
	mov	byte ptr [rbp - 0x29], dl
	jmp	.label_135
.label_141:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 1
.label_135:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], -1
	lea	rdi, [rdi]
	ja	.label_153
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_153:
	nop	
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	xor	edx, edx
	div	rcx
	lea	rsi, [rsi]
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 8], rdx
.label_154:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b90

	.globl bsd_split_3
	.type bsd_split_3, @function
bsd_split_3:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	al, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 1], al
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_164
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_157
.label_164:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_166:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x32], cl
	lea	rdi, [rdi]
	je	.label_162
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x29
	mov	rbp, rbp
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x32], sil
.label_162:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_160
	jmp	.label_163
.label_160:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_166
.label_163:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x29
	je	.label_170
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_157
.label_170:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_158
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	filename_unescape
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_158
	nop	
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_157
.label_158:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
.label_161:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	movsx	esi, byte ptr [rdx + rcx]
	lea	rdi, [rdi]
	cmp	esi, 0x20
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], al
	lea	rsi, [rsi]
	je	.label_155
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	lea	rsi, [rsi]
	sete	sil
	mov	byte ptr [rbp - 0x41], sil
.label_155:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_156
	mov	rbp, rbp
	jmp	.label_159
.label_156:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_161
.label_159:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3d
	je	.label_168
	mov	byte ptr [rbp - 0x11], 0
	mov	rsp, rsp
	jmp	.label_157
.label_168:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_171:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	esi, byte ptr [rdx + rcx]
	lea	rsi, [rsi]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	je	.label_165
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], sil
.label_165:
	mov	al, byte ptr [rbp - 0x31]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_167
	lea	rsi, [rsi]
	jmp	.label_169
.label_167:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_171
.label_169:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	call	hex_digits
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_157:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20

	.globl hex_digits
	.type hex_digits, @function
hex_digits:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], 0
.label_172:
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [digest_hex_bytes]]
	mov	rbp, rbp
	jae	.label_173
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 0x1000
	cmp	ecx, 0
	nop	
	jne	.label_174
	mov	byte ptr [rbp - 5], 0
	jmp	.label_175
.label_174:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_172
.label_173:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], dl
.label_175:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl filename_unescape
	.type filename_unescape, @function
filename_unescape:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_182:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_180
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	test	edx, edx
	mov	dword ptr [rbp - 0x2c], edx
	je	.label_188
	mov	rbp, rbp
	jmp	.label_191
.label_191:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	sub	eax, 0x5c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jne	.label_177
	mov	rsp, rsp
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jne	.label_185
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jmp	.label_176
.label_185:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	inc	rcx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	esi, edx
	nop	
	sub	esi, 0x5c
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_179
	mov	rbp, rbp
	jmp	.label_190
.label_190:
	nop	
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_178
	jmp	.label_184
.label_184:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_186
.label_179:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x5c
	jmp	.label_186
.label_178:
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jmp	.label_176
.label_186:
	nop	
	jmp	.label_189
.label_188:
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_176
.label_177:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], dl
.label_189:
	lea	rdi, [rdi]
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_182
.label_180:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, rcx
	jae	.label_187
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_187:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_176:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4040c0
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
	#Procedure 0x4040f0
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
	#Procedure 0x404120

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
	je	.label_192
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_193
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_192
.label_193:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_196
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
	jmp	.label_194
.label_196:
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
.label_194:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_192:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_195
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_195:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi], 0x67452301
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 8], 0x98badcfe
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x18], 0
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042c0

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsi]
	call	set_uint32
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 4
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 4]
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	set_uint32
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdi + 0xc]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	set_uint32
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rdi], esi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404390

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	eax, 0x20
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rsi + 0x18]
	mov	dword ptr [rbp - 0x24], edx
	nop	
	cmp	dword ptr [rbp - 0x24], 0x38
	cmovb	eax, ecx
	nop	
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x20], rsi
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x18]
	add	eax, dword ptr [rsi + 0x10]
	mov	dword ptr [rsi + 0x10], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x24]
	jae	.label_197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 0x14], ecx
.label_197:
	movabs	rsi, OFFSET FLAT:fillbuf
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x10]
	shl	ecx, 3
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x14]
	shl	ecx, 3
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x10]
	nop	
	shr	edi, 0x1d
	mov	rbp, rbp
	or	ecx, edi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x24]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 2
	shl	rax, 2
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	r8d, ecx
	sub	rax, r8
	nop	
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x1c
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	shl	rdx, 2
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	md5_process_block
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_read_ctx
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404500

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x90], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	shr	rdx, 2
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	shl	rsi, 2
	add	rdx, rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rdx]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	mov	rdx, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rdx + 0xc]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	eax, edx
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	eax, dword ptr [rdx + 0x10]
	mov	dword ptr [rdx + 0x10], eax
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	shr	rdx, 0x1f
	shr	rdx, 1
	mov	rsi, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	setb	cl
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	edi, eax
	add	rdi, rdx
	mov	eax, edi
	mov	dword ptr [rsi + 0x14], eax
.label_219:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_199
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x94], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xc], ecx
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x84], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x80], ecx
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	rsp, rsp
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xd76aa478
	nop	
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	nop	
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_212
.label_212:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 4
	nop	
	mov	qword ptr [rbp - 0x78], rdi
	mov	rsp, rsp
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	add	eax, 0xe8c7b756
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xc
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x14
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_246
.label_246:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x242070db
	nop	
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0x11
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_205
.label_205:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	nop	
	add	eax, 0xc1bdceee
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x16
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xa
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_220
.label_220:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	and	ecx, edx
	nop	
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	add	eax, 0xf57c0faf
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rsi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x19
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_234
.label_234:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x88]
	nop	
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	add	eax, 0x4787c62a
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	add	rsi, 4
	nop	
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xc
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_230
.label_230:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	edx, dword ptr [rbp - 0x88]
	nop	
	and	ecx, edx
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa8304613
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	rsi, 4
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shl	eax, 0x11
	nop	
	mov	ecx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_201
.label_201:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	lea	rdi, [rdi]
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0xfd469501
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	eax, 0x16
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x98]
	nop	
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	nop	
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	nop	
	add	eax, 0x698098d8
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	shr	ecx, 0x19
	mov	rbp, rbp
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_245
.label_245:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x88]
	nop	
	xor	edx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x8b44f7af
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x14
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	jmp	.label_254
.label_254:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	nop	
	add	eax, 0xffff5bb1
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0x11
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0xf
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_208
.label_208:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x895cd7be
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x16
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xa
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_229
.label_229:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	mov	dword ptr [rsi], ecx
	lea	rdi, [rdi]
	add	eax, ecx
	add	eax, 0x6b901122
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shl	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shr	ecx, 0x19
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_248
.label_248:
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	xor	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0xfd987193
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shl	eax, 0xc
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x14
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_259
.label_259:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x54]
	xor	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	add	eax, 0xa679438e
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shr	ecx, 0xf
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_240
.label_240:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	nop	
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0x49b40821
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_226
.label_226:
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xf61e2562
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1b
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	eax, 0xc040b340
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 9
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_257
.label_257:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x54]
	nop	
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x265e5a51
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_210
.label_210:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xe9b6c7aa
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	jmp	.label_255
.label_255:
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 0xd62f105d
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_252
.label_252:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0x2441453
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_227
.label_227:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x14]
	add	eax, 0xd8a1e681
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xe
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_215
.label_215:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0xe7d3fbc8
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xc
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jmp	.label_203
.label_203:
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	nop	
	add	eax, 0x21e1cde6
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 5
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shr	ecx, 0x1b
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_262
.label_262:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	edx, dword ptr [rbp - 0x54]
	xor	edx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	eax, 0xc33707d6
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_247
.label_247:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	eax, 0xf4d50d87
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x12
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_231
.label_231:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	eax, 0x455a14ed
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xc
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_224
.label_224:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	nop	
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	eax, 0xa9e3e905
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shl	eax, 5
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	shr	ecx, 0x1b
	mov	rbp, rbp
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_223
.label_223:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	xor	edx, dword ptr [rbp - 0x88]
	nop	
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xfcefa3f8
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 9
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	nop	
	xor	edx, dword ptr [rbp - 0x54]
	nop	
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 0x676f02d9
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xe
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	jmp	.label_253
.label_253:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	eax, 0x8d2a4c8a
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xc
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_244
.label_244:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 0xfffa3942
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shr	ecx, 0x1c
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_237
.label_237:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	eax, 0x8771f681
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	jmp	.label_216
.label_216:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x6d9d6122
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x10
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_261
.label_261:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, 0xfde5380c
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x17
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	shr	ecx, 9
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_242
.label_242:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	eax, 0xa4beea44
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 4
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	jmp	.label_233
.label_233:
	mov	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x4bdecfa9
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shr	ecx, 0x15
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_214
.label_214:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0xf6bb4b60
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shr	ecx, 0x10
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_250
.label_250:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x28]
	nop	
	add	eax, 0xbebfbc70
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0x17
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_238
.label_238:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x1c]
	add	eax, 0x289b7ec6
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shr	ecx, 0x1c
	mov	rsp, rsp
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_243
.label_243:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xeaa127fa
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x15
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	jmp	.label_206
.label_206:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0xd4ef3085
	nop	
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	shr	ecx, 0x10
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_258
.label_258:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	eax, 0x4881d05
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	shl	eax, 0x17
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_232
.label_232:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	eax, 0xd9d4d039
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	eax, 4
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1c
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_225
.label_225:
	mov	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	eax, 0xe6db99e5
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x14]
	add	eax, 0x1fa27cf8
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0x10
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x10
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_241
.label_241:
	mov	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	eax, 0xc4ac5665
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x17
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	shr	ecx, 9
	mov	rsp, rsp
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jmp	.label_249
.label_249:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xf4292244
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shr	ecx, 0x1a
	mov	rsp, rsp
	or	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_213
.label_213:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, 0xffffffff
	or	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x432aff97
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x16
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_198
.label_198:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	lea	rdi, [rdi]
	or	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	eax, 0xab9423a7
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x11
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_200
.label_200:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 0xfc93a039
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	mov	rsp, rsp
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	jmp	.label_217
.label_217:
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	eax, 0x655b59c3
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	shl	eax, 6
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_235
.label_235:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, 0xffffffff
	mov	rsp, rsp
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 0x8f0ccc92
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x16
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_239
.label_239:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xffeff47d
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x11
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_260
.label_260:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	or	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0x85845dd1
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_256
.label_256:
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	eax, 0x6fa87e4f
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_251
.label_251:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	nop	
	xor	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 0xfe2ce6e0
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x16
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_211
.label_211:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xa3014314
	add	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x11
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_221
.label_221:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	lea	rsi, [rsi]
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	eax, 0x4e0811a1
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x15
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_209
.label_209:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	eax, 0xf7537e82
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 6
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1a
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, 0xffffffff
	or	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	add	eax, 0xbd3af235
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_236
.label_236:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	eax, 0x2ad7d2bb
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_228
.label_228:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	add	eax, 0xeb86d391
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_219
.label_199:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rcx + 4], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0xc], eax
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063a0

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	eax, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	afalg_stream
	lea	rsi, [rsi]
	mov	r8d, eax
	sub	eax, -5
	nop	
	mov	dword ptr [rbp - 0xe4], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	je	.label_270
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0xe4]
	nop	
	test	eax, eax
	jne	.label_263
	lea	rsi, [rsi]
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 0
	lea	rdi, [rdi]
	jmp	.label_269
.label_270:
	mov	dword ptr [rbp - 0xf4], 1
	jmp	.label_269
.label_263:
	mov	eax, 0x8048
	mov	edi, eax
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_265
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf4], 1
	jmp	.label_269
.label_265:
	lea	rdi, [rbp - 0xb8]
	call	md5_init_ctx
.label_271:
	mov	qword ptr [rbp - 0xf0], 0
.label_276:
	nop	
	mov	rdi, qword ptr [rbp - 0x100]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_268
	nop	
	jmp	.label_266
.label_268:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	esi, eax
	mov	eax, 0x8000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0xf0]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc0]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	cmp	qword ptr [rbp - 0xf0], 0x8000
	jne	.label_277
	mov	rbp, rbp
	jmp	.label_274
.label_277:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jne	.label_272
	nop	
	mov	rdi, qword ptr [rbp - 0x100]
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_264
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp - 0xf4], 1
	mov	rsp, rsp
	jmp	.label_269
.label_264:
	jmp	.label_266
.label_272:
	jmp	.label_276
.label_274:
	mov	eax, 0x8000
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	md5_process_block
	jmp	.label_271
.label_266:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xf0], 0
	lea	rsi, [rsi]
	jbe	.label_275
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	md5_process_bytes
.label_275:
	lea	rdi, [rbp - 0xb8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	free
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], 0
.label_269:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl afalg_stream
	.type afalg_stream, @function
afalg_stream:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	eax, 0xffffff9f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	dword ptr [rdx + 0x18], 0
	lea	rsi, [rsi]
	je	.label_279
	mov	rbp, rbp
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	edx, eax
	mov	qword ptr [rbp - 0x38], rdx
	sub	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jbe	.label_287
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_285
.label_287:
	lea	rdi, [rdi]
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rcx
.label_285:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x1c
	mov	rbp, rbp
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r8d, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, r8d
	mov	rsp, rsp
	add	rdx, rax
	nop	
	mov	r8d, edx
	mov	dword ptr [rcx + 0x18], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 0x18], 0x40
	mov	rsp, rsp
	jbe	.label_288
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 0x1c
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	edx, 0xffffffc0
	mov	edx, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 0x50]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0x3f
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 0x40]
	and	rcx, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x50]
	add	rdx, 0x1c
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r8d, dword ptr [rcx + 0x18]
	mov	ecx, r8d
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rcx
	call	memcpy
.label_288:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
.label_279:
	cmp	qword ptr [rbp - 0x18], 0x40
	mov	rsp, rsp
	jb	.label_286
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 3
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_278
	lea	rsi, [rsi]
	jmp	.label_281
.label_281:
	cmp	qword ptr [rbp - 0x18], 0x40
	mov	rbp, rbp
	jbe	.label_283
	mov	rsp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rdx, 0x1c
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	md5_process_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_281
.label_283:
	jmp	.label_284
.label_278:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	and	rax, 0xffffffffffffffc0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	md5_process_block
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	rdx, 0xffffffffffffffc0
	add	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0x3f
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_284:
	lea	rsi, [rsi]
	jmp	.label_286
.label_286:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_280
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0x40
	nop	
	jb	.label_282
	mov	eax, 0x40
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x1c
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, rcx
	call	md5_process_block
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	add	rdx, 0x1c
	add	rdx, 0x40
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	memcpy
.label_282:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x18], ecx
.label_280:
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a40
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdi, rax
	mov	rsp, rsp
	call	md5_init_ctx
	mov	rbp, rbp
	lea	rdx, [rbp - 0xa0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	md5_process_bytes
	lea	rdi, [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	call	md5_finish_ctx
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0

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
	.align	32
	#Procedure 0x406b00

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
	je	.label_289
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
.label_289:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b60

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
	je	.label_290
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_294
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jg	.label_294
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_291
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
	jmp	.label_293
.label_291:
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_292
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_295
.label_292:
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
	jmp	.label_293
.label_295:
	jmp	.label_294
.label_294:
	jmp	.label_290
.label_290:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_293:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ce0

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
	jne	.label_296
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_296:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_299
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_298
.label_299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_298:
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
	jl	.label_297
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
	jne	.label_297
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
	jne	.label_300
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_300:
	jmp	.label_297
.label_297:
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
	#Procedure 0x406e60
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
	je	.label_302
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_301
.label_302:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_301
.label_301:
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
	#Procedure 0x406f10
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
	je	.label_303
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_304
.label_303:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f70
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
	je	.label_305
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_306
.label_305:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

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
	je	.label_307
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_308
.label_307:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_308
.label_308:
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
	#Procedure 0x4070d0
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
	jne	.label_309
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_309:
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
	#Procedure 0x407130

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
	jne	.label_310
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_310:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_312
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_311
.label_312:
	call	abort
.label_311:
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
	#Procedure 0x4071d0
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
	je	.label_313
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_314
.label_313:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_314
.label_314:
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
	#Procedure 0x4072d0

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
.label_419:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_444
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_485]]
	jmp	rcx
.label_710:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_709:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_317
	jmp	.label_321
.label_321:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_323:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_317
.label_317:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_341
.label_711:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_341
.label_712:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_357
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
.label_357:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_374
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_397:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_380
	jmp	.label_383
.label_383:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_384
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_384:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_397
.label_380:
	mov	rbp, rbp
	jmp	.label_374
.label_374:
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
	jmp	.label_341
.label_707:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_706:
	mov	byte ptr [rbp - 0x3e], 1
.label_708:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_420
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_420:
	jmp	.label_423
.label_423:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_425
	jmp	.label_429
.label_429:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_511
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_511:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_425
.label_425:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_341
.label_705:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_341
.label_444:
	call	abort
.label_341:
	mov	qword ptr [rbp - 0xd8], 0
.label_448:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_445
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
	jmp	.label_446
.label_445:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_446:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_463
	mov	rbp, rbp
	jmp	.label_470
.label_463:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_472
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_472
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_472
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_322
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_322
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_492
.label_322:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_492:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_472
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
	jne	.label_472
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_512
	jmp	.label_324
.label_512:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_472:
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
	ja	.label_320
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_339]]
	nop	
	jmp	rcx
.label_715:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_346
	mov	rsp, rsp
	jmp	.label_350
.label_350:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_353
	jmp	.label_324
.label_353:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_355
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_355
	nop	
	jmp	.label_364
.label_364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_367
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_367:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_376
.label_376:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_379
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_379:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_386
.label_386:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_390
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_390:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_355:
	lea	rsi, [rsi]
	jmp	.label_401
.label_401:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_360:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_411
.label_411:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_416
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_416
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_416
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_416
	nop	
	jmp	.label_433
.label_433:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_434
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_434:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_403
.label_403:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_406:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_416
.label_416:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_449
.label_346:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_452
	mov	rbp, rbp
	jmp	.label_327
.label_452:
	jmp	.label_449
.label_449:
	jmp	.label_338
.label_726:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_461
	mov	rbp, rbp
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_468
	jmp	.label_475
.label_461:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_476
	jmp	.label_324
.label_476:
	jmp	.label_399
.label_468:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_333
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_333
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_333
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
	je	.label_370
	nop	
	jmp	.label_422
.label_422:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_370
	jmp	.label_504
.label_504:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_370
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_370
	jmp	.label_345
.label_345:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_378
	jmp	.label_370
.label_370:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_328
	jmp	.label_324
.label_328:
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
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_334:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_359
.label_359:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_315:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_371
.label_371:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_428
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_428:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_460
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_460:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_325
.label_378:
	jmp	.label_325
.label_325:
	jmp	.label_333
.label_333:
	jmp	.label_399
.label_475:
	jmp	.label_399
.label_399:
	jmp	.label_338
.label_716:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_405
.label_717:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_405
.label_721:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_405
.label_719:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_414
.label_722:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_414
.label_718:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_414
.label_720:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_405
.label_727:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_421
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_427
	nop	
	jmp	.label_324
.label_427:
	lea	rsi, [rsi]
	jmp	.label_336
.label_421:
	test	byte ptr [rbp - 0x89], 1
	je	.label_354
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_354
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_354
	jmp	.label_336
.label_354:
	jmp	.label_414
.label_414:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_439
	test	byte ptr [rbp - 0x3e], 1
	je	.label_439
	jmp	.label_324
.label_439:
	mov	rsp, rsp
	jmp	.label_405
.label_405:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_443
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_340
.label_443:
	jmp	.label_338
.label_728:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_450
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_453
	jmp	.label_459
.label_450:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_453
.label_459:
	nop	
	jmp	.label_338
.label_453:
	jmp	.label_464
.label_464:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_465
	lea	rsi, [rsi]
	jmp	.label_338
.label_465:
	nop	
	jmp	.label_471
.label_471:
	mov	byte ptr [rbp - 0x91], 1
.label_723:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_474
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_474
	jmp	.label_324
.label_474:
	lea	rsi, [rsi]
	jmp	.label_338
.label_725:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_479
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_496
	jmp	.label_324
.label_496:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_486
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_486
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_486:
	jmp	.label_493
.label_493:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_494
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_494:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_500
.label_500:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_506
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_506:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_513
.label_513:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_319:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_479:
	lea	rsi, [rsi]
	jmp	.label_338
.label_724:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_338
.label_320:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_347
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
	jmp	.label_358
.label_347:
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
	jne	.label_377
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_377:
	jmp	.label_385
.label_385:
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
	jne	.label_400
	jmp	.label_407
.label_400:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_408
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_407
.label_408:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_413
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_431:
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
	jae	.label_484
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_484:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_430
	jmp	.label_332
.label_430:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_431
.label_332:
	jmp	.label_407
.label_413:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_437
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_437
	mov	qword ptr [rbp - 0xe8], 1
.label_478:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_442
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
	jb	.label_375
	jmp	.label_456
.label_456:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_375
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_375
	jmp	.label_395
.label_395:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_469
	mov	rsp, rsp
	jmp	.label_375
.label_375:
	mov	rsp, rsp
	jmp	.label_324
.label_469:
	jmp	.label_440
.label_440:
	mov	rsp, rsp
	jmp	.label_514
.label_514:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_478
.label_442:
	mov	rbp, rbp
	jmp	.label_437
.label_437:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_483
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_483:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_515
.label_515:
	lea	rsi, [rsi]
	jmp	.label_489
.label_489:
	jmp	.label_490
.label_490:
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
	jne	.label_385
.label_407:
	jmp	.label_358
.label_358:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_498
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_508
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_508
.label_498:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_488:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_326
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_326
	jmp	.label_329
.label_329:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_331
	jmp	.label_324
.label_331:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_337
	test	byte ptr [rbp - 0x42], 1
	jne	.label_337
	lea	rdi, [rdi]
	jmp	.label_348
.label_348:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_368
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_368:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_389
.label_389:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_365
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_365:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_372
.label_372:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_394
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_394:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_337:
	jmp	.label_387
.label_387:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_388:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_497
.label_497:
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_398
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
.label_398:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_412
.label_412:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_417
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
.label_417:
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
	jmp	.label_426
.label_326:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_501
	lea	rdi, [rdi]
	jmp	.label_435
.label_435:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_381
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_381:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_501:
	nop	
	jmp	.label_426
.label_426:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_382
	jmp	.label_447
.label_382:
	lea	rsi, [rsi]
	jmp	.label_451
.label_451:
	test	byte ptr [rbp - 0x42], 1
	je	.label_454
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_454
	lea	rsi, [rsi]
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_458
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_458:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_466
.label_466:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_473:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_454:
	nop	
	jmp	.label_480
.label_480:
	mov	rsp, rsp
	jmp	.label_481
.label_481:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_482
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_482:
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
	jmp	.label_488
.label_447:
	mov	rsp, rsp
	jmp	.label_336
.label_508:
	lea	rsi, [rsi]
	jmp	.label_338
.label_338:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_502
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_505
.label_502:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_507
.label_505:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_507
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
	jne	.label_330
.label_507:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_330
	mov	rsp, rsp
	jmp	.label_336
.label_330:
	nop	
	jmp	.label_340
.label_340:
	jmp	.label_342
.label_342:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_344
	jmp	.label_324
.label_344:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_349
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_349
	lea	rdi, [rdi]
	jmp	.label_356
.label_356:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_487:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_373
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_373:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_361
.label_361:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_499
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_499:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_349:
	jmp	.label_392
.label_392:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_393
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_393:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_363
.label_363:
	nop	
	jmp	.label_336
.label_336:
	jmp	.label_410
.label_410:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_402
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_402
	lea	rdi, [rdi]
	jmp	.label_415
.label_415:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_418
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_418:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_495
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_495:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_402:
	jmp	.label_436
.label_436:
	nop	
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_391
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_391:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_409
	mov	byte ptr [rbp - 0xb7], 0
.label_409:
	mov	rbp, rbp
	jmp	.label_327
.label_327:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_448
.label_470:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_455
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_455
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_455
	nop	
	jmp	.label_324
.label_455:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_404
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_404
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_404
	test	byte ptr [rbp - 0xb7], 1
	je	.label_432
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
	jmp	.label_362
.label_432:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_491
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_491
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_419
.label_491:
	jmp	.label_503
.label_503:
	mov	rbp, rbp
	jmp	.label_404
.label_404:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_351
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_351
	mov	rbp, rbp
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_510
	lea	rdi, [rdi]
	jmp	.label_316
.label_316:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_318
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_318:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_343
.label_510:
	jmp	.label_351
.label_351:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_352
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_352:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_362
.label_324:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_366
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_366
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_366:
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
.label_362:
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
	#Procedure 0x408d70
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
	#Procedure 0x408de0

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
	je	.label_516
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_517
.label_516:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_517
.label_517:
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
	je	.label_518
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_518:
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
	#Procedure 0x408fb0
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
.label_523:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_522
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
	jmp	.label_523
.label_522:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_521
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_519]],  rax
.label_521:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_520
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_520:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090c0

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
	#Procedure 0x409110

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
	jge	.label_530
	call	abort
.label_530:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_525
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
	jge	.label_526
	call	xalloc_die
.label_526:
	test	byte ptr [rbp - 0x51], 1
	je	.label_527
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_531
.label_527:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_531:
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
	je	.label_529
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_519]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_529:
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
.label_525:
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
	ja	.label_528
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
	je	.label_524
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_524:
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
.label_528:
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
	#Procedure 0x409440

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
	#Procedure 0x409480
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
	#Procedure 0x4094b0
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
	#Procedure 0x4094f0

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
	#Procedure 0x409550

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
	jne	.label_532
	call	abort
.label_532:
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
	#Procedure 0x4095f0

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
	#Procedure 0x409660
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
	#Procedure 0x4096a0
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
	#Procedure 0x4096e0

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
	#Procedure 0x409790

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
	#Procedure 0x4097d0

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
	#Procedure 0x409800
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
	#Procedure 0x409840

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
	#Procedure 0x409920

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
	#Procedure 0x409970

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
	#Procedure 0x409a10
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
	#Procedure 0x409a60
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
	#Procedure 0x409ac0

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
	#Procedure 0x409b00
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
	#Procedure 0x409b40

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
	#Procedure 0x409b80
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
	#Procedure 0x409bc0

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
	je	.label_536
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_534
.label_536:
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
	jne	.label_535
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_534
.label_535:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_533
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
	jmp	.label_534
.label_533:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_534:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d00

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
	.section	.text
	.align	32
	#Procedure 0x409d40

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
	je	.label_537
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
	jmp	.label_540
.label_537:
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
.label_540:
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_541
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_539]]
	jmp	rcx
.label_744:
	jmp	.label_538
.label_745:
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
	jmp	.label_538
.label_746:
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
	jmp	.label_538
.label_747:
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
	jmp	.label_538
.label_748:
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
	jmp	.label_538
.label_749:
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
	jmp	.label_538
.label_750:
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
	jmp	.label_538
.label_751:
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
	jmp	.label_538
.label_752:
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
	jmp	.label_538
.label_753:
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
	jmp	.label_538
.label_541:
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
.label_538:
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
	#Procedure 0x40a580
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
.label_542:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_543
	mov	rbp, rbp
	jmp	.label_544
.label_544:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_542
.label_543:
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
	#Procedure 0x40a630

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
.label_548:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_545
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_550
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
	jmp	.label_549
.label_550:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_549:
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
.label_545:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_547
	mov	rsp, rsp
	jmp	.label_551
.label_547:
	jmp	.label_546
.label_546:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_548
.label_551:
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
	#Procedure 0x40a790

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
	je	.label_552
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
.label_552:
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
	#Procedure 0x40a950
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
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
	#Procedure 0x40aa00
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
	jae	.label_553
	mov	rbp, rbp
	call	xalloc_die
.label_553:
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
	#Procedure 0x40aa60

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
	jne	.label_554
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_554
	lea	rdi, [rdi]
	call	xalloc_die
.label_554:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aac0
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
	jae	.label_555
	mov	rsp, rsp
	call	xalloc_die
.label_555:
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
	#Procedure 0x40ab40

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
	jne	.label_556
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_556
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_558
.label_556:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_557
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_557
	lea	rsi, [rsi]
	call	xalloc_die
.label_557:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_558:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40abf0

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
	jne	.label_559
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_561
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
.label_561:
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
	jae	.label_563
	call	xalloc_die
.label_563:
	lea	rsi, [rsi]
	jmp	.label_562
.label_559:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_560
	call	xalloc_die
.label_560:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_562:
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
	#Procedure 0x40ad20

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
	#Procedure 0x40ad50
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
	#Procedure 0x40ad90
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
	#Procedure 0x40ade0
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
	jb	.label_564
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_565
.label_564:
	lea	rsi, [rsi]
	call	xalloc_die
.label_565:
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
	#Procedure 0x40ae50

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
	#Procedure 0x40aea0
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
	#Procedure 0x40af00

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
	#Procedure 0x40af60

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
	jge	.label_569
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_567
.label_569:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_566
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
	je	.label_568
.label_566:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_568
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_568:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_570
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
.label_570:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_567:
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
	#Procedure 0x40b080

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
	je	.label_571
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
.label_571:
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
	je	.label_575
	nop	
	jmp	.label_586
.label_586:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_588
	jmp	.label_593
.label_575:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_594
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
	jmp	.label_601
.label_594:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_601:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_579
.label_588:
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
	ja	.label_600
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
	jmp	.label_582
.label_600:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_582:
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
	jmp	.label_579
.label_593:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_576
	nop	
	jmp	.label_585
.label_585:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_587
	jmp	.label_591
.label_591:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_576
	nop	
	jmp	.label_597
.label_597:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_587
	nop	
	jmp	.label_574
.label_574:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_576
	lea	rsi, [rsi]
	jmp	.label_581
.label_581:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_576
	lea	rsi, [rsi]
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_587
	mov	rsp, rsp
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_576
	jmp	.label_599
.label_599:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_587
	lea	rsi, [rsi]
	jmp	.label_598
.label_598:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_576
	jmp	.label_589
.label_589:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_587
	mov	rsp, rsp
	jmp	.label_592
.label_592:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_576
	lea	rsi, [rsi]
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_576
	nop	
	jmp	.label_578
.label_578:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_580
	lea	rdi, [rdi]
	jmp	.label_587
.label_587:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_572
.label_576:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_595
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
	jmp	.label_573
.label_595:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_573:
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
	jmp	.label_572
.label_580:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_577
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
	jmp	.label_583
.label_577:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_583:
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
.label_572:
	jmp	.label_579
.label_579:
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
	#Procedure 0x40b6e0

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
	#Procedure 0x40b730

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
	jg	.label_610
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
	jle	.label_609
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_602
.label_609:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_605
.label_602:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_608
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_608:
	mov	rbp, rbp
	jmp	.label_605
.label_605:
	jmp	.label_606
.label_610:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_606:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_603
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_603
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_607
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
	jne	.label_604
.label_607:
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
.label_604:
	jmp	.label_603
.label_603:
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
	#Procedure 0x40b8b0

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
	je	.label_611
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_612
.label_611:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_613
.label_612:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_613:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b920

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
	je	.label_614
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
.label_614:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b980

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
	jne	.label_615
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_615
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_615
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
	jne	.label_616
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_617
.label_616:
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
	jmp	.label_617
.label_615:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_617:
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
	#Procedure 0x40ba90

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
	jne	.label_618
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_618:
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
	ja	.label_619
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_619
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_619
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
	jmp	.label_620
.label_619:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_620:
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
	#Procedure 0x40bb80

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
	jne	.label_621
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_624
.label_621:
	mov	rbp, rbp
	jmp	.label_622
.label_622:
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
	jne	.label_623
	jmp	.label_625
.label_623:
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
	je	.label_622
.label_625:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_624:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc70

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
	jne	.label_628
	test	byte ptr [rbp - 0x15], 1
	je	.label_627
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_628
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_627
.label_628:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_626
	call	__errno_location
	mov	dword ptr [rax], 0
.label_626:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_629
.label_627:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_629:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd50

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
	je	.label_631
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_632
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_630
.label_632:
	mov	byte ptr [rbp - 0xd], 0
.label_630:
	jmp	.label_631
.label_631:
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
	#Procedure 0x40bdf0

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
	jne	.label_634
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_634:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_633
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_633:
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
	#Procedure 0x40be70

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
	ja	.label_635
	jmp	.label_637
.label_637:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_636
.label_635:
	lea	rsi, [rsi]
	jmp	.label_636
.label_636:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bed0
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
	jb	.label_638
	jmp	.label_639
.label_639:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_638
	nop	
	jmp	.label_640
.label_640:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_642
	jmp	.label_638
.label_638:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_641
.label_642:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_641:
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
	#Procedure 0x40bf60
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
	jb	.label_643
	nop	
	jmp	.label_644
.label_644:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_645
	lea	rdi, [rdi]
	jmp	.label_643
.label_643:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_646
.label_645:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_646:
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
	#Procedure 0x40bfe0
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
	ja	.label_647
	mov	rsp, rsp
	jmp	.label_649
.label_649:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_648
.label_647:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_648:
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
	#Procedure 0x40c030
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
	je	.label_650
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_650:
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
	#Procedure 0x40c080
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
	jb	.label_651
	nop	
	jmp	.label_652
.label_652:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_653
	lea	rsi, [rsi]
	jmp	.label_651
.label_651:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_654
.label_653:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_654:
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
	#Procedure 0x40c0f0
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
	ja	.label_656
	jmp	.label_655
.label_655:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_657
.label_656:
	mov	byte ptr [rbp - 5], 0
.label_657:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c140
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
	ja	.label_658
	lea	rsi, [rsi]
	jmp	.label_660
.label_660:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_659
.label_658:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_659:
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
	#Procedure 0x40c190
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
	ja	.label_661
	jmp	.label_662
.label_662:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_663
.label_661:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_663:
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
	#Procedure 0x40c1e0
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
	ja	.label_664
	jmp	.label_666
.label_666:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_665
.label_664:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_665:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c230
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
	jb	.label_668
	jmp	.label_669
.label_669:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_668
	nop	
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_668
	jmp	.label_670
.label_670:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_667
	mov	rsp, rsp
	jmp	.label_668
.label_668:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_671
.label_667:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_671:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2e0
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
	jb	.label_673
	mov	rbp, rbp
	jmp	.label_674
.label_674:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_676
	mov	rsp, rsp
	jmp	.label_673
.label_673:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_675
.label_676:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_675:
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
	#Procedure 0x40c350
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
	ja	.label_677
	jmp	.label_679
.label_679:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_678
.label_677:
	mov	byte ptr [rbp - 5], 0
.label_678:
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
	#Procedure 0x40c3a0
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
	jb	.label_680
	lea	rdi, [rdi]
	jmp	.label_684
.label_684:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_680
	jmp	.label_681
.label_681:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_683
	jmp	.label_680
.label_680:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_682
.label_683:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_682:
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
	#Procedure 0x40c430

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
	ja	.label_685
	jmp	.label_686
.label_686:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_687
.label_685:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_687:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section .text
	.align	32
	#Procedure 0x40c480
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
	ja	.label_688
	mov	rbp, rbp
	jmp	.label_689
.label_689:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_690
.label_688:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_690:
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