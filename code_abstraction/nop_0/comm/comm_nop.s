	.section	.text
	.align	32
	#Procedure 0x4015a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_8
.label_8:
	nop	
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401850

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 0x21], cl
	mov	rbp, rbp
	je	.label_15
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_15:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	test	al, 1
	jne	.label_10
	jmp	.label_11
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_13
.label_11:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	je	.label_14
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_14:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	edi, 5
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_12
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.37
	nop	
	mov	eax, 3
	nop	
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_12
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.41
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a70

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.16
	movabs	rsi, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	bindtextdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.16
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	call	textdomain
	mov	edi, 3
	mov	qword ptr [rbp - 0x30], rax
	nop	
	call	hard_locale
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:close_stdout
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [hard_LC_COLLATE]],  al
	call	atexit
	mov	byte ptr [byte ptr [only_file_1]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [only_file_2]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [both]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [seen_unpairable]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [label_23]],  0
	mov	byte ptr [byte ptr [issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [check_input_order]],  0
	mov	byte ptr [byte ptr [total_option]],  0
	mov	dword ptr [rbp - 0x34], eax
.label_18:
	movabs	rdx, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_21
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], ecx
	je	.label_27
	mov	rsp, rsp
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	je	.label_41
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x31
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	je	.label_45
	jmp	.label_19
.label_19:
	nop	
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	eax, 0x32
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	je	.label_29
	lea	rsi, [rsi]
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	eax, 0x33
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_26
	nop	
	jmp	.label_34
.label_34:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	je	.label_17
	mov	rsp, rsp
	jmp	.label_40
.label_40:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	je	.label_36
	mov	rsp, rsp
	jmp	.label_48
.label_48:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x81
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	je	.label_43
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_47
	jmp	.label_30
.label_30:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x83
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	je	.label_33
	jmp	.label_46
.label_45:
	mov	byte ptr [byte ptr [only_file_1]],  0
	lea	rsi, [rsi]
	jmp	.label_16
.label_29:
	nop	
	mov	byte ptr [byte ptr [only_file_2]],  0
	jmp	.label_16
.label_26:
	mov	byte ptr [byte ptr [both]],  0
	mov	rsp, rsp
	jmp	.label_16
.label_17:
	mov	byte ptr [byte ptr [delim]],  0
	jmp	.label_16
.label_43:
	mov	dword ptr [dword ptr [check_input_order]],  2
	jmp	.label_16
.label_36:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [check_input_order]],  1
	lea	rdi, [rdi]
	jmp	.label_16
.label_47:
	cmp	qword ptr [word ptr [col_sep_len]],  0
	lea	rsi, [rsi]
	je	.label_31
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [col_sep]]
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_31
	nop	
	movabs	rdi, OFFSET FLAT:.str.19
	nop	
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_31:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [col_sep]],  rax
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_49
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_32
.label_49:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_32
.label_32:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [word ptr [col_sep_len]],  rax
	lea	rdi, [rdi]
	jmp	.label_16
.label_33:
	mov	byte ptr [byte ptr [total_option]],  1
	jmp	.label_16
.label_41:
	xor	edi, edi
	call	usage
.label_27:
	movabs	rsi, OFFSET FLAT:.str.14
	movabs	rdx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str.21
	movabs	r9, OFFSET FLAT:.str.22
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_46:
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_16:
	nop	
	jmp	.label_18
.label_21:
	nop	
	cmp	qword ptr [word ptr [col_sep_len]],  0
	jne	.label_28
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [col_sep_len]],  1
.label_28:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, 2
	jge	.label_35
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	nop	
	jg	.label_38
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.23
	nop	
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	jmp	.label_39
.label_38:
	movabs	rdi, OFFSET FLAT:.str.24
	call	gettext
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	rsp, rsp
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_39:
	mov	edi, 1
	call	usage
.label_35:
	mov	eax, 2
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	nop	
	sub	ecx,  dword ptr [dword ptr [optind]]
	cmp	eax, ecx
	jge	.label_44
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 2
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	call	usage
.label_44:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rdi, rax
	call	compare_files
	mov	rbp, rbp
	test	byte ptr [byte ptr [issued_disorder_warning]],  1
	nop	
	jne	.label_20
	test	byte ptr [byte ptr [label_23]],  1
	je	.label_25
.label_20:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
.label_25:
	xor	eax, eax
	nop	
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402070

	.globl compare_files
	.type compare_files, @function
compare_files:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x260
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 0x18
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x170]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
	nop	
	mov	dword ptr [rbp - 0x174], 0
.label_52:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x174], 2
	jge	.label_83
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x178], 0
.label_54:
	cmp	dword ptr [rbp - 0x178], 4
	jge	.label_89
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xd0]
	movsxd	rcx, dword ptr [rbp - 0x178]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x174]
	imul	rdx, rdx, 0x60
	lea	rsi, [rsi]
	add	rax, rdx
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rsp, rsp
	mov	rdi, rax
	call	initbuffer
	mov	rsp, rsp
	lea	rax, [rbp - 0x120]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xd0]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x178]
	movsxd	rdi, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	imul	rdi, rdi, 0x60
	add	rcx, rdi
	imul	rdx, rdx, 0x18
	add	rcx, rdx
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x178]
	movsxd	rdi, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	shl	rdi, 5
	add	rax, rdi
	nop	
	mov	qword ptr [rax + rdx*8], rcx
	mov	eax, dword ptr [rbp - 0x178]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x178], eax
	mov	rsp, rsp
	jmp	.label_54
