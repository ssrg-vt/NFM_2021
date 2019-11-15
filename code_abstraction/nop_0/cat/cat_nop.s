	.section	.text
	.align	16
	#Procedure 0x401550

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	nop	
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
	mov	rbp, rbp
	jmp	.label_9
.label_9:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_10
.label_8:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	call	emit_stdin_note
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	call	emit_ancillary_info
.label_10:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401720

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401770

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_11:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_14
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
.label_14:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	test	al, 1
	jne	.label_15
	mov	rbp, rbp
	jmp	.label_16
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_11
.label_16:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_13
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_12
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.41
	mov	eax, 3
	mov	rsp, rsp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.44
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019a0

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x268
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], edi
	mov	qword ptr [rbp - 0x38], rsi
	call	getpagesize
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rbp - 0x61], 1
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x119], 0
	mov	byte ptr [rbp - 0x11a], 0
	mov	byte ptr [rbp - 0x11b], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11c], 0
	mov	byte ptr [rbp - 0x11d], 0
	mov	byte ptr [rbp - 0x11e], 0
	nop	
	mov	dword ptr [rbp - 0x124], 0
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.20
	mov	qword ptr [rbp - 0x130], rax
	call	bindtextdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.19
	nop	
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	call	textdomain
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x140], rax
	lea	rsi, [rsi]
	call	atexit
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x144], eax
.label_55:
	nop	
	movabs	rdx, OFFSET FLAT:.str.21
	movabs	rcx, OFFSET FLAT:main.long_options
	xor	eax, eax
	nop	
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_57
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x148], eax
	mov	dword ptr [rbp - 0x14c], ecx
	nop	
	je	.label_33
	mov	rbp, rbp
	jmp	.label_44
.label_44:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x150], eax
	je	.label_21
	lea	rsi, [rsi]
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x148]
	nop	
	sub	eax, 0x41
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	mov	rbp, rbp
	je	.label_26
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x45
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x158], eax
	je	.label_35
	jmp	.label_51
.label_51:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_41
	lea	rdi, [rdi]
	jmp	.label_45
.label_45:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x160], eax
	je	.label_48
	lea	rsi, [rsi]
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0x164], eax
	lea	rsi, [rsi]
	je	.label_56
	mov	rbp, rbp
	jmp	.label_60
.label_60:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x168], eax
	lea	rsi, [rsi]
	je	.label_61
	jmp	.label_40
.label_40:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x73
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x16c], eax
	mov	rbp, rbp
	je	.label_20
	jmp	.label_27
.label_27:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x148]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x170], eax
	je	.label_24
	nop	
	jmp	.label_30
.label_30:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x174], eax
	je	.label_31
	jmp	.label_37
.label_37:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x178], eax
	lea	rdi, [rdi]
	je	.label_39
	jmp	.label_42
.label_48:
	mov	byte ptr [rbp - 0x119], 1
	mov	byte ptr [rbp - 0x11a], 1
	jmp	.label_18
.label_56:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11c], 1
	mov	byte ptr [rbp - 0x11d], 1
	jmp	.label_18
.label_61:
	mov	byte ptr [rbp - 0x119], 1
	mov	rbp, rbp
	jmp	.label_18
.label_20:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11b], 1
	nop	
	jmp	.label_18
.label_24:
	mov	byte ptr [rbp - 0x11e], 1
	mov	byte ptr [rbp - 0x11d], 1
	jmp	.label_18
.label_31:
	jmp	.label_18
.label_39:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11d], 1
	nop	
	jmp	.label_18
.label_26:
	nop	
	mov	byte ptr [rbp - 0x11d], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11c], 1
	mov	byte ptr [rbp - 0x11e], 1
	nop	
	jmp	.label_18
.label_35:
	mov	byte ptr [rbp - 0x11c], 1
	jmp	.label_18
.label_41:
	mov	byte ptr [rbp - 0x11e], 1
	jmp	.label_18
.label_21:
	xor	edi, edi
	call	usage
.label_33:
	movabs	rsi, OFFSET FLAT:.str.8
	movabs	rdx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.23
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_42:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_18:
	jmp	.label_55
.label_57:
	mov	edi, 1
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x118]
	call	__fstat
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_59
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.25
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x184], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x184]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_59:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x118]
	lea	rsi, [rsi]
	mov	rcx, rsp
	lea	rdi, [rdi]
	mov	edx, 0x12
	mov	esi, edx
	lea	rdi, [rbp - 0x118]
	mov	qword ptr [rbp - 0x190], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x198], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x198]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x1a0], rax
	call	io_blksize
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x100]
	and	edx, 0xf000
	nop	
	cmp	edx, 0x8000
	nop	
	sete	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	cmp	edx, 0
	setne	r8b
	and	r8b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], r8b
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x119], 1
	jne	.label_17
	test	byte ptr [rbp - 0x11c], 1
	jne	.label_17
	test	byte ptr [rbp - 0x11b], 1
	mov	rbp, rbp
	jne	.label_17
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	eax, dword ptr [rbp - 0x124]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], eax
	lea	rdi, [rdi]
	call	xset_binary_mode
