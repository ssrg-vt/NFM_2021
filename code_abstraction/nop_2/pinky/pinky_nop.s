	.section	.text
	.align	32
	#Procedure 0x401940

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edi
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	je	.label_7
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_9
.label_7:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.7
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_9:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x2c]
	nop	
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x28], rax
.label_12:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 0x35], cl
	je	.label_14
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x35], cl
.label_14:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_15
	jmp	.label_10
.label_15:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_12
.label_10:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_13
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_13:
	nop	
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xc], eax
	call	setlocale
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_11
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	eax, 3
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	strncmp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x64], edi
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	call	atexit
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
.label_37:
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.12
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:longopts
	mov	rbp, rbp
	xor	eax, eax
	mov	r8d, eax
	nop	
	mov	edi, dword ptr [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x70]
	call	getopt_long
	mov	dword ptr [rbp - 0x44], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_22
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], ecx
	mov	rbp, rbp
	je	.label_25
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x14], eax
	je	.label_34
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_17
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	je	.label_16
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	je	.label_21
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	je	.label_27
	jmp	.label_31
.label_31:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x6c
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	nop	
	je	.label_32
	lea	rsi, [rsi]
	jmp	.label_35
.label_35:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x54], eax
	je	.label_38
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_19
	lea	rsi, [rsi]
	jmp	.label_39
.label_39:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x73
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	je	.label_23
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	je	.label_29
	jmp	.label_24
.label_23:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [do_short_format]],  1
	jmp	.label_18
.label_32:
	mov	byte ptr [byte ptr [do_short_format]],  0
	mov	rsp, rsp
	jmp	.label_18
.label_16:
	mov	byte ptr [byte ptr [include_heading]],  0
	mov	rbp, rbp
	jmp	.label_18
.label_29:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [include_fullname]],  0
	nop	
	jmp	.label_18
.label_27:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [include_fullname]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [include_where]],  0
	jmp	.label_18
.label_19:
	nop	
	mov	byte ptr [byte ptr [include_fullname]],  0
	mov	byte ptr [byte ptr [include_where]],  0
	nop	
	mov	byte ptr [byte ptr [include_idle]],  0
	jmp	.label_18
.label_21:
	mov	byte ptr [byte ptr [include_project]],  0
	jmp	.label_18
.label_38:
	mov	byte ptr [byte ptr [include_plan]],  0
	lea	rdi, [rdi]
	jmp	.label_18
.label_17:
	mov	byte ptr [byte ptr [include_home_and_shell]],  0
	jmp	.label_18
.label_34:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_25:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.8
	movabs	rdx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:.str.15
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.16
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, r10
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_24:
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_18:
	jmp	.label_37
.label_22:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [do_short_format]],  1
	jne	.label_20
	nop	
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	jne	.label_20
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	edi, 1
	call	usage
.label_20:
	nop	
	test	byte ptr [byte ptr [do_short_format]],  1
	nop	
	je	.label_41
	movabs	rdi, OFFSET FLAT:.str.7
	mov	esi, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x70]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	nop	
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	call	short_pinky
	jmp	.label_30
.label_41:
	nop	
	mov	edi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	shl	rcx, 3
	add	rax, rcx
	nop	
	mov	rsi, rax
	nop	
	call	long_pinky
.label_30:
	xor	eax, eax
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402100

	.globl short_pinky
	.type short_pinky, @function
short_pinky:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x18]
	mov	rsp, rsp
	lea	rcx, [rbp - 0x28]
	xor	r8d, r8d
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	ecx, r8d
	lea	rsi, [rsi]
	call	read_utmp
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_44
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_44:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	scan_entries
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0

	.globl long_pinky
	.type long_pinky, @function
long_pinky:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0
.label_45:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_46
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	print_long_entry
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_45
.label_46:
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402250

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 2
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, eax
	nop	
	call	hard_locale
	nop	
	test	al, 1
	jne	.label_47
	mov	rbp, rbp
	jmp	.label_51
.label_47:
	nop	
	movabs	rax, OFFSET FLAT:.str.36
	mov	rsp, rsp
	mov	qword ptr [word ptr [time_format]],  rax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [time_format_width]],  0x10
	nop	
	jmp	.label_52
.label_51:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.37
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0xc
.label_52:
	mov	rbp, rbp
	test	byte ptr [byte ptr [include_heading]],  1
	lea	rsi, [rsi]
	je	.label_56
	call	print_heading
.label_56:
	jmp	.label_55