.label_89:
	lea	rax, [rbp - 0x140]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x174]
	nop	
	imul	rcx, rcx, 0xc
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	add	rdx, rcx
	nop	
	mov	dword ptr [rdx], 0
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0xc
	mov	rbp, rbp
	mov	rdx, rax
	add	rdx, rcx
	mov	dword ptr [rdx + 4], 0
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	imul	rcx, rcx, 0xc
	nop	
	add	rax, rcx
	mov	rsp, rsp
	mov	dword ptr [rax + 8], 0
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_53
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_55
.label_53:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.51
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	fopen_safer
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], rax
.label_55:
	nop	
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x174]
	mov	qword ptr [rbp + rcx*8 - 0x150], rax
	movsxd	rax, dword ptr [rbp - 0x174]
	cmp	qword ptr [rbp + rax*8 - 0x150], 0
	jne	.label_76
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + rax*8]
	mov	dword ptr [rbp - 0x1ec], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1ec]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_76:
	mov	esi, 2
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rdi, qword ptr [rbp + rax*8 - 0x150]
	call	fadvise
	lea	rax, [rbp - 0x120]
	lea	rdi, [rbp - 0x140]
	movsxd	rcx, dword ptr [rbp - 0x174]
	imul	rcx, rcx, 0xc
	add	rdi, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rdi]
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	shl	rdi, 5
	add	rax, rdi
	mov	rdi, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x174]
	nop	
	mov	rsi, qword ptr [rbp + rax*8 - 0x150]
	mov	rbp, rbp
	movsx	edx,  byte ptr [byte ptr [delim]]
	lea	rsi, [rsi]
	call	readlinebuffer_delim
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + rax*8 - 0x150]
	lea	rsi, [rsi]
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_82
	call	__errno_location
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + rax*8]
	mov	dword ptr [rbp - 0x1f0], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_82:
	nop	
	jmp	.label_50
.label_50:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_52
.label_83:
	lea	rdi, [rdi]
	jmp	.label_56
.label_56:
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe0], 0
	mov	byte ptr [rbp - 0x1f1], al
	lea	rsi, [rsi]
	jne	.label_57
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	setne	al
	mov	byte ptr [rbp - 0x1f1], al
.label_57:
	mov	al, byte ptr [rbp - 0x1f1]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_69
	nop	
	jmp	.label_77
.label_69:
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 2
	mov	edx, eax
	lea	rcx, [rbp - 0x17e]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rsp, rsp
	call	memset
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rbp, rbp
	jne	.label_81
	nop	
	mov	dword ptr [rbp - 0x17c], 1
	nop	
	jmp	.label_74
.label_81:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd8], 0
	nop	
	jne	.label_87
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x17c], 0xffffffff
	jmp	.label_71
.label_87:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_92
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	sub	rcx, 1
	mov	rsi, rax
	call	xmemcoll
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x17c], eax
	jmp	.label_62
.label_92:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_67
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_73
.label_67:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x200], rax
.label_73:
	mov	rax, qword ptr [rbp - 0x200]
	sub	rax, 1
	mov	qword ptr [rbp - 0x188], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	call	memcmp
	mov	dword ptr [rbp - 0x17c], eax
	nop	
	cmp	dword ptr [rbp - 0x17c], 0
	jne	.label_88
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_91
	mov	rbp, rbp
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x204], eax
	jmp	.label_58
.label_91:
	nop	
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rcx + 8]
	setne	dl
	nop	
	and	dl, 1
	mov	rbp, rbp
	movzx	esi, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x204], esi
.label_58:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x204]
	mov	dword ptr [rbp - 0x17c], eax
.label_88:
	lea	rdi, [rdi]
	jmp	.label_62
.label_62:
	lea	rdi, [rdi]
	jmp	.label_71
.label_71:
	mov	rbp, rbp
	jmp	.label_74
.label_74:
	cmp	dword ptr [rbp - 0x17c], 0
	jne	.label_86
	mov	edx, 3
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rax
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	writeline
	mov	rsp, rsp
	jmp	.label_63
.label_86:
	mov	byte ptr [byte ptr [seen_unpairable]],  1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x17c], 0
	nop	
	jg	.label_85
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	writeline
	mov	rbp, rbp
	jmp	.label_64
.label_85:
	mov	edx, 2
	mov	rax, qword ptr [rbp - 0x168]
	add	rax, 1
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	writeline
.label_64:
	lea	rsi, [rsi]
	jmp	.label_63
.label_63:
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0x17c]
	nop	
	jg	.label_66
	nop	
	mov	byte ptr [rbp - 0x17d], 1
.label_66:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x17c], 0
	mov	rbp, rbp
	jg	.label_68
	mov	byte ptr [rbp - 0x17e], 1