.label_17:
	nop	
	movabs	rax, OFFSET FLAT:.str.26
	mov	qword ptr [word ptr [infile]],  rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], ecx
.label_46:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x30]
	jge	.label_28
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x6c]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [infile]],  rax
.label_28:
	mov	rdi,  qword ptr [word ptr [infile]]
	mov	eax, OFFSET FLAT:.str.26
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_58
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x82], 1
	mov	dword ptr [dword ptr [input_desc]],  0
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x124]
	mov	rbp, rbp
	and	eax, 0
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_49
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	nop	
	call	xset_binary_mode
.label_49:
	mov	rsp, rsp
	jmp	.label_38
.label_58:
	mov	rdi,  qword ptr [word ptr [infile]]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x124]
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	open
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_desc]],  eax
	cmp	dword ptr [dword ptr [input_desc]],  0
	jge	.label_19
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1a4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x61], 0
	jmp	.label_36
.label_19:
	jmp	.label_38
.label_38:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x118]
	nop	
	mov	edi,  dword ptr [dword ptr [input_desc]]
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_43
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x1a8], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1a8]
	nop	
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], 0
	jmp	.label_25
.label_43:
	lea	rax, [rbp - 0x118]
	mov	rbp, rbp
	mov	rcx, rsp
	mov	rbp, rbp
	mov	edx, 0x12
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rbp - 0x118]
	mov	qword ptr [rbp - 0x1b0], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x1b8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rax
	call	io_blksize
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	ecx, edx
	nop	
	mov	edx, 2
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [input_desc]]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c4], edx
	mov	rdx, rcx
	mov	ecx, dword ptr [rbp - 0x1c4]
	call	fdadvise
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	mov	rsp, rsp
	je	.label_29
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	jne	.label_29
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_29
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	edi,  dword ptr [dword ptr [input_desc]]
	call	lseek
	cmp	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	jge	.label_29
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rbp, rbp
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x61], 0
	nop	
	jmp	.label_25
.label_29:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x119], 1
	jne	.label_22
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11c], 1
	nop	
	jne	.label_22
	nop	
	test	byte ptr [rbp - 0x11d], 1
	jne	.label_22
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11e], 1
	mov	rbp, rbp
	jne	.label_22
	nop	
	test	byte ptr [rbp - 0x11b], 1
	jne	.label_22
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	jbe	.label_53
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsp, rsp
	jmp	.label_47
.label_53:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d8], rax
.label_47:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1d8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	ptr_align
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, rax
	call	simple_cat
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	and	edx, ecx
	cmp	edx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
	mov	rbp, rbp
	jmp	.label_54
.label_22:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	rax, 1
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rdi, 2
	add	rax, rdi
	add	rax, 0x14
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	call	ptr_align
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x1e0], rsi
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rax
	call	ptr_align
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dl, byte ptr [rbp - 0x11d]
	nop	
	mov	r8b, byte ptr [rbp - 0x11e]
	mov	r9b, byte ptr [rbp - 0x119]
	mov	r10b, byte ptr [rbp - 0x11a]
	lea	rsi, [rsi]
	mov	r11b, byte ptr [rbp - 0x11c]
	mov	bl, byte ptr [rbp - 0x11b]
	lea	rsi, [rsi]
	and	dl, 1
	and	r8b, 1
	and	r9b, 1
	and	r10b, 1
	lea	rsi, [rsi]
	and	r11b, 1
	and	bl, 1
	mov	rdi, qword ptr [rbp - 0x1e8]
	nop	
	mov	rsi, qword ptr [rbp - 0x1e0]
	mov	byte ptr [rbp - 0x1e9], dl
	mov	rsp, rsp
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rbp - 0x1e9]
	mov	rsp, rsp
	movzx	r15d, r14b
	nop	
	mov	byte ptr [rbp - 0x1ea], r8b
	mov	r8d, r15d
	mov	rsp, rsp
	mov	r12b, byte ptr [rbp - 0x1ea]
	movzx	r15d, r12b
	mov	byte ptr [rbp - 0x1eb], r9b
	mov	r9d, r15d
	mov	r13b, byte ptr [rbp - 0x1eb]
	mov	rbp, rbp
	movzx	r15d, r13b
	mov	rsp, rsp
	mov	dword ptr [rsp], r15d
	movzx	r15d, r10b
	mov	dword ptr [rsp + 8], r15d
	movzx	r15d, r11b
	mov	dword ptr [rsp + 0x10], r15d
	mov	rsp, rsp
	movzx	r15d, bl
	mov	dword ptr [rsp + 0x18], r15d
	call	cat
	and	al, 1
	lea	rdi, [rdi]
	movzx	r8d, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	lea	rdi, [rdi]
	movzx	r9d, al
	mov	rbp, rbp
	and	r9d, r8d
	lea	rdi, [rdi]
	cmp	r9d, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