.label_55:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_59
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x2c]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_53
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	nop	
	cmp	ecx, 7
	mov	rbp, rbp
	jne	.label_53
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	je	.label_49
	mov	dword ptr [rbp - 0x20], 0
.label_58:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x1c]
	jge	.label_54
	mov	eax, 0x20
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x2c
	movsxd	rsi, dword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rcx
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_50
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_entry
	jmp	.label_54
.label_50:
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jmp	.label_58
.label_54:
	jmp	.label_48
.label_49:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	print_entry
.label_48:
	jmp	.label_53
.label_53:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_55
.label_59:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	mov	rsi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [include_fullname]],  1
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	je	.label_62
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	dword ptr [rbp - 0x14], eax
.label_62:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	call	gettext
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	test	byte ptr [byte ptr [include_idle]],  1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_60
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_60:
	nop	
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [time_format_width]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [include_where]],  1
	mov	dword ptr [rbp - 8], eax
	je	.label_61
	movabs	rdi, OFFSET FLAT:.str.49
	mov	rsp, rsp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_61:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025a0

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x290
	lea	rax, [rbp - 0x260]
	nop	
	mov	qword ptr [rbp - 0x120], rdi
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	je	.label_67
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.50
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	call	stpcpy
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
.label_67:
	mov	eax, 0x20
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x120]
	nop	
	add	rcx, 8
	mov	rsi, rcx
	call	stzncpy
	nop	
	lea	rsi, [rbp - 0x118]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x260]
	mov	qword ptr [rbp - 0x88], rax
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_69
	mov	rsp, rsp
	mov	eax, 0x2a
	mov	ecx, 0x20
	mov	edx, dword ptr [rbp - 0x100]
	nop	
	and	edx, 0x10
	cmp	edx, 0
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	sil, al
	mov	byte ptr [rbp - 0x79], sil
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	jmp	.label_73
.label_69:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 0x3f
	mov	qword ptr [rbp - 0x38], 0
.label_73:
	movabs	rdi, OFFSET FLAT:.str.51
	mov	esi, 0x20
	mov	rax, qword ptr [rbp - 0x120]
	add	rax, 0x2c
	mov	rdx, rax
	mov	al, 0
	call	printf
	test	byte ptr [byte ptr [include_fullname]],  1
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_68
	mov	eax, 0x20
	mov	edx, eax
	lea	rdi, [rbp - 0x290]
	mov	rcx, qword ptr [rbp - 0x120]
	add	rcx, 0x2c
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	stzncpy
	mov	rsp, rsp
	lea	rdi, [rbp - 0x290]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	call	getpwnam
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jne	.label_64
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_71
.label_64:
	lea	rdi, [rdi]
	mov	esi, 0x2c
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 0x18]
	call	strchr
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_79
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_79:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	create_fullname
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], eax
	call	free
.label_71:
	jmp	.label_68
.label_68:
	movabs	rdi, OFFSET FLAT:.str.55
	lea	rdi, [rdi]
	mov	edx, 0x20
	movsx	esi, byte ptr [rbp - 0x79]
	mov	rax, qword ptr [rbp - 0x120]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	test	byte ptr [byte ptr [include_idle]],  1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	je	.label_63
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	je	.label_76
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	idle_string
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rsi, rax
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	jmp	.label_70
.label_76:
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x24], eax
.label_70:
	jmp	.label_63
.label_63:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	call	time_string
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rbp, rbp
	test	byte ptr [byte ptr [include_where]],  1
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	je	.label_66
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 0x4c]
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_66
	mov	eax, 0x100
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rbp - 0x230]
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x120]
	add	rcx, 0x4c
	mov	rsi, rcx
	mov	rsp, rsp
	call	stzncpy
	mov	esi, 0x3a
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x230]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	call	strchr
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_78
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], 0
.label_78:
	mov	rsp, rsp
	cmp	byte ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	je	.label_77
	nop	
	lea	rdi, [rbp - 0x230]
	nop	
	call	canon_host
	mov	qword ptr [rbp - 8], rax
.label_77:
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_65
	nop	
	lea	rax, [rbp - 0x230]
	mov	qword ptr [rbp - 8], rax
.label_65:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_72
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_75
.label_72:
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0xc], eax
.label_75:
	mov	rbp, rbp
	lea	rax, [rbp - 0x230]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_74
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	free
.label_74:
	jmp	.label_66
.label_66:
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x290
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
.label_83:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	jae	.label_82
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
.label_82:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	test	al, 1
	jne	.label_80
	nop	
	jmp	.label_81
.label_80:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	jmp	.label_83
.label_81:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	count_ampersands
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	je	.label_84
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	imul	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_88
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	jae	.label_90
.label_88:
	call	xalloc_die