.label_68:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x174], 0
.label_84:
	cmp	dword ptr [rbp - 0x174], 2
	mov	rsp, rsp
	jge	.label_60
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	test	byte ptr [rbp + rax - 0x17e], 1
	je	.label_80
	mov	rbp, rbp
	lea	rax, [rbp - 0x120]
	mov	rsp, rsp
	lea	rcx, [rbp - 0x140]
	movsxd	rdx, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0xc
	mov	rsi, rcx
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	edi, dword ptr [rsi + 4]
	movsxd	rdx, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	mov	rbp, rbp
	mov	rsi, rcx
	add	rsi, rdx
	mov	dword ptr [rsi + 8], edi
	movsxd	rdx, dword ptr [rbp - 0x174]
	imul	rdx, rdx, 0xc
	nop	
	mov	rsi, rcx
	add	rsi, rdx
	mov	rsp, rsp
	mov	edi, dword ptr [rsi]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0xc
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	add	rsi, rdx
	nop	
	mov	dword ptr [rsi + 4], edi
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	mov	rsi, rcx
	mov	rsp, rsp
	add	rsi, rdx
	mov	edi, dword ptr [rsi]
	add	edi, 1
	and	edi, 3
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x174]
	imul	rdx, rdx, 0xc
	mov	rsp, rsp
	mov	rsi, rcx
	add	rsi, rdx
	nop	
	mov	dword ptr [rsi], edi
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x174]
	imul	rdx, rdx, 0xc
	add	rcx, rdx
	movsxd	rcx, dword ptr [rcx]
	movsxd	rdx, dword ptr [rbp - 0x174]
	shl	rdx, 5
	mov	rbp, rbp
	add	rax, rdx
	mov	rdi, qword ptr [rax + rcx*8]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp + rax*8 - 0x150]
	movsx	edx,  byte ptr [byte ptr [delim]]
	lea	rdi, [rdi]
	call	readlinebuffer_delim
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 0xe0], 0
	je	.label_70
	lea	rax, [rbp - 0x120]
	lea	rcx, [rbp - 0x140]
	movsxd	rdx, dword ptr [rbp - 0x174]
	imul	rdx, rdx, 0xc
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 4]
	movsxd	rdx, dword ptr [rbp - 0x174]
	shl	rdx, 5
	add	rax, rdx
	mov	rdi, qword ptr [rax + rcx*8]
	movsxd	rax, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + rax*8 - 0xe0]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x174]
	add	r8d, 1
	mov	edx, r8d
	call	check_order
	jmp	.label_78
.label_70:
	mov	rbp, rbp
	lea	rax, [rbp - 0x120]
	lea	rcx, [rbp - 0x140]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x174]
	nop	
	imul	rdx, rdx, 0xc
	add	rcx, rdx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 8]
	movsxd	rdx, dword ptr [rbp - 0x174]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rax, rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rcx*8]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_65
	nop	
	lea	rax, [rbp - 0x120]
	lea	rcx, [rbp - 0x140]
	movsxd	rdx, dword ptr [rbp - 0x174]
	imul	rdx, rdx, 0xc
	mov	rsi, rcx
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rsi + 8]
	movsxd	rsi, dword ptr [rbp - 0x174]
	shl	rsi, 5
	mov	rdi, rax
	add	rdi, rsi
	nop	
	mov	rdi, qword ptr [rdi + rdx*8]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	imul	rdx, rdx, 0xc
	mov	rsp, rsp
	add	rcx, rdx
	movsxd	rcx, dword ptr [rcx + 4]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	shl	rdx, 5
	mov	rsp, rsp
	add	rax, rdx
	mov	rsi, qword ptr [rax + rcx*8]
	mov	r8d, dword ptr [rbp - 0x174]
	add	r8d, 1
	lea	rsi, [rsi]
	mov	edx, r8d
	call	check_order
.label_65:
	jmp	.label_78
.label_78:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rdi, qword ptr [rbp + rax*8 - 0x150]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_61
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + rax*8]
	nop	
	mov	dword ptr [rbp - 0x208], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x208]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_61:
	movsxd	rax, dword ptr [rbp - 0x174]
	nop	
	mov	byte ptr [rbp + rax - 0x17e], 0
.label_80:
	jmp	.label_59
.label_59:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x174]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_84
.label_60:
	jmp	.label_56
.label_77:
	mov	dword ptr [rbp - 0x174], 0
.label_75:
	cmp	dword ptr [rbp - 0x174], 2
	lea	rsi, [rsi]
	jge	.label_90
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rdi, qword ptr [rbp + rax*8 - 0x150]
	mov	rsp, rsp
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_51
	lea	rdi, [rdi]
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	movsxd	rax, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + rax*8]
	mov	dword ptr [rbp - 0x20c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x20c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_51:
	mov	rsp, rsp
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x174], eax
	lea	rdi, [rdi]
	jmp	.label_75
.label_90:
	nop	
	test	byte ptr [byte ptr [total_option]],  1
	nop	
	je	.label_79
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x170]
	call	umaxtostr
	lea	rsi, [rbp - 0x1c0]
	mov	rdx,  qword ptr [word ptr [col_sep]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x218], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x220], rdx
	call	umaxtostr
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1e0]
	mov	r8,  qword ptr [word ptr [col_sep]]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x228], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], r8
	mov	rsp, rsp
	call	umaxtostr
	movabs	rdi, OFFSET FLAT:.str.45
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [col_sep]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], rdx
	mov	rbp, rbp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.53
	movzx	ecx,  byte ptr [byte ptr [delim]]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	nop	
	mov	rdx, qword ptr [rbp - 0x220]
	mov	r8, qword ptr [rbp - 0x228]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x244], ecx
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x238]
	nop	
	mov	r10, qword ptr [rbp - 0x240]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], rax
	mov	r11d, dword ptr [rbp - 0x244]
	mov	dword ptr [rsp + 0x10], r11d
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x248], eax
.label_79:
	mov	rsp, rsp
	add	rsp, 0x260
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl writeline
	.type writeline, @function