.label_54:
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_25:
	mov	rdi,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.26
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	je	.label_23
	mov	edi,  dword ptr [dword ptr [input_desc]]
	mov	rbp, rbp
	call	close
	cmp	eax, 0
	jge	.label_23
	call	__errno_location
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1f0], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	nop	
	mov	esi, dword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x61], 0
.label_23:
	lea	rsi, [rsi]
	jmp	.label_36
.label_36:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	add	eax, 1
	mov	dword ptr [rbp - 0x6c], eax
	cmp	eax, dword ptr [rbp - 0x30]
	nop	
	jl	.label_46
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x82], 1
	je	.label_50
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_50
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.29
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1f4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1f4]
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_50:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x61]
	nop	
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	add	rsp, 0x268
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402650

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	lea	rax, [rbp + 0x10]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rax
	jge	.label_65
	nop	
	movabs	rax, 0x2000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_65
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	jmp	.label_66
.label_65:
	mov	rsp, rsp
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_66
.label_66:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_64
	mov	eax, 0x20000
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_62
.label_64:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x38]
	lea	rdi, [rdi]
	jge	.label_67
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_67
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_63
.label_67:
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_63
.label_63:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_62:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402770

	.globl simple_cat
	.type simple_cat, @function
simple_cat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
.label_68:
	mov	edi,  dword ptr [dword ptr [input_desc]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_70
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_69
.label_70:
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_71
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_69
.label_71:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	full_write
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_72
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	nop	
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
.label_72:
	mov	rbp, rbp
	jmp	.label_68
.label_69:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028a0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402900

	.globl cat
	.type cat, @function
cat:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x88
	mov	al, r9b
	mov	r10b, r8b
	lea	rsi, [rsi]
	mov	r11b, byte ptr [rbp + 0x28]
	mov	bl, byte ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r14b, byte ptr [rbp + 0x18]
	mov	r15b, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rcx
	and	r10b, 1
	mov	byte ptr [rbp - 0x41], r10b
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	and	r15b, 1
	mov	byte ptr [rbp - 0x43], r15b
	nop	
	and	r14b, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x44], r14b
	nop	
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x45], bl
	and	r11b, 1
	mov	byte ptr [rbp - 0x46], r11b
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [newlines2]]
	nop	
	mov	dword ptr [rbp - 0x6c], r8d
	mov	byte ptr [rbp - 0x6d], 1
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rcx
.label_115:
	jmp	.label_108
.label_108:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	ja	.label_110
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rax
.label_86:
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x40]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x40]
	je	.label_118
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x8c], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_118:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jbe	.label_86
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	call	memmove
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x60], rdx
.label_110:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_104
	mov	byte ptr [rbp - 0x81], 0
	mov	dword ptr [rbp - 0x88], 0
	test	byte ptr [rbp - 0x6d], 1
	mov	rbp, rbp
	je	.label_112
	mov	rsp, rsp
	mov	eax, 0x541b
	mov	esi, eax
	lea	rdx, [rbp - 0x88]
	mov	edi,  dword ptr [dword ptr [input_desc]]
	mov	al, 0
	lea	rsi, [rsi]
	call	ioctl
	nop	
	cmp	eax, 0
	jge	.label_112
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x5f
	je	.label_73
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x19
	lea	rsi, [rsi]
	je	.label_73
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	je	.label_73
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x13
	je	.label_73
	nop	
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	jne	.label_85
.label_73:
	nop	
	mov	byte ptr [rbp - 0x6d], 0
	mov	rbp, rbp
	jmp	.label_89
.label_85:
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x90], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [infile]]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x6c]
	mov	dword ptr [dword ptr [newlines2]],  esi
	mov	byte ptr [rbp - 0x19], 0
	nop	
	jmp	.label_99
.label_89:
	lea	rsi, [rsi]
	jmp	.label_112
.label_112:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	je	.label_113
	mov	byte ptr [rbp - 0x81], 1
.label_113:
	test	byte ptr [rbp - 0x81], 1
	nop	
	jne	.label_117
	mov	rbp, rbp
	lea	rsi, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	write_pending
.label_117:
	nop	
	mov	edi,  dword ptr [dword ptr [input_desc]]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	safe_read
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], -1
	lea	rsi, [rsi]
	jne	.label_77
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x9c], ecx
	nop	
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x38]
	call	write_pending
	mov	r8d, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [newlines2]],  r8d
	mov	byte ptr [rbp - 0x19], 0
	lea	rdi, [rdi]
	jmp	.label_99
.label_77:
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jne	.label_107
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x60]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	call	write_pending
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [dword ptr [newlines2]],  eax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jmp	.label_99
.label_107:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0xa
	jmp	.label_116
.label_104:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	add	eax, 1
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jle	.label_76
	nop	
	cmp	dword ptr [rbp - 0x6c], 2
	jl	.label_82
	nop	
	mov	dword ptr [rbp - 0x6c], 2
	test	byte ptr [rbp - 0x46], 1
	lea	rdi, [rdi]
	je	.label_87
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x47], dl
	lea	rdi, [rdi]
	jmp	.label_91