.label_90:
	jmp	.label_84
.label_84:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_85:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_89
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x26
	nop	
	jne	.label_91
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	movsxd	rcx, edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x200
	nop	
	cmp	edi, 0
	je	.label_93
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	call	toupper
	mov	rbp, rbp
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rcx
	nop	
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	byte ptr [rcx], dl
.label_93:
	mov	rsp, rsp
	jmp	.label_86
.label_86:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	nop	
	je	.label_87
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	jmp	.label_86
.label_87:
	mov	rsp, rsp
	jmp	.label_92
.label_91:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, rax
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	byte ptr [rax], cl
.label_92:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_85
.label_89:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d50

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x50], rdi
	cmp	qword ptr [word ptr [idle_string.now]],  0
	lea	rdi, [rdi]
	jne	.label_97
	movabs	rdi, OFFSET FLAT:idle_string.now
	mov	rbp, rbp
	call	time
	mov	qword ptr [rbp - 0x30], rax
.label_97:
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	nop	
	sub	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0x3c
	jge	.label_96
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.58
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_95
.label_96:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0x15180
	mov	rsp, rsp
	jge	.label_94
	movabs	rdi, OFFSET FLAT:idle_string.buf
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.59
	nop	
	mov	eax, 0x3c
	mov	rsp, rsp
	mov	ecx, eax
	mov	eax, 0xe10
	mov	edx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	r8, qword ptr [rbp - 8]
	idiv	r8
	mov	r9d, eax
	mov	dword ptr [rbp - 0x44], r9d
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cqo	
	mov	rsp, rsp
	idiv	r8
	mov	rax, rdx
	nop	
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	rbp, rbp
	mov	r9d, eax
	mov	dword ptr [rbp - 0x34], r9d
	nop	
	mov	r9d, dword ptr [rbp - 0x44]
	mov	ecx, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	edx, r9d
	lea	rsi, [rsi]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_98
.label_94:
	movabs	rdi, OFFSET FLAT:idle_string.buf
	movabs	rsi, OFFSET FLAT:.str.60
	mov	eax, 0x15180
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	cqo	
	mov	rbp, rbp
	idiv	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	mov	dword ptr [rbp - 0xc], eax
.label_98:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:idle_string.buf
	mov	qword ptr [rbp - 0x18], rax
.label_95:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl time_string
	.type time_string, @function
time_string:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rdi, dword ptr [rdi + 0x154]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	call	localtime
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_99
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:time_string.buf
	mov	rbp, rbp
	mov	eax, 0x21
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rdx,  qword ptr [word ptr [time_format]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	strftime
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:time_string.buf
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_100
.label_99:
	movabs	rsi, OFFSET FLAT:time_string.buf
	mov	rdi, qword ptr [rbp - 0x28]
	call	timetostr
	mov	qword ptr [rbp - 0x20], rax
.label_100:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl count_ampersands
	.type count_ampersands, @function
count_ampersands:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_102:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x26
	mov	rsp, rsp
	jne	.label_101
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_101:
	mov	rsp, rsp
	jmp	.label_103
.label_103:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	cmp	byte ptr [rax], 0
	jne	.label_102
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	imaxtostr
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403060

	.globl print_long_entry
	.type print_long_entry, @function
print_long_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x910
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rdi, qword ptr [rbp - 0xc8]
	call	getpwnam
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.61
	nop	
	mov	qword ptr [rbp - 0x68], rax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.63
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	nop	
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	printf
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	jne	.label_115
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	nop	
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rsi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_108
.label_115:
	mov	rsp, rsp
	mov	esi, 0x2c
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, qword ptr [rax + 0x18]
	mov	rbp, rbp
	call	strchr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_112
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	byte ptr [rax], 0
.label_112:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rax]
	call	create_fullname
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0x904], eax
	mov	rbp, rbp
	call	free
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	test	byte ptr [byte ptr [include_home_and_shell]],  1
	mov	dword ptr [rbp - 0x14], eax
	je	.label_113
	movabs	rdi, OFFSET FLAT:.str.65
	nop	
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x84], eax
	mov	al, 0
	nop	
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.67
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x28]
	mov	dword ptr [rbp - 0x34], eax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	edi, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xa0], eax