writeline:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	eax, edx
	sub	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	je	.label_100
	mov	rbp, rbp
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	je	.label_97
	lea	rdi, [rdi]
	jmp	.label_102
.label_102:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 3
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	je	.label_103
	jmp	.label_94
.label_100:
	test	byte ptr [byte ptr [only_file_1]],  1
	jne	.label_105
	jmp	.label_98
.label_105:
	mov	rbp, rbp
	jmp	.label_94
.label_97:
	test	byte ptr [byte ptr [only_file_2]],  1
	nop	
	jne	.label_101
	mov	rsp, rsp
	jmp	.label_98
.label_101:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [only_file_1]],  1
	je	.label_104
	mov	rbp, rbp
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [col_sep]]
	mov	rdx,  qword ptr [word ptr [col_sep_len]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	fwrite_unlocked
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_104:
	jmp	.label_94
.label_103:
	test	byte ptr [byte ptr [both]],  1
	lea	rsi, [rsi]
	jne	.label_93
	lea	rdi, [rdi]
	jmp	.label_98
.label_93:
	test	byte ptr [byte ptr [only_file_1]],  1
	mov	rsp, rsp
	je	.label_99
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [col_sep]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [col_sep_len]]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fwrite_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_99:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [only_file_2]],  1
	lea	rsi, [rsi]
	je	.label_96
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [col_sep]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [col_sep_len]]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x40], rax
.label_96:
	mov	rbp, rbp
	jmp	.label_94
.label_94:
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fwrite_unlocked
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_98:
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ea0

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edx
	cmp	dword ptr [dword ptr [check_input_order]],  2
	je	.label_106
	cmp	dword ptr [dword ptr [check_input_order]],  1
	mov	rsp, rsp
	je	.label_109
	mov	rsp, rsp
	test	byte ptr [byte ptr [seen_unpairable]],  1
	je	.label_106
.label_109:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 1
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	test	byte ptr [byte ptr [+ (rcx * 1) + issued_disorder_warning]],  1
	jne	.label_110
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_108
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, 1
	nop	
	mov	rsi, rax
	call	xmemcoll
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_111
.label_108:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, 1
	mov	rsi, rax
	call	memcmp2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_111:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jge	.label_107
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	ecx, 1
	cmp	dword ptr [dword ptr [check_input_order]],  1
	mov	rbp, rbp
	cmove	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rbp, rbp
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	byte ptr [byte ptr [+ (rdx * 1) + issued_disorder_warning]],  1
.label_107:
	nop	
	jmp	.label_110
.label_110:
	jmp	.label_106
.label_106:
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403040
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
	.align	32
	#Procedure 0x403070
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
	#Procedure 0x4030a0

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
	je	.label_112
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_113
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_112
.label_113:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_116
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
	jmp	.label_114
.label_116:
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
.label_114:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_112:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_115
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_115:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031d0

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
	#Procedure 0x403210

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
	je	.label_117
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
.label_117:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403270

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
	je	.label_119
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_118
	cmp	dword ptr [rbp - 0x24], 2
	lea	rsi, [rsi]
	jg	.label_118
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_122
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
	jmp	.label_120
.label_122:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_123
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_121
.label_123:
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
	jmp	.label_120
.label_121:
	jmp	.label_118
.label_118:
	jmp	.label_119
.label_119:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_120:
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
	#Procedure 0x4033f0

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
	je	.label_125
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_126
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_124
.label_126:
	mov	byte ptr [rbp - 5], 0
.label_124:
	jmp	.label_125
.label_125:
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
	#Procedure 0x403490

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_127
	jmp	.label_130
.label_130:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_130
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_129
.label_127:
	jmp	.label_128
.label_128:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	nop	
	jne	.label_128
	jmp	.label_129
.label_129:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035d0

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
	.section	.text
	.align	32
	#Procedure 0x403610
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
	.section	.text
	.align	32
	#Procedure 0x403650

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_136
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_131
.label_136:
	jmp	.label_133
.label_133:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x20], -1
	jne	.label_137
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	je	.label_134
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_132
.label_134:
	nop	
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_131
.label_132:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	cmp	ecx, edx
	jne	.label_139
	mov	rsp, rsp
	jmp	.label_138
.label_139:
	movsx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 0x20], eax
.label_137:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_135
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2realloc
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_135:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_133
.label_138:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_131:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403820
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
	.section	.text
	.align	32
	#Procedure 0x403850

	.globl memcmp2
	.type memcmp2, @function
memcmp2:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	ja	.label_143
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_144
.label_143:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
.label_144:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	memcmp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_142
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_140
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xffffffff
	jmp	.label_141
.label_140:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jbe	.label_145
	mov	dword ptr [rbp - 0x24], 1
.label_145:
	jmp	.label_141