.label_87:
	jmp	.label_82
.label_82:
	test	byte ptr [rbp - 0x43], 1
	lea	rdi, [rdi]
	je	.label_102
	test	byte ptr [rbp - 0x44], 1
	jne	.label_102
	mov	rsp, rsp
	call	next_line_num
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [line_num_print]]
	mov	rsp, rsp
	call	stpcpy
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_102:
	lea	rsi, [rsi]
	jmp	.label_76
.label_76:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x45], 1
	lea	rdi, [rdi]
	je	.label_109
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rax], 0x24
.label_109:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_116:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x47], dl
.label_91:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x47]
	cmp	eax, 0xa
	mov	rbp, rbp
	je	.label_108
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x6c], 0
	mov	rsp, rsp
	jl	.label_81
	mov	rsp, rsp
	test	byte ptr [rbp - 0x43], 1
	je	.label_81
	call	next_line_num
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [line_num_print]]
	nop	
	call	stpcpy
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
.label_81:
	test	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	je	.label_96
	jmp	.label_94
.label_94:
	movzx	eax, byte ptr [rbp - 0x47]
	lea	rdi, [rdi]
	cmp	eax, 0x20
	lea	rdi, [rdi]
	jl	.label_101
	movzx	eax, byte ptr [rbp - 0x47]
	cmp	eax, 0x7f
	mov	rsp, rsp
	jge	.label_105
	nop	
	mov	al, byte ptr [rbp - 0x47]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	mov	byte ptr [rcx], al
	jmp	.label_80
.label_105:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x47]
	mov	rbp, rbp
	cmp	eax, 0x7f
	jne	.label_111
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_79
.label_111:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	byte ptr [rax], 0x4d
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	byte ptr [rax], 0x2d
	nop	
	movzx	edx, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	cmp	edx, 0xa0
	jl	.label_74
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x47]
	cmp	eax, 0xff
	mov	rbp, rbp
	jge	.label_93
	movzx	eax, byte ptr [rbp - 0x47]
	lea	rdi, [rdi]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x60], rsi
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	lea	rdi, [rdi]
	jmp	.label_97
.label_93:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rax], 0x5e
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x3f
.label_97:
	jmp	.label_114
.label_74:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rax], 0x5e
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	sub	edx, 0x80
	mov	rbp, rbp
	add	edx, 0x40
	nop	
	mov	sil, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], sil
.label_114:
	mov	rsp, rsp
	jmp	.label_79
.label_79:
	jmp	.label_80
.label_80:
	lea	rdi, [rdi]
	jmp	.label_88
.label_101:
	movzx	eax, byte ptr [rbp - 0x47]
	cmp	eax, 9
	jne	.label_84
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x42], 1
	lea	rsi, [rsi]
	jne	.label_84
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 9
	jmp	.label_92
.label_84:
	movzx	eax, byte ptr [rbp - 0x47]
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_98
	mov	dword ptr [rbp - 0x6c], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_103
.label_98:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rax], 0x5e
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 0x47]
	nop	
	add	edx, 0x40
	mov	rbp, rbp
	mov	sil, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	byte ptr [rax], sil
	jmp	.label_92
.label_92:
	jmp	.label_88
.label_88:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x47], dl
	lea	rsi, [rsi]
	jmp	.label_94
.label_103:
	jmp	.label_75
.label_96:
	jmp	.label_83
.label_83:
	movzx	eax, byte ptr [rbp - 0x47]
	cmp	eax, 9
	jne	.label_90
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x5e
	movzx	edx, byte ptr [rbp - 0x47]
	mov	rsp, rsp
	add	edx, 0x40
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], sil
	jmp	.label_78
.label_90:
	nop	
	movzx	eax, byte ptr [rbp - 0x47]
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	je	.label_95
	nop	
	mov	al, byte ptr [rbp - 0x47]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rbp - 0x60], rdx
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	jmp	.label_100
.label_95:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_106
.label_100:
	jmp	.label_78
.label_78:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	dl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x47], dl
	jmp	.label_83
.label_106:
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	jmp	.label_115
.label_99:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403210

	.globl write_pending
	.type write_pending, @function
write_pending:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rcx, qword ptr [rbp - 0x18]
	nop	
	jae	.label_119
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_120
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_120:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_119:
	nop	
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl next_line_num
	.type next_line_num, @function
next_line_num:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [line_num_end]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_122:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dl, cl
	add	dl, 1
	mov	byte ptr [rax], dl
	nop	
	movsx	esi, cl
	lea	rsi, [rsi]
	cmp	esi, 0x39
	lea	rsi, [rsi]
	jge	.label_124
	nop	
	jmp	.label_123
.label_124:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [line_num_start]]
	lea	rsi, [rsi]
	jae	.label_122
	movabs	rax, OFFSET FLAT:line_buf
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [line_num_start]],  rax
	nop	
	jbe	.label_121
	mov	rax,  qword ptr [word ptr [line_num_start]]
	nop	
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [word ptr [line_num_start]],  rcx
	mov	byte ptr [rax - 1], 0x31
	jmp	.label_125