.label_113:
	test	byte ptr [byte ptr [include_project]],  1
	mov	rsp, rsp
	je	.label_105
	nop	
	movabs	rax, OFFSET FLAT:.str.68
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	add	rdi, rax
	add	rdi, 1
	lea	rsi, [rsi]
	call	xmalloc
	nop	
	movabs	rsi, OFFSET FLAT:.str.69
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x4f8], rsi
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0xd0]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	stpcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x4f8]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	call	fopen
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	je	.label_111
	movabs	rdi, OFFSET FLAT:.str.70
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
.label_107:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	eax, 0x400
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	lea	rdi, [rbp - 0x4f0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	fread_unlocked
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	nop	
	jbe	.label_109
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rbp - 0x4f0]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fwrite_unlocked
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_107
.label_109:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	rpl_fclose
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4fc], eax
.label_111:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
.label_105:
	test	byte ptr [byte ptr [include_plan]],  1
	lea	rdi, [rdi]
	je	.label_106
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.71
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	call	strlen
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rdi, rax
	lea	rsi, [rsi]
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:.str.69
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	rsi, rax
	mov	rsp, rsp
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	stpcpy
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	call	fopen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	je	.label_114
	movabs	rdi, OFFSET FLAT:.str.72
	call	gettext
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
.label_104:
	mov	rbp, rbp
	mov	eax, 1
	mov	esi, eax
	mov	rsp, rsp
	mov	eax, 0x400
	mov	edx, eax
	nop	
	lea	rdi, [rbp - 0x900]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fread_unlocked
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	cmp	rax, 0
	jbe	.label_110
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	lea	rdi, [rbp - 0x900]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_104
.label_110:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	rpl_fclose
	mov	dword ptr [rbp - 0x9c], eax
.label_114:
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	free
.label_106:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x58], eax
.label_108:
	add	rsp, 0x910
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0

	.globl canon_host
	.type canon_host, @function
canon_host:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:last_cherror
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	canon_host_r
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:canon_host_r.hints
	lea	r8, [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [dword ptr [canon_host_r.hints]],  2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	call	getaddrinfo
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_120
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	je	.label_117
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_121
.label_117:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_121:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_118
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_118
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xfffffff6
.label_118:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	freeaddrinfo
	jmp	.label_116
.label_120:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_119
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_119:
	jmp	.label_116
.label_116:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403740
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	push	rbp
	mov	rbp, rsp
	mov	edi,  dword ptr [dword ptr [last_cherror]]
	call	gai_strerror
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403760
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
	#Procedure 0x403790
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
	#Procedure 0x4037c0

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
	je	.label_122
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_125
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_122
.label_125:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_126
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
	jmp	.label_124
.label_126:
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
.label_124:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_122:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_123
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_123:
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
	#Procedure 0x4038f0

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
	je	.label_128
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_129
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_127
.label_129:
	mov	byte ptr [rbp - 0xd], 0
.label_127:
	jmp	.label_128
.label_128:
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
	#Procedure 0x403990

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_130
	nop	
	jmp	.label_133
.label_133:
	mov	eax, 0x30
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	eax, 0xa
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_133
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_131
.label_130:
	jmp	.label_132
.label_132:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_132
	jmp	.label_131
.label_131:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ae0

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
	jne	.label_134
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_134:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_137
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_136
.label_137:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_136:
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
	jl	.label_135
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
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
	jne	.label_135
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
	jne	.label_138
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_138:
	jmp	.label_135
.label_135:
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
	#Procedure 0x403c60
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
	je	.label_140
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_139
.label_140:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_139
.label_139:
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
	#Procedure 0x403d10
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
	je	.label_141
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_142
.label_141:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_142
.label_142:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70
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
	je	.label_143
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_144
.label_143:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_144
.label_144:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dd0

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
	je	.label_145
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_146
.label_145:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_146
.label_146:
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
	#Procedure 0x403ed0
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
	jne	.label_147
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_147:
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
	#Procedure 0x403f30

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
	jne	.label_148
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_148:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_150
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_149
.label_150:
	call	abort
.label_149:
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
	#Procedure 0x403fd0
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
	je	.label_151
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_152
.label_151:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_152
.label_152:
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
	#Procedure 0x4040d0

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
.label_246:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_320
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_324]]
	jmp	rcx
.label_586:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_585:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_265
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_272:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_265
.label_265:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_170
.label_587:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_170
.label_588:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_297
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
.label_297:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_308
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_326:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_313
	jmp	.label_281
.label_281:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_316
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_316:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_326
.label_313:
	mov	rbp, rbp
	jmp	.label_308
.label_308:
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
	jmp	.label_170
.label_583:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_582:
	mov	byte ptr [rbp - 0x3e], 1
.label_584:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_344
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_344:
	jmp	.label_346