.label_141:
	nop	
	jmp	.label_142
.label_142:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940

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
	jne	.label_146
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_146:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_148
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_149
.label_148:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_149:
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
	jl	.label_147
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
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
	jne	.label_147
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
	jne	.label_150
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_150:
	jmp	.label_147
.label_147:
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
	#Procedure 0x403ac0
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
	je	.label_151
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_152
.label_151:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_152
.label_152:
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
	#Procedure 0x403b70
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
	je	.label_153
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_154
.label_153:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_154
.label_154:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bd0
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
	je	.label_155
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_156
.label_155:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_156
.label_156:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c30

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
	je	.label_157
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_158
.label_157:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_158
.label_158:
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
	#Procedure 0x403d30
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
	jne	.label_159
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_159:
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
	#Procedure 0x403d90

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
	jne	.label_160
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_160:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_162
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_161
.label_162:
	call	abort
.label_161:
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
	#Procedure 0x403e30
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
	je	.label_163
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_164
.label_163:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_164
.label_164:
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
	#Procedure 0x403f30

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
.label_312:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_190
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_169]]
	jmp	rcx
.label_588:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_587:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_175
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_253
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_253:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_175
.label_175:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_192
.label_589:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_192
.label_590:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_199
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_199:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_214
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_235:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_223
	jmp	.label_224
.label_224:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_226
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_226:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_235
.label_223:
	mov	rbp, rbp
	jmp	.label_214
.label_214:
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
	jmp	.label_192
.label_585:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_584:
	mov	byte ptr [rbp - 0x7b], 1
.label_586:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_251
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_251:
	jmp	.label_325
.label_325:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_257
	jmp	.label_264
.label_264:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_354
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_354:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_257
.label_257:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_192
.label_583:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_192
.label_190:
	call	abort
.label_192:
	mov	qword ptr [rbp - 0x58], 0
.label_236:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_289
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
	jmp	.label_292
.label_289:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_292:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_307
	mov	rbp, rbp
	jmp	.label_315
.label_307:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_222
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_222
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_222
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_306
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_306
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_341
.label_306:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_341:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_222
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
	jne	.label_222
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_357
	jmp	.label_183
.label_357:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_222:
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
	ja	.label_359
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_170]]
	nop	
	jmp	rcx
.label_568:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_173
	mov	rsp, rsp
	jmp	.label_177
.label_177:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_181
	jmp	.label_183
.label_181:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_184
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_184
	nop	
	jmp	.label_242
.label_242:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_193
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_198
.label_198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_202
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_211
.label_211:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_219
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_184:
	lea	rsi, [rsi]
	jmp	.label_337
.label_337:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_228
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_228:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_233
.label_233:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_239
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_239
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_239
	nop	
	jmp	.label_254
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_271:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_239
.label_239:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_247
.label_173:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_285
	mov	rbp, rbp
	jmp	.label_252
.label_285:
	jmp	.label_247
.label_247:
	jmp	.label_218
.label_579:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_293
	mov	rbp, rbp
	jmp	.label_298
.label_298:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_301
	jmp	.label_308
.label_293:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_311
	jmp	.label_183
.label_311:
	jmp	.label_216
.label_301:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_213
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_213
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_213
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
	je	.label_266
	nop	
	jmp	.label_338
.label_338:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_266
	jmp	.label_343
.label_343:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_266
	jmp	.label_346
.label_346:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_266
	jmp	.label_350
.label_350:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_352
	jmp	.label_266
.label_266:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_263
	jmp	.label_183
.label_263:
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
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_363:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_174
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_180
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_180:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_187
.label_187:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_191
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_191:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_185
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_185:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_207
.label_352:
	jmp	.label_207
.label_207:
	jmp	.label_213
.label_213:
	jmp	.label_216
.label_308:
	jmp	.label_216
.label_216:
	jmp	.label_218
.label_569:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_220
.label_570:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_220
.label_574:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_220
.label_572:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_227
.label_575:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_227
.label_571:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_227
.label_573:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_220
.label_580:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_167
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_234
	nop	
	jmp	.label_183
.label_234:
	lea	rsi, [rsi]
	jmp	.label_205
.label_167:
	test	byte ptr [rbp - 0x79], 1
	je	.label_244
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_244
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_244
	jmp	.label_205
.label_244:
	jmp	.label_227
.label_227:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_249
	test	byte ptr [rbp - 0x7b], 1
	je	.label_249
	jmp	.label_183
.label_249:
	mov	rsp, rsp
	jmp	.label_220
.label_220:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_259
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_261
.label_259:
	jmp	.label_218
.label_581:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_269
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_272
	jmp	.label_276
.label_269:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_272
.label_276:
	nop	
	jmp	.label_218
.label_272:
	jmp	.label_281
.label_281:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_282
	lea	rsi, [rsi]
	jmp	.label_218
.label_282:
	nop	
	jmp	.label_288
.label_288:
	mov	byte ptr [rbp - 0x83], 1
.label_576:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_291
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_291
	jmp	.label_183
.label_291:
	lea	rsi, [rsi]
	jmp	.label_218
.label_578:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_297
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_305
	jmp	.label_183
.label_305:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_310
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_310
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_310:
	jmp	.label_319