.label_121:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [line_buf]],  0x3e
.label_125:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [line_num_start]]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [line_num_print]]
	jae	.label_123
	mov	rax,  qword ptr [word ptr [line_num_print]]
	mov	rsp, rsp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [line_num_print]],  rax
.label_123:
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d0
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
	#Procedure 0x403400
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
	#Procedure 0x403430

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
	je	.label_129
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_130
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_129
.label_130:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_128
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_127
.label_128:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_127:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_129:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_126
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_126:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403560

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
	.align	16
	#Procedure 0x4035a0
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
	je	.label_131
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
.label_131:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403600

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
.label_134:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_133
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_135
	jmp	.label_133
.label_135:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_132
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_133
.label_132:
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
	jmp	.label_134
.label_133:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b0

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
	jne	.label_138
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_138:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_136
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_140
.label_136:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_140:
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
	jl	.label_139
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_139
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_137
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_137:
	jmp	.label_139
.label_139:
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
	.align	16
	#Procedure 0x403830
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
	je	.label_141
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_142
.label_141:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_142
.label_142:
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
	.align	16
	#Procedure 0x4038e0
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
	je	.label_143
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_144
.label_143:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_144
.label_144:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403940
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
	je	.label_145
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_146
.label_145:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_146
.label_146:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039a0

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
	je	.label_147
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_148
.label_147:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_148
.label_148:
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
	.align	16
	#Procedure 0x403aa0
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
	jne	.label_149
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_149:
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
	.align	16
	#Procedure 0x403b00

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
	jne	.label_150
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_150:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_152
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_151
.label_152:
	call	abort
.label_151:
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
	.align	16
	#Procedure 0x403ba0
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
	je	.label_153
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_154
.label_153:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_154
.label_154:
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
	.align	16
	#Procedure 0x403ca0

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
.label_172:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_233
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_237]]
	jmp	rcx
.label_564:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_563:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_245
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_252
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_252:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_245
.label_245:
	movabs	rax, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_266
.label_565:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_266
.label_566:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_268
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_268:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_280
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_297:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_286
	jmp	.label_287
.label_287:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_289
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_289:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_200
.label_200:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_297
.label_286:
	mov	rbp, rbp
	jmp	.label_280
.label_280:
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
	jmp	.label_266
.label_561:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_560:
	mov	byte ptr [rbp - 0x7b], 1
.label_562:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_313
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_313:
	jmp	.label_244
.label_244:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_318
	jmp	.label_323
.label_323:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_184
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_184:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_318
.label_318:
	movabs	rax, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_266
.label_559:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_266
.label_233:
	call	abort
.label_266:
	mov	qword ptr [rbp - 0x58], 0
.label_316:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_347
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
	jmp	.label_348
.label_347:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_348:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_166
	mov	rbp, rbp
	jmp	.label_177
.label_166:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_180
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_180
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_180
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_194
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_194
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_207
.label_194:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_207:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_180
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
	jne	.label_180
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_225
	jmp	.label_167
.label_225:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_180:
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
	ja	.label_227
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_238]]
	nop	
	jmp	rcx
.label_568:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_242
	mov	rsp, rsp
	jmp	.label_248
.label_248:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_282
	jmp	.label_167
.label_282:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_257
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_257
	nop	
	jmp	.label_259
.label_259:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_260
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_267
.label_267:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_273
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_273:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_279
.label_279:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_284
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_257:
	lea	rsi, [rsi]
	jmp	.label_350
.label_350:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_290
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_290:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_293
.label_293:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_301
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_301
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_301
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_301
	nop	
	jmp	.label_354
.label_354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_317:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_325
.label_325:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_330:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_301
.label_301:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_314
.label_242:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_341
	mov	rbp, rbp
	jmp	.label_324
.label_341:
	jmp	.label_314
.label_314:
	jmp	.label_191
.label_579:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_349
	mov	rbp, rbp
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_159
	jmp	.label_168
.label_349:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_171
	jmp	.label_167
.label_171:
	jmp	.label_175
.label_159:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_178
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_178
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_178
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
	je	.label_196
	nop	
	jmp	.label_202
.label_202:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_196
	jmp	.label_208
.label_208:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_196
	jmp	.label_212
.label_212:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_196
	jmp	.label_294
.label_294:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_220
	jmp	.label_196
.label_196:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_343
	jmp	.label_167
.label_343:
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
	jae	.label_230
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_230:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_243
.label_243:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_251:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_256
.label_256:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_258
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_258:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_211
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_276
.label_220:
	jmp	.label_276
.label_276:
	jmp	.label_178
.label_178:
	jmp	.label_175
.label_168:
	jmp	.label_175
.label_175:
	jmp	.label_191
.label_569:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_285
.label_570:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_285
.label_574:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_285
.label_572:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_201
.label_575:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_201
.label_571:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_201
.label_573:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_285
.label_580:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_291
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_296
	nop	
	jmp	.label_167
.label_296:
	lea	rsi, [rsi]
	jmp	.label_190