.label_346:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_162
	jmp	.label_351
.label_351:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_350
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_350:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_162
.label_162:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_170
.label_581:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_170
.label_320:
	call	abort
.label_170:
	mov	qword ptr [rbp - 0xd8], 0
.label_186:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_181
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
	jmp	.label_183
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_183:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_203
	mov	rbp, rbp
	jmp	.label_211
.label_203:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_213
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_213
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_213
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_234
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_234
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_242
.label_234:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_242:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_213
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
	jne	.label_213
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_262
	jmp	.label_158
.label_262:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_213:
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
	ja	.label_269
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_282]]
	nop	
	jmp	rcx
.label_566:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_286
	mov	rsp, rsp
	jmp	.label_291
.label_291:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_293
	jmp	.label_158
.label_293:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_295
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_295
	nop	
	jmp	.label_299
.label_299:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_302
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_309
.label_309:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_311:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_317
.label_317:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_321
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_295:
	lea	rsi, [rsi]
	jmp	.label_329
.label_329:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_191
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_191:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_334
.label_334:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_175
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_175
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_175
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_175
	nop	
	jmp	.label_157
.label_157:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_159
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_237
.label_237:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_347
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_347:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_175
.label_175:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_187
.label_286:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_190
	mov	rbp, rbp
	jmp	.label_164
.label_190:
	jmp	.label_187
.label_187:
	jmp	.label_184
.label_577:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_201
	mov	rbp, rbp
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_209
	jmp	.label_217
.label_201:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_274
	jmp	.label_158
.label_274:
	jmp	.label_224
.label_209:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_227
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_227
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_227
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
	je	.label_245
	nop	
	jmp	.label_259
.label_259:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_245
	jmp	.label_251
.label_251:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_245
	jmp	.label_258
.label_258:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_245
	jmp	.label_273
.label_273:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_220
	jmp	.label_245
.label_245:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_275
	jmp	.label_158
.label_275:
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
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_279:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_298
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_300
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_300:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_305
.label_305:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_235
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_235:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_304:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_160
.label_220:
	jmp	.label_160
.label_160:
	jmp	.label_227
.label_227:
	jmp	.label_224
.label_217:
	jmp	.label_224
.label_224:
	jmp	.label_184
.label_567:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_176
.label_568:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_176
.label_572:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_176
.label_570:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_171
.label_573:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_171
.label_569:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_171
.label_571:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_176
.label_578:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_345
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_348
	nop	
	jmp	.label_158
.label_348:
	lea	rsi, [rsi]
	jmp	.label_153
.label_345:
	test	byte ptr [rbp - 0x89], 1
	je	.label_155
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_155
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_155
	jmp	.label_153
.label_155:
	jmp	.label_171
.label_171:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_172
	test	byte ptr [rbp - 0x3e], 1
	je	.label_172
	jmp	.label_158
.label_172:
	mov	rsp, rsp
	jmp	.label_176
.label_176:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_179
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_182
.label_179:
	jmp	.label_184
.label_579:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_188
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_192
	jmp	.label_199
.label_188:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_192
.label_199:
	nop	
	jmp	.label_184
.label_192:
	jmp	.label_204
.label_204:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_218
	lea	rsi, [rsi]
	jmp	.label_184
.label_218:
	nop	
	jmp	.label_212
.label_212:
	mov	byte ptr [rbp - 0x91], 1
.label_574:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_216
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_216
	jmp	.label_158
.label_216:
	lea	rsi, [rsi]
	jmp	.label_184
.label_576:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_225
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_338
	jmp	.label_158
.label_338:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_232
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_232
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_232:
	jmp	.label_243
.label_243:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_244
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_248
.label_248:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_255
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_255:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_263
.label_263:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_267
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_225:
	lea	rsi, [rsi]
	jmp	.label_184
.label_575:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_184
.label_269:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_287
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
	jmp	.label_268
.label_287:
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
	jne	.label_310
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_310:
	jmp	.label_233
.label_233:
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
	jne	.label_328
	jmp	.label_163
.label_328:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_332
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_163
.label_332:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_337
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_156:
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
	jae	.label_195
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_195:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_352
	jmp	.label_169
.label_352:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_156
.label_169:
	jmp	.label_163
.label_337:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_166
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_166
	mov	qword ptr [rbp - 0xe8], 1
.label_223:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_173
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
	jb	.label_177
	jmp	.label_196
.label_196:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_177
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_177
	jmp	.label_208
.label_208:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_210
	mov	rsp, rsp
	jmp	.label_177
.label_177:
	mov	rsp, rsp
	jmp	.label_158