.label_319:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_321
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_328
.label_328:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_334
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_340
.label_340:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_297:
	lea	rsi, [rsi]
	jmp	.label_218
.label_577:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_218
.label_359:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_353
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
	jmp	.label_333
.label_353:
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
	jne	.label_176
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_176:
	jmp	.label_188
.label_188:
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
	jne	.label_200
	jmp	.label_212
.label_200:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_209
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_212
.label_209:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_215
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_238:
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
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_232:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_362
	jmp	.label_237
.label_362:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_238
.label_237:
	jmp	.label_212
.label_215:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_245
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_245
	mov	qword ptr [rbp - 0xb8], 1
.label_296:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_248
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
	jb	.label_229
	jmp	.label_273
.label_273:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_229
	jmp	.label_278
.label_278:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_229
	jmp	.label_286
.label_286:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_287
	mov	rsp, rsp
	jmp	.label_229
.label_229:
	mov	rsp, rsp
	jmp	.label_183
.label_287:
	jmp	.label_294
.label_294:
	mov	rsp, rsp
	jmp	.label_331
.label_331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_296
.label_248:
	mov	rbp, rbp
	jmp	.label_245
.label_245:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_309
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_309:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_313
.label_313:
	lea	rsi, [rsi]
	jmp	.label_320
.label_320:
	jmp	.label_322
.label_322:
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
	jne	.label_188
.label_212:
	jmp	.label_333
.label_333:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_335
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_221
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_221
.label_335:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_314:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_256
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_256
	jmp	.label_349
.label_349:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_351
	jmp	.label_183
.label_351:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_356
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_356
	lea	rdi, [rdi]
	jmp	.label_360
.label_360:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_168
.label_168:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_172
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_172:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_182
.label_182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_356:
	jmp	.label_194
.label_194:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_196
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_196:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_189
.label_189:
	jmp	.label_204
.label_204:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_206
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
.label_206:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_317
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
.label_317:
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
	jmp	.label_231
.label_256:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_243
	lea	rdi, [rdi]
	jmp	.label_240
.label_240:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_246
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_246:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_243:
	nop	
	jmp	.label_231
.label_231:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_258
	jmp	.label_268
.label_258:
	lea	rsi, [rsi]
	jmp	.label_165
.label_165:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_270
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_270
	lea	rsi, [rsi]
	jmp	.label_275
.label_275:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_277
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_284
.label_284:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_295
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_270:
	nop	
	jmp	.label_300
.label_300:
	mov	rsp, rsp
	jmp	.label_302
.label_302:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_304
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_304:
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
	jmp	.label_314
.label_268:
	mov	rsp, rsp
	jmp	.label_205
.label_221:
	lea	rsi, [rsi]
	jmp	.label_218
.label_218:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_329
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_332
.label_329:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_336
.label_332:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_336
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
	jne	.label_345
.label_336:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_345
	mov	rsp, rsp
	jmp	.label_205
.label_345:
	nop	
	jmp	.label_261
.label_261:
	jmp	.label_203
.label_203:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_348
	jmp	.label_183
.label_348:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_355
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_355
	lea	rdi, [rdi]
	jmp	.label_358
.label_358:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_361
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_361:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_171:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_179
.label_179:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_186
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_355:
	jmp	.label_195
.label_195:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_347
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_347:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_201
.label_201:
	nop	
	jmp	.label_205
.label_205:
	jmp	.label_208
.label_208:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_210
	test	byte ptr [rbp - 0x82], 1
	jne	.label_210
	lea	rdi, [rdi]
	jmp	.label_260
.label_260:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_217
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_217:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_365
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_210:
	jmp	.label_290
.label_290:
	nop	
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_241
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_241:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_265
	mov	byte ptr [rbp - 0x7e], 0
.label_265:
	mov	rbp, rbp
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_236
.label_315:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_262
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_262
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_262
	nop	
	jmp	.label_183
.label_262:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_274
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_274
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_274
	test	byte ptr [rbp - 0x7e], 1
	je	.label_280
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
	jmp	.label_299
.label_280:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_303
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_303
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_312
.label_303:
	jmp	.label_316
.label_316:
	mov	rbp, rbp
	jmp	.label_274
.label_274:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_318
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_318
	mov	rbp, rbp
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_326
	lea	rdi, [rdi]
	jmp	.label_327
.label_327:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_324
.label_326:
	jmp	.label_318
.label_318:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_344
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_344:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_299
.label_183:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_250
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_250
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_250:
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
.label_299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405850
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
	#Procedure 0x4058c0

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
	je	.label_366
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_367
.label_366:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_367
.label_367:
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
	je	.label_368
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_368:
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
	#Procedure 0x405a90
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
.label_373:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_372
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
	jmp	.label_373
.label_372:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_371
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_369]],  rax
.label_371:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_370
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_370:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ba0

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
	#Procedure 0x405bf0

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
	jge	.label_378
	call	abort
.label_378:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_381
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
	jge	.label_374
	call	xalloc_die
.label_374:
	test	byte ptr [rbp - 0x31], 1
	je	.label_375
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_379
.label_375:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_379:
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
	je	.label_377
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_369]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_377:
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
.label_381:
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
	ja	.label_376
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
	je	.label_380
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_380:
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
.label_376:
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
	#Procedure 0x405f20

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
	#Procedure 0x405f60
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
	#Procedure 0x405f90
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
	#Procedure 0x405fd0

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
	#Procedure 0x406030

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
	jne	.label_382
	call	abort