.label_291:
	test	byte ptr [rbp - 0x79], 1
	je	.label_304
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_304
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_304
	jmp	.label_190
.label_304:
	jmp	.label_201
.label_201:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_312
	test	byte ptr [rbp - 0x7b], 1
	je	.label_312
	jmp	.label_167
.label_312:
	mov	rsp, rsp
	jmp	.label_285
.label_285:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_320
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_214
.label_320:
	jmp	.label_191
.label_581:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_327
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_331
	jmp	.label_335
.label_327:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_331
.label_335:
	nop	
	jmp	.label_191
.label_331:
	jmp	.label_339
.label_339:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_275
	lea	rsi, [rsi]
	jmp	.label_191
.label_275:
	nop	
	jmp	.label_346
.label_346:
	mov	byte ptr [rbp - 0x83], 1
.label_576:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_328
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_328
	jmp	.label_167
.label_328:
	lea	rsi, [rsi]
	jmp	.label_191
.label_578:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_155
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_165
	jmp	.label_167
.label_165:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_170
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_170
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_170:
	jmp	.label_183
.label_183:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_193
.label_193:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_342
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_204
.label_204:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_352
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_155:
	lea	rsi, [rsi]
	jmp	.label_191
.label_577:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_191
.label_227:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_221
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
	jmp	.label_162
.label_221:
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
	jne	.label_246
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_246:
	jmp	.label_222
.label_222:
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
	jne	.label_269
	jmp	.label_272
.label_269:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_277
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_272
.label_277:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_281
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_299:
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
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_308:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_209
	jmp	.label_298
.label_209:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_299
.label_298:
	jmp	.label_272
.label_281:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_163
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_163
	mov	qword ptr [rbp - 0xb8], 1
.label_355:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_311
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
	jb	.label_315
	jmp	.label_332
.label_332:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_315
	jmp	.label_337
.label_337:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_315
	jmp	.label_344
.label_344:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_345
	mov	rsp, rsp
	jmp	.label_315
.label_315:
	mov	rsp, rsp
	jmp	.label_167
.label_345:
	jmp	.label_351
.label_351:
	mov	rsp, rsp
	jmp	.label_271
.label_271:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_355
.label_311:
	mov	rbp, rbp
	jmp	.label_163
.label_163:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_169
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_169:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_174
.label_174:
	lea	rsi, [rsi]
	jmp	.label_185
.label_185:
	jmp	.label_187
.label_187:
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
	jne	.label_222
.label_272:
	jmp	.label_162
.label_162:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_198
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_205
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_205
.label_198:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_176:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_213
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_213
	jmp	.label_217
.label_217:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_219
	jmp	.label_167
.label_219:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_224
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_224
	lea	rdi, [rdi]
	jmp	.label_228
.label_228:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_236
.label_236:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_241
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_241:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_253
.label_253:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_300
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_224:
	jmp	.label_261
.label_261:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_263:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_353
.label_353:
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_247
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
.label_247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_333
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
.label_333:
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
	jmp	.label_292
.label_213:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_303
	lea	rdi, [rdi]
	jmp	.label_306
.label_306:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_307:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_303:
	nop	
	jmp	.label_292
.label_292:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_319
	jmp	.label_326
.label_319:
	lea	rsi, [rsi]
	jmp	.label_173
.label_173:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_329
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_329
	lea	rsi, [rsi]
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_336
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_340
.label_340:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_239
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_239:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_329:
	nop	
	jmp	.label_158
.label_158:
	mov	rsp, rsp
	jmp	.label_160
.label_160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_164
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_164:
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
	jmp	.label_176
.label_326:
	mov	rsp, rsp
	jmp	.label_190
.label_205:
	lea	rsi, [rsi]
	jmp	.label_191
.label_191:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_321
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_197
.label_321:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_199
.label_197:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_199
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
	jne	.label_206
.label_199:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_206
	mov	rsp, rsp
	jmp	.label_190
.label_206:
	nop	
	jmp	.label_214
.label_214:
	jmp	.label_215
.label_215:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_216
	jmp	.label_167
.label_216:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_223
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_226
.label_226:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_229
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_240
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_240:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_250
.label_250:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_255
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_223:
	jmp	.label_262
.label_262:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_264
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_270
.label_270:
	nop	
	jmp	.label_190
.label_190:
	jmp	.label_254
.label_254:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_278
	test	byte ptr [rbp - 0x82], 1
	jne	.label_278
	lea	rdi, [rdi]
	jmp	.label_310
.label_310:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_305
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_305:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_278:
	jmp	.label_231
.label_231:
	nop	
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_302
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_302:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_309
	mov	byte ptr [rbp - 0x7e], 0
.label_309:
	mov	rbp, rbp
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_316
.label_177:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_322
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_322
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_322
	nop	
	jmp	.label_167
.label_322:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_181
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_181
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_181
	test	byte ptr [rbp - 0x7e], 1
	je	.label_338
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
	jmp	.label_157
.label_338:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_161
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_161
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_172
.label_161:
	jmp	.label_179