.label_210:
	jmp	.label_222
.label_222:
	mov	rsp, rsp
	jmp	.label_288
.label_288:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_223
.label_173:
	mov	rbp, rbp
	jmp	.label_166
.label_166:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_230
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_230:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_353
.label_353:
	lea	rsi, [rsi]
	jmp	.label_238
.label_238:
	jmp	.label_240
.label_240:
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
	jne	.label_233
.label_163:
	jmp	.label_268
.label_268:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_247
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_257
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_257
.label_247:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_236:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_180
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_180
	jmp	.label_276
.label_276:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_277
	jmp	.label_158
.label_277:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_219
	test	byte ptr [rbp - 0x42], 1
	jne	.label_219
	lea	rdi, [rdi]
	jmp	.label_289
.label_289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_294
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_294:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_336
.label_336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_154
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_154:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_306
.label_306:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_231
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_219:
	jmp	.label_318
.label_318:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_319:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_322
.label_322:
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_327
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
.label_327:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_341
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
.label_341:
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
	jmp	.label_178
.label_180:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_200
	lea	rdi, [rdi]
	jmp	.label_161
.label_161:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_215:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_200:
	nop	
	jmp	.label_178
.label_178:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_330
	jmp	.label_185
.label_330:
	lea	rsi, [rsi]
	jmp	.label_189
.label_189:
	test	byte ptr [rbp - 0x42], 1
	je	.label_193
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_193
	lea	rsi, [rsi]
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_198
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_206
.label_206:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_214
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_193:
	nop	
	jmp	.label_226
.label_226:
	mov	rsp, rsp
	jmp	.label_228
.label_228:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_229
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_229:
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
	jmp	.label_236
.label_185:
	mov	rsp, rsp
	jmp	.label_153
.label_257:
	lea	rsi, [rsi]
	jmp	.label_184
.label_184:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_249
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_253
.label_249:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_256
.label_253:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_256
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
	jne	.label_260
.label_256:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_260
	mov	rsp, rsp
	jmp	.label_153
.label_260:
	nop	
	jmp	.label_182
.label_182:
	jmp	.label_283
.label_283:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_285
	jmp	.label_158
.label_285:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_290
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_290
	lea	rdi, [rdi]
	jmp	.label_296
.label_296:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_343
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_343:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_307:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_312
.label_312:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_315
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_290:
	jmp	.label_339
.label_339:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_323
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_331
.label_331:
	nop	
	jmp	.label_153
.label_153:
	jmp	.label_333
.label_333:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_221
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_221
	lea	rdi, [rdi]
	jmp	.label_340
.label_340:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_342
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_221:
	jmp	.label_165
.label_165:
	nop	
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_168
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_168:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_278
	mov	byte ptr [rbp - 0xb7], 0
.label_278:
	mov	rbp, rbp
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_186
.label_211:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_194
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_194
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_194
	nop	
	jmp	.label_158
.label_194:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_205
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_205
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_205
	test	byte ptr [rbp - 0xb7], 1
	je	.label_271
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
	jmp	.label_239
.label_271:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_241
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_241
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_246
.label_241:
	jmp	.label_250
.label_250:
	mov	rbp, rbp
	jmp	.label_205
.label_205:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_254
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_254
	mov	rbp, rbp
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_261
	lea	rdi, [rdi]
	jmp	.label_264
.label_264:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_266
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_266:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_280
.label_280:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_284
.label_261:
	jmp	.label_254
.label_254:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_292
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_292:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_239
.label_158:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_301
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_301
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_301:
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
.label_239:
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
	#Procedure 0x405b70
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
	#Procedure 0x405be0

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
	je	.label_354
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_355
.label_354:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_355
.label_355:
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
	je	.label_356
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_356:
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
	#Procedure 0x405db0
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
.label_361:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_360
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
	jmp	.label_361
.label_360:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_359
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_357]],  rax
.label_359:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_358
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_358:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ec0

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
	#Procedure 0x405f10

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
	jge	.label_368
	call	abort
.label_368:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_363
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
	jge	.label_364
	call	xalloc_die
.label_364:
	test	byte ptr [rbp - 0x51], 1
	je	.label_365
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_369
.label_365:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_369:
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
	je	.label_367
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_357]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_367:
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
.label_363:
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
	ja	.label_366
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
	je	.label_362
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_362:
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
.label_366:
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
	#Procedure 0x406240

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
	#Procedure 0x406280
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
	#Procedure 0x4062b0
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
	#Procedure 0x4062f0

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
	#Procedure 0x406350

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
	jne	.label_370
	call	abort