.label_382:
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
	#Procedure 0x4060d0

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
	#Procedure 0x406140
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
	#Procedure 0x406180
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
	#Procedure 0x4061c0

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
	#Procedure 0x406270

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
	#Procedure 0x4062b0

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
	#Procedure 0x4062e0
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
	#Procedure 0x406320

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
	#Procedure 0x406410

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
	#Procedure 0x406460

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
	#Procedure 0x406500
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
	#Procedure 0x406550
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
	#Procedure 0x4065b0

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
	#Procedure 0x4065f0
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
	#Procedure 0x406630

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
	#Procedure 0x406670

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
	#Procedure 0x4066b0

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
	je	.label_386
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_383
.label_386:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_384
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_383
.label_384:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_385
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_383
.label_385:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_383:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067f0

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
	#Procedure 0x406830

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
	je	.label_389
	movabs	rsi, OFFSET FLAT:.str_5
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
	jmp	.label_388
.label_389:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_388:
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
	ja	.label_391
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_390]]
	jmp	rcx
.label_596:
	jmp	.label_387
.label_597:
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
	jmp	.label_387
.label_598:
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
	jmp	.label_387
.label_599:
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
	jmp	.label_387
.label_600:
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
	jmp	.label_387
.label_601:
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
	jmp	.label_387
.label_602:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_387
.label_603:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_387
.label_604:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_387
.label_605:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_387
.label_391:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_387:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fa0
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
.label_392:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_393
	mov	rbp, rbp
	jmp	.label_394
.label_394:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_392
.label_393:
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
	#Procedure 0x407050

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
.label_397:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_396
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_399
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
	jmp	.label_400
.label_399:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_400:
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
.label_396:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_395
	mov	rsp, rsp
	jmp	.label_398
.label_395:
	jmp	.label_401
.label_401:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_397
.label_398:
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
	#Procedure 0x4071b0

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
	je	.label_402
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
.label_402:
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
	#Procedure 0x407360
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
	movabs	rsi, OFFSET FLAT:.str.15_0
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
	#Procedure 0x407410
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
	jae	.label_403
	mov	rbp, rbp
	call	xalloc_die
.label_403:
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
	#Procedure 0x407470

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
	jne	.label_404
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_404
	lea	rdi, [rdi]
	call	xalloc_die
.label_404:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074d0
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
	jae	.label_405
	mov	rsp, rsp
	call	xalloc_die
.label_405:
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
	#Procedure 0x407550

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
	jne	.label_406
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_406
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_408
.label_406:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_407
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_407
	lea	rsi, [rsi]
	call	xalloc_die
.label_407:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_408:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407600

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
	jne	.label_409
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_411
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
.label_411:
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
	jae	.label_413
	call	xalloc_die
.label_413:
	lea	rsi, [rsi]
	jmp	.label_412
.label_409:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_410
	call	xalloc_die
.label_410:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_412:
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
	#Procedure 0x407730

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
	#Procedure 0x407760

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
	#Procedure 0x4077a0
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
	#Procedure 0x4077f0
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
	jb	.label_414
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_415
.label_414:
	lea	rsi, [rsi]
	call	xalloc_die
.label_415:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407860

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
	#Procedure 0x4078b0
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
	#Procedure 0x407910

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
	.align	32
	#Procedure 0x407970

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	memcoll
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_416
	mov	edi, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	collate_error
.label_416:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a10

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_6
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	esi, dword ptr [rbp - 4]
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
	movabs	rdi, OFFSET FLAT:.str.1_5
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
	movabs	rdi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [exit_failure]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	quotearg_n_style_mem
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b20
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
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	memcoll0
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], r8d
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_417
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	mov	r8, qword ptr [rbp - 0x30]
	call	collate_error
.label_417:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407bd0

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
	jge	.label_422
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_420
.label_422:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_419
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
	je	.label_418
.label_419:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_418
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_418:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_421
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
.label_421:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_420:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cf0

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
	je	.label_429
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
.label_429:
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
	je	.label_426
	nop	
	jmp	.label_439
.label_439:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_431
	jmp	.label_444
.label_426:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_446
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
	jmp	.label_430
.label_446:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_430:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_448
.label_431:
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
	ja	.label_450
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
	jmp	.label_428
.label_450:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_428:
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
	jmp	.label_448
.label_444:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_425
	nop	
	jmp	.label_432
.label_432:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_427
	jmp	.label_442
.label_442:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_425
	nop	
	jmp	.label_449
.label_449:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_427
	nop	
	jmp	.label_423
.label_423:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_425
	lea	rsi, [rsi]
	jmp	.label_435
.label_435:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_425
	lea	rsi, [rsi]
	jmp	.label_443
.label_443:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_427
	mov	rsp, rsp
	jmp	.label_451
.label_451:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_425
	jmp	.label_424
.label_424:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_427
	lea	rsi, [rsi]
	jmp	.label_434
.label_434:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_425
	jmp	.label_445
.label_445:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_427
	mov	rsp, rsp
	jmp	.label_437
.label_437:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_425
	lea	rsi, [rsi]
	jmp	.label_452
.label_452:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_425
	nop	
	jmp	.label_440