.label_179:
	mov	rbp, rbp
	jmp	.label_181
.label_181:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_182
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_182
	mov	rbp, rbp
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_189
	lea	rdi, [rdi]
	jmp	.label_192
.label_192:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_195
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_188
.label_189:
	jmp	.label_182
.label_182:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_210
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_210:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_157
.label_167:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_218
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_218
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_218:
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
.label_157:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055c0
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
	.align	16
	#Procedure 0x405630

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
	je	.label_356
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_357
.label_356:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_357
.label_357:
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
	je	.label_358
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_358:
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
	.align	16
	#Procedure 0x405800
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
.label_363:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_362
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
	jmp	.label_363
.label_362:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_361
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_359]],  rax
.label_361:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_360
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_360:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405910

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
	.align	16
	#Procedure 0x405960

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
	jge	.label_365
	call	abort
.label_365:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_368
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
	jge	.label_369
	call	xalloc_die
.label_369:
	test	byte ptr [rbp - 0x31], 1
	je	.label_370
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_366
.label_370:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_366:
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
	je	.label_364
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_359]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_364:
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
.label_368:
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
	ja	.label_371
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
	je	.label_367
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_367:
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
.label_371:
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
	.align	16
	#Procedure 0x405c90

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
	.align	16
	#Procedure 0x405cd0
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
	#Procedure 0x405d00
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
	.align	16
	#Procedure 0x405d40

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
	.align	16
	#Procedure 0x405da0

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
	jne	.label_372
	call	abort
.label_372:
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
	.align	16
	#Procedure 0x405e40

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
	.align	16
	#Procedure 0x405eb0

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
	.align	16
	#Procedure 0x405ef0
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
	.align	16
	#Procedure 0x405f30

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
	.align	16
	#Procedure 0x405fe0

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
	#Procedure 0x406020

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
	#Procedure 0x406050
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
	#Procedure 0x406090

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
	.align	16
	#Procedure 0x406180

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
	.align	16
	#Procedure 0x4061d0

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
	.align	16
	#Procedure 0x406270
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
	.align	16
	#Procedure 0x4062c0
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
	.align	16
	#Procedure 0x406320

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
	.align	16
	#Procedure 0x406360
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
	#Procedure 0x4063a0

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
	#Procedure 0x4063e0
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
	#Procedure 0x406420

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
	je	.label_376
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_374
.label_376:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_375
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_374
.label_375:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_373
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_374
.label_373:
	nop	
	movabs	rax, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_374:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
.label_382:
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_383
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_381
.label_383:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_377
	lea	rdi, [rdi]
	jmp	.label_382
.label_377:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_380
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_380
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_384
.label_380:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_381
.label_384:
	jmp	.label_379
.label_379:
	jmp	.label_378
.label_378:
	mov	rsp, rsp
	jmp	.label_382
.label_381:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_391:
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
	jg	.label_392
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_390
.label_392:
	call	__errno_location
	cmp	dword ptr [rax], 4
	nop	
	jne	.label_388
	nop	
	jmp	.label_391
.label_388:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_385
	mov	eax, 0x7ff00000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_385
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_386
.label_385:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_390
.label_386:
	jmp	.label_387
.label_387:
	jmp	.label_389
.label_389:
	jmp	.label_391
.label_390:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406730

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
	je	.label_395
	movabs	rsi, OFFSET FLAT:.str_4
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
	jmp	.label_394
.label_395:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_394:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_397
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_396]]
	jmp	rcx
.label_526:
	jmp	.label_393
.label_527:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_393
.label_528:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_393
.label_529:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_393
.label_530:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_393
.label_531:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_393
.label_532:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_393
.label_533:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_0
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
	jmp	.label_393
.label_534:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_393
.label_535:
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_393
.label_397:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_393:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ea0
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
.label_398:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_399
	mov	rbp, rbp
	jmp	.label_400
.label_400:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_398
.label_399:
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
	.align	16
	#Procedure 0x406f50

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
.label_403:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_402
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_405
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
	jmp	.label_406
.label_405:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_406:
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
.label_402:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_401
	mov	rsp, rsp
	jmp	.label_404
.label_401:
	jmp	.label_407
.label_407:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_403
.label_404:
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
	.align	16
	#Procedure 0x4070b0

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
	je	.label_408
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
.label_408:
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
	.align	16
	#Procedure 0x407260
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
	movabs	rsi, OFFSET FLAT:.str.15_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
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
	.align	16
	#Procedure 0x407310
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
	jae	.label_409
	mov	rbp, rbp
	call	xalloc_die
.label_409:
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
	#Procedure 0x407370

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
	jne	.label_410
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_410
	lea	rdi, [rdi]
	call	xalloc_die
.label_410:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073d0
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
	jae	.label_411
	mov	rsp, rsp
	call	xalloc_die
.label_411:
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
	.align	16
	#Procedure 0x407450

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
	jne	.label_412
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_412
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_414
.label_412:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_413
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_413
	lea	rsi, [rsi]
	call	xalloc_die