.label_370:
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
	#Procedure 0x4063f0

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
	#Procedure 0x406460
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
	#Procedure 0x4064a0
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
	#Procedure 0x4064e0

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
	#Procedure 0x406590

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
	#Procedure 0x4065d0

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
	#Procedure 0x406600
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
	#Procedure 0x406640

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
	#Procedure 0x406720

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
	#Procedure 0x406770

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
	#Procedure 0x406810
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
	#Procedure 0x406860
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
	#Procedure 0x4068c0

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
	#Procedure 0x406900
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
	#Procedure 0x406940

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
	#Procedure 0x406980
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
	#Procedure 0x4069c0

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
	je	.label_374
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_372
.label_374:
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
	jmp	.label_372
.label_373:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_371
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
	jmp	.label_372
.label_371:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_372:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00

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
	je	.label_375
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
	jmp	.label_378
.label_375:
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
.label_378:
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
	ja	.label_379
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_377]]
	jmp	rcx
.label_549:
	jmp	.label_376
.label_550:
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
	jmp	.label_376
.label_551:
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
	jmp	.label_376
.label_552:
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
	jmp	.label_376
.label_553:
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
	jmp	.label_376
.label_554:
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
	jmp	.label_376
.label_555:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_376
.label_556:
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
	jmp	.label_376
.label_557:
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
	jmp	.label_376
.label_558:
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
	jmp	.label_376
.label_379:
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
.label_376:
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
	#Procedure 0x407340
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
.label_380:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_381
	mov	rbp, rbp
	jmp	.label_382
.label_382:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_380
.label_381:
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
	#Procedure 0x4073f0

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
.label_386:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_388
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
	jmp	.label_387
.label_388:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_387:
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
.label_383:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_385
	mov	rsp, rsp
	jmp	.label_389
.label_385:
	jmp	.label_384
.label_384:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_386
.label_389:
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
	#Procedure 0x407550

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
	je	.label_390
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
.label_390:
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
	#Procedure 0x407710
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
	movabs	rdi, OFFSET FLAT:.str.19
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
	#Procedure 0x4077c0
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
	jae	.label_391
	mov	rbp, rbp
	call	xalloc_die
.label_391:
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
	#Procedure 0x407820

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
	jne	.label_392
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_392
	lea	rdi, [rdi]
	call	xalloc_die
.label_392:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407880
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
	jae	.label_393
	mov	rsp, rsp
	call	xalloc_die
.label_393:
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
	#Procedure 0x407900

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
	jne	.label_394
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_394
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_396
.label_394:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_395
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_395
	lea	rsi, [rsi]
	call	xalloc_die
.label_395:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079b0

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
	jne	.label_397
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_399
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
.label_399:
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
	jae	.label_401
	call	xalloc_die
.label_401:
	lea	rsi, [rsi]
	jmp	.label_400
.label_397:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_398
	call	xalloc_die
.label_398:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_400:
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
	#Procedure 0x407ae0

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
	#Procedure 0x407b10
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
	#Procedure 0x407b50
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
	#Procedure 0x407ba0
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
	jb	.label_402
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_403
.label_402:
	lea	rsi, [rsi]
	call	xalloc_die
.label_403:
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
	#Procedure 0x407c10

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
	#Procedure 0x407c60
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
	#Procedure 0x407cc0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20

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
	jge	.label_407
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_405
.label_407:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_404
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
	je	.label_406
.label_404:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_406
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_406:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_408
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
.label_408:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_405:
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
	#Procedure 0x407e40

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
	je	.label_409
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_410
.label_409:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_411
.label_410:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_411:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407eb0

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
	je	.label_412
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
.label_412:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f10

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
	jne	.label_413
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_413
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_413
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
	jne	.label_415
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_414
.label_415:
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
	jmp	.label_414
.label_413:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_414:
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
	#Procedure 0x408020

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
	jne	.label_416
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_416:
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
	ja	.label_417
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_417
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_417
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
	jmp	.label_418
.label_417:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_418:
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
	#Procedure 0x408110
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	xmalloc
	mov	edx, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x2c
	mov	rsi, rax
	lea	rsi, [rsi]
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x20], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_422:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	jae	.label_420
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x20
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
.label_420:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_419
	jmp	.label_423
.label_419:
	lea	rsi, [rsi]
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_422
.label_423:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408220

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	utmpxname
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	setutxent
.label_428:
	call	getutxent
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	je	.label_426
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_427
	jmp	.label_424
.label_427:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_425
	lea	rsi, [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, 0x180
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_425:
	mov	eax, 0x180
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rcx
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	mov	rbp, rbp
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
.label_424:
	jmp	.label_428
.label_426:
	lea	rdi, [rdi]
	call	endutxent
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408360

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	nop	
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_429
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x12], al
	je	.label_432
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x12], cl
	jmp	.label_432
.label_432:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_429:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 6], al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	ecx, 2
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_431
	nop	
	test	byte ptr [rbp - 6], 1
	jne	.label_431
	mov	byte ptr [rbp - 5], 0
	jmp	.label_433
.label_431:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_430
	nop	
	test	byte ptr [rbp - 6], 1
	je	.label_430
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_430
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 4]
	nop	
	call	kill
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	jge	.label_430
	call	__errno_location
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_430
	mov	byte ptr [rbp - 5], 0
	mov	rsp, rsp
	jmp	.label_433
.label_430:
	mov	byte ptr [rbp - 5], 1
.label_433:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408490

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
	jne	.label_434
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_436
.label_434:
	mov	rbp, rbp
	jmp	.label_435
.label_435:
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
	jne	.label_437
	jmp	.label_438
.label_437:
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
	je	.label_435
.label_438:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_436:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408580

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
	jne	.label_441
	test	byte ptr [rbp - 0x15], 1
	je	.label_440
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_441
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_440
.label_441:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_439
	call	__errno_location
	mov	dword ptr [rax], 0
.label_439:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_442
.label_440:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_442:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408660

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
	jne	.label_444
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_444:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_443
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_443:
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
	#Procedure 0x4086e0

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
	ja	.label_445
	jmp	.label_446
.label_446:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_447
.label_445:
	lea	rsi, [rsi]
	jmp	.label_447
.label_447:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740
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
	jb	.label_448
	jmp	.label_449
.label_449:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_448
	nop	
	jmp	.label_451
.label_451:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_452
	jmp	.label_448
.label_448:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_450
.label_452:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_450:
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
	#Procedure 0x4087d0
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
	jb	.label_453
	nop	
	jmp	.label_454
.label_454:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_455
	lea	rdi, [rdi]
	jmp	.label_453
.label_453:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_456
.label_455:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_456:
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
	#Procedure 0x408850
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
	ja	.label_457
	mov	rsp, rsp
	jmp	.label_459
.label_459:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_458
.label_457:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_458:
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
	#Procedure 0x4088a0
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
	je	.label_460
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_460:
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
	#Procedure 0x4088f0
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
	jb	.label_461
	nop	
	jmp	.label_462
.label_462:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_463
	lea	rsi, [rsi]
	jmp	.label_461
.label_461:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_464
.label_463:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_464:
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
	#Procedure 0x408960
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
	ja	.label_466
	jmp	.label_467
.label_467:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_465
.label_466:
	mov	byte ptr [rbp - 5], 0
.label_465:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089b0
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
	ja	.label_468
	lea	rsi, [rsi]
	jmp	.label_469
.label_469:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_470
.label_468:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_470:
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
	#Procedure 0x408a00
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
	ja	.label_471
	jmp	.label_472
.label_472:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_473
.label_471:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_473:
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
	#Procedure 0x408a50
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
	ja	.label_474
	jmp	.label_476
.label_476:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_475
.label_474:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_475:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408aa0
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
	jb	.label_477
	jmp	.label_479
.label_479:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_477
	nop	
	jmp	.label_482
.label_482:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_477
	jmp	.label_480
.label_480:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_478
	mov	rsp, rsp
	jmp	.label_477
.label_477:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_481
.label_478:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_481:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b50
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
	jb	.label_483
	mov	rbp, rbp
	jmp	.label_484
.label_484:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_486
	mov	rsp, rsp
	jmp	.label_483
.label_483:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_485
.label_486:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_485:
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
	#Procedure 0x408bc0
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
	ja	.label_487
	jmp	.label_489
.label_489:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_488
.label_487:
	mov	byte ptr [rbp - 5], 0
.label_488:
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
	#Procedure 0x408c10
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
	jb	.label_490
	lea	rdi, [rdi]
	jmp	.label_494
.label_494:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_490
	jmp	.label_491
.label_491:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_493
	jmp	.label_490
.label_490:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_492
.label_493:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_492:
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
	#Procedure 0x408ca0

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
	ja	.label_495
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_497
.label_495:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_497:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cf0
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
	ja	.label_498
	mov	rbp, rbp
	jmp	.label_499
.label_499:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_500
.label_498:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_500:
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
	nop	dword ptr [rax]