.label_440:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_441
	lea	rdi, [rdi]
	jmp	.label_427
.label_427:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_433
.label_425:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_453
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
	jmp	.label_436
.label_453:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_436:
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
	jmp	.label_433
.label_441:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_438
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
	jmp	.label_447
.label_438:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_447:
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
.label_433:
	jmp	.label_448
.label_448:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408370

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
	#Procedure 0x4083c0

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
	jg	.label_454
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
	jle	.label_461
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_456
.label_461:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_458
.label_456:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_462
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_462:
	mov	rbp, rbp
	jmp	.label_458
.label_458:
	jmp	.label_459
.label_454:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_459:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_455
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_455
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_460
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
	jne	.label_457
.label_460:
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
.label_457:
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408540

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
	je	.label_463
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_464
.label_463:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_465
.label_464:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_465:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085b0

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
	je	.label_466
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
.label_466:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408610

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
	jne	.label_467
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_467
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_467
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
	jne	.label_468
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_469
.label_468:
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
	jmp	.label_469
.label_467:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_469:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408720

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
	jne	.label_470
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_470:
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
	ja	.label_471
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_471
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_471
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
	jmp	.label_472
.label_471:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_472:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408810

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
	jne	.label_473
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_477
.label_473:
	mov	rbp, rbp
	jmp	.label_474
.label_474:
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
	jne	.label_476
	jmp	.label_475
.label_476:
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
	je	.label_474
.label_475:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_477:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408900

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
	jne	.label_480
	test	byte ptr [rbp - 0x13], 1
	je	.label_479
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_480
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_479
.label_480:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_478
	call	__errno_location
	mov	dword ptr [rax], 0
.label_478:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_481
.label_479:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_481:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089e0

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
	jne	.label_483
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_483:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_482
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 0x20]
	jne	.label_484
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcmp
	nop	
	cmp	eax, 0
	jne	.label_484
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	jmp	.label_485
.label_484:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x25], dl
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x26], dl
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 1
	mov	rsi, rax
	call	strcoll_loop
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	r8b, byte ptr [rbp - 0x25]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], r8b
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x26]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx], r8b
.label_485:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b80

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
.label_492:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	strcoll
	lea	rsi, [rsi]
	mov	cl, 1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_486
	mov	rbp, rbp
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_486:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_490
	jmp	.label_487
.label_490:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_491
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_488
.label_491:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_489
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_488
.label_489:
	mov	rsp, rsp
	jmp	.label_492
.label_487:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_488:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cf0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	jne	.label_493
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	jne	.label_493
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_494
.label_493:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	strcoll_loop
	mov	dword ptr [rbp - 4], eax
.label_494:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d90

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
	ja	.label_495
	jmp	.label_497
.label_497:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_496
.label_495:
	lea	rsi, [rsi]
	jmp	.label_496
.label_496:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408df0
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
	jb	.label_498
	jmp	.label_500
.label_500:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_498
	jmp	.label_499
.label_499:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_501
	jmp	.label_498
.label_498:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_502
.label_501:
	mov	byte ptr [rbp - 1], 0
.label_502:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e60
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
	jb	.label_503
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_504
	jmp	.label_503
.label_503:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_505
.label_504:
	mov	byte ptr [rbp - 1], 0
.label_505:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408eb0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_507
	jmp	.label_508
.label_508:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_509
.label_507:
	mov	byte ptr [rbp - 1], 0
.label_509:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ee0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_510
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_510:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f10
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
	jb	.label_511
	jmp	.label_513
.label_513:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_514
	jmp	.label_511
.label_511:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_512
.label_514:
	mov	byte ptr [rbp - 1], 0
.label_512:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f60
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_515
	jmp	.label_517
.label_517:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_516
.label_515:
	mov	byte ptr [rbp - 1], 0
.label_516:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fa0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_518
	jmp	.label_520
.label_520:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_519
.label_518:
	mov	byte ptr [rbp - 1], 0
.label_519:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fe0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_521
	jmp	.label_523
.label_523:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_522
.label_521:
	mov	byte ptr [rbp - 1], 0
.label_522:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409020
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_524
	jmp	.label_526
.label_526:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_525
.label_524:
	mov	byte ptr [rbp - 1], 0
.label_525:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409060
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
	jb	.label_527
	jmp	.label_530
.label_530:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_527
	jmp	.label_531
.label_531:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_527
	jmp	.label_529
.label_529:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_532
	jmp	.label_527
.label_527:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_532:
	mov	byte ptr [rbp - 1], 0
.label_528:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090e0
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
	jb	.label_533
	jmp	.label_535
.label_535:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_536
	jmp	.label_533
.label_533:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_534
.label_536:
	mov	byte ptr [rbp - 1], 0
.label_534:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409130
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_537
	jmp	.label_539
.label_539:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_538
.label_537:
	mov	byte ptr [rbp - 1], 0
.label_538:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409170
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
	jb	.label_540
	jmp	.label_542
.label_542:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_540
	jmp	.label_541
.label_541:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_543
	jmp	.label_540
.label_540:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_544
.label_543:
	mov	byte ptr [rbp - 1], 0
.label_544:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091e0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_545
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_546
.label_545:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_546:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409220
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_548
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_549
.label_548:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_549:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