.label_413:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_414:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407500

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
	jne	.label_415
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_417
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
.label_417:
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
	jae	.label_419
	call	xalloc_die
.label_419:
	lea	rsi, [rsi]
	jmp	.label_418
.label_415:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_416
	call	xalloc_die
.label_416:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_418:
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
	.align	16
	#Procedure 0x407630

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
	#Procedure 0x407660
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
	#Procedure 0x4076a0
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
	#Procedure 0x4076f0
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
	jb	.label_420
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_421
.label_420:
	lea	rsi, [rsi]
	call	xalloc_die
.label_421:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407760

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
	.align	16
	#Procedure 0x4077b0
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
	.align	16
	#Procedure 0x407810

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
	.section	.text
	.align	16
	#Procedure 0x407870

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407880

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	set_binary_mode
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_422
	call	xset_binary_mode_error
.label_422:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078c0

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
	jne	.label_423
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_423:
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
	ja	.label_424
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_424
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_424
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
	jmp	.label_425
.label_424:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_425:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079b0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079d0

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079f0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	__gl_setmode_check
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_426
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_427
.label_426:
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_427:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a50

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
	jne	.label_428
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_432
.label_428:
	mov	rbp, rbp
	jmp	.label_429
.label_429:
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
	jne	.label_430
	jmp	.label_431
.label_430:
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
	je	.label_429
.label_431:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_432:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b40

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
	jne	.label_435
	test	byte ptr [rbp - 0x13], 1
	je	.label_434
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_435
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_434
.label_435:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_433
	call	__errno_location
	mov	dword ptr [rax], 0
.label_433:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_436
.label_434:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_436:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c20

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
	je	.label_438
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_5
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_439
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_437
.label_439:
	mov	byte ptr [rbp - 5], 0
.label_437:
	jmp	.label_438
.label_438:
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
	.align	16
	#Procedure 0x407cc0

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
	jne	.label_441
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_441:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_440
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_440:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d40

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
	jge	.label_445
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_443
.label_445:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_442
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
	je	.label_444
.label_442:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_444
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_444:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_446
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
.label_446:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_443:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e60

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
	je	.label_447
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_448
.label_447:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_449
.label_448:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_449:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ed0

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
	je	.label_450
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
.label_450:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f30

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
	jne	.label_451
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_451
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_451
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
	jne	.label_453
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_452
.label_453:
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
	jmp	.label_452
.label_451:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_452:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408040

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
	ja	.label_454
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_456
.label_454:
	lea	rsi, [rsi]
	jmp	.label_456
.label_456:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080a0
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
	jb	.label_457
	jmp	.label_460
.label_460:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_457
	jmp	.label_458
.label_458:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_459
	jmp	.label_457
.label_457:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_461
.label_459:
	mov	byte ptr [rbp - 1], 0
.label_461:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408110
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
	jb	.label_462
	jmp	.label_465
.label_465:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_463
	jmp	.label_462
.label_462:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_464
.label_463:
	mov	byte ptr [rbp - 1], 0
.label_464:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408160
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_466
	jmp	.label_467
.label_467:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_468
.label_466:
	mov	byte ptr [rbp - 1], 0
.label_468:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408190
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_469
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_469:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081c0
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
	jb	.label_470
	jmp	.label_472
.label_472:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_473
	jmp	.label_470
.label_470:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_471
.label_473:
	mov	byte ptr [rbp - 1], 0
.label_471:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408210
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_474
	jmp	.label_476
.label_476:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_475
.label_474:
	mov	byte ptr [rbp - 1], 0
.label_475:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408250
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_477
	jmp	.label_479
.label_479:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_478
.label_477:
	mov	byte ptr [rbp - 1], 0
.label_478:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408290
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_480
	jmp	.label_482
.label_482:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_481
.label_480:
	mov	byte ptr [rbp - 1], 0
.label_481:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082d0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_483
	jmp	.label_485
.label_485:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_484
.label_483:
	mov	byte ptr [rbp - 1], 0
.label_484:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408310
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
	jb	.label_486
	jmp	.label_489
.label_489:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_486
	jmp	.label_490
.label_490:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_486
	jmp	.label_488
.label_488:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_491
	jmp	.label_486
.label_486:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_487
.label_491:
	mov	byte ptr [rbp - 1], 0
.label_487:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408390
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
	jb	.label_492
	jmp	.label_495
.label_495:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_493
	jmp	.label_492
.label_492:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_493:
	mov	byte ptr [rbp - 1], 0
.label_494:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083e0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_496
	jmp	.label_498
.label_498:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_497
.label_496:
	mov	byte ptr [rbp - 1], 0
.label_497:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408420
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
	jb	.label_499
	jmp	.label_501
.label_501:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_499
	jmp	.label_500
.label_500:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_502
	jmp	.label_499
.label_499:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_503
.label_502:
	mov	byte ptr [rbp - 1], 0
.label_503:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408490

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_504
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_505
.label_504:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_505:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_507
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_508
.label_507:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_508:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085c0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat