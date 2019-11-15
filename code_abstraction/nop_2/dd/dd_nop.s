	.section	.text
	.align	32
	#Procedure 0x401d40

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	nop	
	je	.label_9
	nop	
	jmp	.label_10
.label_10:
	nop	
	movabs	rdi, OFFSET FLAT:.str
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_8
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	nop	
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x10], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x20], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x30], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021a0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x40], rax
.label_15:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], cl
	lea	rdi, [rdi]
	je	.label_11
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], cl
.label_11:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x45]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_12
	jmp	.label_14
.label_12:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 8], 0
	je	.label_16
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_16:
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	call	setlocale
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	eax, 3
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_13
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x1b0
	mov	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0xcc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rsi
	call	install_signal_handlers
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdi, qword ptr [rsi]
	mov	rbp, rbp
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	nop	
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.28
	mov	qword ptr [rbp - 0x58], rax
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:maybe_close_stdout
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	call	atexit
	mov	dword ptr [rbp - 0x18c], eax
	call	getpagesize
	movabs	rdx, OFFSET FLAT:.str.25
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.27
	mov	r9d, 1
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:usage
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.29
	movabs	r8, OFFSET FLAT:.str.30
	lea	rdi, [rdi]
	movabs	r10, OFFSET FLAT:.str.31
	nop	
	xor	r11d, r11d
	mov	ebx, r11d
	lea	rsi, [rsi]
	movsxd	r14, eax
	mov	qword ptr [word ptr [page_size]],  r14
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	r14, qword ptr [rbp - 0x170]
	mov	r15,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rsi, r14
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r8
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	qword ptr [rsp], r14
	mov	r15, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r15
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x60]
	mov	qword ptr [rsp + 0x10], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], 0
	mov	al, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rbx
	mov	rbp, rbp
	call	parse_gnu_standard_options_only
	mov	byte ptr [byte ptr [close_stdout_required]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], 0
.label_31:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x100
	jge	.label_40
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x90]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 0x90]
	add	eax, 1
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_31
.label_40:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xcc]
	mov	rsi, qword ptr [rbp - 0x170]
	nop	
	call	scanargs
	call	apply_translations
	nop	
	cmp	qword ptr [word ptr [input_file]],  0
	lea	rdi, [rdi]
	jne	.label_38
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	qword ptr [word ptr [input_file]],  rax
	nop	
	mov	esi,  dword ptr [dword ptr [input_flags]]
	mov	rdx,  qword ptr [word ptr [input_file]]
	call	set_fd_flags
	jmp	.label_19
.label_38:
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	nop	
	or	ecx, 0
	mov	rbp, rbp
	mov	edi, eax
	mov	edx, ecx
	mov	ecx, eax
	lea	rsi, [rsi]
	call	ifd_reopen
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_25
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [input_file]]
	nop	
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_25:
	mov	rsp, rsp
	jmp	.label_19
.label_19:
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rsp, rsp
	call	lseek
	mov	rbp, rbp
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	cmp	rsi, qword ptr [rbp - 0xd8]
	setle	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [input_seekable]],  cl
	cmp	rsi, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	jle	.label_39
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_18
.label_39:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xa0], rax
.label_18:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [word ptr [input_offset]],  rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [dword ptr [input_seek_errno]],  ecx
	nop	
	cmp	qword ptr [word ptr [output_file]],  0
	jne	.label_41
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_file]],  rax
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [output_flags]]
	mov	rdx,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	call	set_fd_flags
	jmp	.label_32
.label_41:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, 0x80
	mov	esi, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 0x1b6
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [output_flags]]
	mov	r8d,  dword ptr [dword ptr [conversions_mask]]
	and	r8d, 0x1000
	cmp	r8d, 0
	mov	rbp, rbp
	cmovne	esi, ecx
	mov	rsp, rsp
	or	edi, esi
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	mov	rsp, rsp
	and	esi, 0x2000
	cmp	esi, 0
	mov	rbp, rbp
	cmovne	ecx, edx
	or	edi, ecx
	cmp	qword ptr [word ptr [seek_records]],  0
	mov	dword ptr [rbp - 0x178], edi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], al
	lea	rsi, [rsi]
	jne	.label_33
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x81], cl
.label_33:
	mov	al, byte ptr [rbp - 0x81]
	mov	ecx, 0x200
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	cmovne	ecx, edx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x178]
	mov	rsp, rsp
	or	edx, ecx
	mov	dword ptr [rbp - 0x174], edx
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [seek_records]],  0
	lea	rdi, [rdi]
	je	.label_35
	mov	rbp, rbp
	mov	edi, 1
	nop	
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	eax, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	or	eax, 2
	mov	ecx, dword ptr [rbp - 0x40]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_34
.label_35:
	mov	edi, 1
	nop	
	mov	rsi,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	or	eax, 1
	mov	ecx, dword ptr [rbp - 0x40]
	nop	
	mov	edx, eax
	call	ifd_reopen
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_34
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x88], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_34:
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_26
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rsp, rsp
	and	eax, 0x200
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_26
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [seek_records]]
	imul	rcx,  qword ptr [word ptr [output_blocksize]]
	add	rcx,  qword ptr [word ptr [seek_bytes]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	rbp, rbp
	xor	edx, edx
	div	qword ptr [word ptr [output_blocksize]]
	nop	
	cmp	rax,  qword ptr [word ptr [seek_records]]
	jae	.label_30
	nop	
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [seek_records]]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_30:
	mov	rsp, rsp
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x180]
	call	iftruncate
	cmp	eax, 0
	je	.label_17
	mov	rsp, rsp
	call	__errno_location
	mov	edi, 1
	lea	rsi, [rbp - 0x168]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_27
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_27:
	mov	eax, dword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_36
	mov	eax, dword ptr [rbp - 0x150]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_36
	mov	eax, dword ptr [rbp - 0x150]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x150]
	cmp	eax, 0
	je	.label_42
.label_36:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.37
	mov	esi, dword ptr [rbp - 0x24]
	nop	
	mov	dword ptr [rbp - 0x3c], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_42:
	lea	rdi, [rdi]
	jmp	.label_17
.label_17:
	nop	
	jmp	.label_26
.label_26:
	lea	rdi, [rdi]
	jmp	.label_32
.label_32:
	call	gethrxtime
	mov	qword ptr [word ptr [start_time]],  rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [start_time]]
	add	rax, 0x3b9aca00
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [next_time]],  rax
	call	dd_copy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_37
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_37
	nop	
	test	byte ptr [byte ptr [i_nocache]],  1
	lea	rdi, [rdi]
	je	.label_20
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_20
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rbp, rbp
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	nl_error
	mov	dword ptr [rbp - 0xac], 1
.label_20:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_24
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	call	invalidate_cache
	test	al, 1
	jne	.label_24
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.38
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x8c], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [output_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x198]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0xac], 1
.label_24:
	mov	rsp, rsp
	jmp	.label_21
.label_37:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [i_nocache]],  1
	jne	.label_22
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [i_nocache_eof]],  1
	je	.label_23
.label_22:
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, eax
	call	invalidate_cache
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
.label_23:
	mov	rsp, rsp
	test	byte ptr [byte ptr [o_nocache]],  1
	lea	rsi, [rsi]
	jne	.label_28
	mov	rsp, rsp
	test	byte ptr [byte ptr [o_nocache_eof]],  1
	lea	rsi, [rsi]
	je	.label_29
.label_28:
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	call	invalidate_cache
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa1], al
.label_29:
	jmp	.label_21
.label_21:
	call	finish_up
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	add	rsp, 0x1b0
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xd0
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rbp, rbp
	call	getenv
	movabs	rdi, OFFSET FLAT:caught_signals
	cmp	rax, 0
	setne	cl
	nop	
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	lea	rsi, [rsi]
	call	sigemptyset
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], eax
	mov	rsp, rsp
	je	.label_44
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rsp, rsp
	call	sigaddset
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_44:
	mov	rsp, rsp
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	nop	
	lea	rdx, [rbp - 0xb8]
	mov	rbp, rbp
	call	sigaction
	mov	edi, 1
	mov	edx, edi
	cmp	qword ptr [rbp - 0xb8], rdx
	mov	dword ptr [rbp - 0xc4], eax
	lea	rsi, [rsi]
	je	.label_46
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:caught_signals
	lea	rsi, [rsi]
	mov	esi, 2
	lea	rsi, [rsi]
	call	sigaddset
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_46:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edx, 0x80
	lea	rdi, [rbp - 0xb8]
	add	rdi, 8
	mov	dword ptr [rbp - 0x20], esi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	sigismember
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_43
	nop	
	mov	edi, 0xa
	lea	rsi, [rbp - 0xb8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:siginfo_handler
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], 0
	call	sigaction
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
.label_43:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	mov	esi, 2
	nop	
	call	sigismember
	cmp	eax, 0
	je	.label_45
	mov	edi, 2
	lea	rsi, [rbp - 0xb8]
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:interrupt_handler
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], 0xc0000000
	lea	rdi, [rdi]
	call	sigaction
	nop	
	mov	dword ptr [rbp - 8], eax
.label_45:
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fc0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [close_stdout_required]],  1
	je	.label_47
	call	close_stdout
	nop	
	jmp	.label_49
.label_47:
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	call	close_stream
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_48
	lea	rdi, [rdi]
	mov	edi, 1
	call	_exit
.label_48:
	jmp	.label_49
.label_49:
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], edi
	mov	qword ptr [rbp - 0xc0], rsi
	mov	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], -1
	mov	qword ptr [rbp - 0x20], 0
	nop	
	mov	qword ptr [rbp - 0x88], 0
	mov	edi,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], edi
.label_62:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb4]
	cmp	eax, dword ptr [rbp - 0x74]
	jge	.label_125
	mov	esi, 0x3d
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xb4]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	strchr
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_89
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
	mov	edi, 1
	call	usage
.label_89:
	movabs	rsi, OFFSET FLAT:.str.57
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	operand_is
	nop	
	test	al, 1
	jne	.label_111
	mov	rbp, rbp
	jmp	.label_113
.label_111:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [word ptr [input_file]],  rax
	jmp	.label_60
.label_113:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.58
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	test	al, 1
	mov	rsp, rsp
	jne	.label_121
	jmp	.label_112
.label_121:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_file]],  rax
	jmp	.label_59
.label_112:
	movabs	rsi, OFFSET FLAT:.str.59
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_127
	nop	
	jmp	.label_129
.label_127:
	movabs	rsi, OFFSET FLAT:conversions
	xor	edx, edx
	nop	
	movabs	rcx, OFFSET FLAT:.str.60
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	parse_symbols
	nop	
	or	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_57
.label_129:
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	test	al, 1
	mov	rbp, rbp
	jne	.label_53
	mov	rsp, rsp
	jmp	.label_84
.label_53:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:flags
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [input_flags]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_flags]],  eax
	jmp	.label_66
.label_84:
	movabs	rsi, OFFSET FLAT:.str.63
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	operand_is
	test	al, 1
	jne	.label_75
	jmp	.label_78
.label_75:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:flags
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	movabs	rcx, OFFSET FLAT:.str.64
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [output_flags]]
	mov	dword ptr [dword ptr [output_flags]],  eax
	lea	rdi, [rdi]
	jmp	.label_52
.label_78:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	operand_is
	test	al, 1
	jne	.label_98
	lea	rdi, [rdi]
	jmp	.label_99
.label_98:
	movabs	rsi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.66
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	parse_symbols
	mov	dword ptr [dword ptr [status_level]],  eax
	jmp	.label_50
.label_99:
	lea	rsi, [rbp - 0xc4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], 0
	mov	rdi, qword ptr [rbp - 0x60]
	call	parse_integer
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], -1
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	test	al, 1
	jne	.label_94
	jmp	.label_122
.label_94:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	lea	rdi, [rdi]
	shl	rdx, 1
	lea	rsi, [rsi]
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_123
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	jmp	.label_133
.label_123:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_133
.label_133:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_54
.label_122:
	movabs	rsi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	operand_is
	test	al, 1
	mov	rsp, rsp
	jne	.label_67
	jmp	.label_74
.label_67:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, -1
	mov	qword ptr [rbp - 0x28], 1
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [page_size]]
	mov	rsp, rsp
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	nop	
	jae	.label_70
	mov	rax, -1
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [page_size]]
	lea	rsi, [rsi]
	sub	rcx, 1
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_83
.label_70:
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_83
.label_83:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	jmp	.label_97
.label_74:
	movabs	rsi, OFFSET FLAT:.str.69
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_103
	mov	rbp, rbp
	jmp	.label_104
.label_103:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [page_size]]
	lea	rsi, [rsi]
	shl	rdx, 1
	mov	rsp, rsp
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	jae	.label_105
	nop	
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	lea	rdi, [rdi]
	shl	rcx, 1
	add	rcx, 4
	mov	rsp, rsp
	sub	rcx, 1
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_77
.label_105:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_77
.label_77:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_110
.label_104:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.70
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	test	al, 1
	nop	
	jne	.label_135
	jmp	.label_136
.label_135:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 1
	nop	
	mov	qword ptr [rbp - 0x70], -1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [word ptr [conversion_blocksize]],  rax
	lea	rdi, [rdi]
	jmp	.label_108
.label_136:
	movabs	rsi, OFFSET FLAT:.str.71
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	operand_is
	test	al, 1
	jne	.label_119
	lea	rdi, [rdi]
	jmp	.label_63
.label_119:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_65
.label_63:
	movabs	rsi, OFFSET FLAT:.str.72
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	operand_is
	test	al, 1
	nop	
	jne	.label_132
	jmp	.label_76
.label_132:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_79
.label_76:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.73
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	operand_is
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_115
	jmp	.label_80
.label_115:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_91
.label_80:
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_91:
	jmp	.label_79
.label_79:
	jmp	.label_65
.label_65:
	nop	
	jmp	.label_108
.label_108:
	lea	rsi, [rsi]
	jmp	.label_110
.label_110:
	jmp	.label_97
.label_97:
	jmp	.label_54
.label_54:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_128
	nop	
	mov	dword ptr [rbp - 0xc4], 4
	jmp	.label_116
.label_128:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_118
	mov	dword ptr [rbp - 0xc4], 1
.label_118:
	jmp	.label_116
.label_116:
	nop	
	cmp	dword ptr [rbp - 0xc4], 0
	nop	
	je	.label_124
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.75
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x4b
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc4], 1
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_124:
	lea	rdi, [rdi]
	jmp	.label_50
.label_50:
	jmp	.label_52
.label_52:
	mov	rbp, rbp
	jmp	.label_66
.label_66:
	jmp	.label_57
.label_57:
	jmp	.label_59
.label_59:
	lea	rdi, [rdi]
	jmp	.label_60
.label_60:
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rsp, rsp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	jmp	.label_62
.label_125:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	je	.label_64
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	mov	qword ptr [word ptr [input_blocksize]],  rax
	lea	rdi, [rdi]
	jmp	.label_68
.label_64:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x800
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_68:
	nop	
	cmp	qword ptr [word ptr [input_blocksize]],  0
	lea	rdi, [rdi]
	jne	.label_82
	mov	qword ptr [word ptr [input_blocksize]],  0x200
.label_82:
	cmp	qword ptr [word ptr [output_blocksize]],  0
	jne	.label_87
	mov	qword ptr [word ptr [output_blocksize]],  0x200
.label_87:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [conversion_blocksize]],  0
	mov	rsp, rsp
	jne	.label_92
	nop	
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xffffffe7
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_92:
	nop	
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x101000
	cmp	eax, 0
	je	.label_101
	mov	eax,  dword ptr [dword ptr [input_flags]]
	lea	rdi, [rdi]
	or	eax, 0x101000
	mov	dword ptr [dword ptr [input_flags]],  eax
.label_101:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [output_flags]]
	mov	rsp, rsp
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_106
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.76
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
	mov	edi, 1
	call	usage
.label_106:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_126
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	call	quote
	nop	
	xor	ecx, ecx
	nop	
	movabs	rdx, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, rax
	nop	
	mov	al, 0
	call	nl_error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_126:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0xc
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_55
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.79
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.78
	nop	
	mov	edx,  dword ptr [dword ptr [output_flags]]
	and	edx, 4
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	rdi, rcx
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	call	quote
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.1_0
	mov	edi, edx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_55:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 8
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_88
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_88
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	div	qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [skip_records]],  rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [word ptr [input_blocksize]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [skip_bytes]],  rdx
	jmp	.label_96
.label_88:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_107
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [word ptr [skip_records]],  rax
.label_107:
	jmp	.label_96
.label_96:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	mov	rbp, rbp
	and	eax, 4
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_114
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], -1
	je	.label_114
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [max_records]],  rax
	mov	rax, qword ptr [rbp - 0x98]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [max_bytes]],  rdx
	mov	rbp, rbp
	jmp	.label_95
.label_114:
	cmp	qword ptr [rbp - 0x98], -1
	je	.label_131
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [max_records]],  rax
.label_131:
	mov	rbp, rbp
	jmp	.label_95
.label_95:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_51
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	mov	rsp, rsp
	je	.label_51
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [word ptr [seek_records]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [word ptr [output_blocksize]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [seek_bytes]],  rdx
	jmp	.label_56
.label_51:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	je	.label_71
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [word ptr [seek_records]],  rax
.label_71:
	mov	rsp, rsp
	jmp	.label_56
.label_56:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_81
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x31], cl
	nop	
	jne	.label_81
	mov	al, 1
	cmp	qword ptr [word ptr [skip_records]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jne	.label_93
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	nop	
	cmp	rcx,  qword ptr [word ptr [max_records]]
	jae	.label_100
	mov	rbp, rbp
	mov	al, 1
	cmp	qword ptr [word ptr [max_records]],  -1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	jb	.label_93
.label_100:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0x4000
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	mov	byte ptr [rbp - 1], cl
.label_93:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
.label_81:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:iread
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:iread_fullblock
	and	al, 1
	mov	byte ptr [byte ptr [warn_partial_read]],  al
	mov	esi,  dword ptr [dword ptr [input_flags]]
	lea	rdi, [rdi]
	and	esi, 1
	mov	rsp, rsp
	cmp	esi, 0
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [iread_fnc]],  rcx
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [input_flags]]
	mov	rsp, rsp
	and	esi, 0xfffffffe
	mov	dword ptr [dword ptr [input_flags]],  esi
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	esi, 7
	mov	edi, esi
	mov	rsp, rsp
	call	multiple_bits_set
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_130
	mov	rbp, rbp
	jmp	.label_117
.label_130:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	nop	
	call	nl_error
.label_117:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x18
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	mov	rsp, rsp
	jne	.label_85
	nop	
	jmp	.label_58
.label_85:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	nl_error
.label_58:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x60
	lea	rdi, [rdi]
	mov	edi, eax
	call	multiple_bits_set
	nop	
	test	al, 1
	jne	.label_72
	jmp	.label_73
.label_72:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_73:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x3000
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	mov	rsp, rsp
	jne	.label_86
	jmp	.label_90
.label_86:
	nop	
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	nl_error
.label_90:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4002
	mov	edi, eax
	lea	rsi, [rsi]
	call	multiple_bits_set
	mov	rbp, rbp
	test	al, 1
	jne	.label_102
	mov	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	mov	rsp, rsp
	test	al, 1
	jne	.label_102
	nop	
	jmp	.label_109
.label_102:
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_109:
	nop	
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_69
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	byte ptr [byte ptr [i_nocache]],  1
	mov	rbp, rbp
	cmp	qword ptr [word ptr [max_records]],  0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb5], cl
	lea	rdi, [rdi]
	jne	.label_120
	mov	rbp, rbp
	cmp	qword ptr [word ptr [max_bytes]],  0
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], al
.label_120:
	nop	
	mov	al, byte ptr [rbp - 0xb5]
	and	al, 1
	nop	
	mov	byte ptr [byte ptr [i_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [input_flags]],  ecx
.label_69:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_134
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [byte ptr [o_nocache]],  1
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [max_records]],  0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], cl
	mov	rsp, rsp
	jne	.label_137
	mov	rsp, rsp
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 2], al
.label_137:
	mov	al, byte ptr [rbp - 2]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [output_flags]]
	and	ecx, 0xfffffffd
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [output_flags]],  ecx
.label_134:
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404070

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 1
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_151
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_151:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x40
	cmp	eax, 0
	nop	
	je	.label_148
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_150:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0x100
	lea	rsi, [rsi]
	jge	.label_138
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	toupper
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_150
.label_138:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [translation_needed]],  1
	mov	rsp, rsp
	jmp	.label_141
.label_148:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	and	eax, 0x20
	nop	
	cmp	eax, 0
	je	.label_140
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_149:
	nop	
	cmp	dword ptr [rbp - 4], 0x100
	lea	rdi, [rdi]
	jge	.label_139
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	nop	
	call	tolower
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_149
.label_139:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [translation_needed]],  1
.label_140:
	jmp	.label_141
.label_141:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	and	eax, 2
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_144
	movabs	rdi, OFFSET FLAT:ascii_to_ebcdic
	mov	rsp, rsp
	call	translate_charset
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [label_145]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [label_146]]
	mov	byte ptr [byte ptr [space_character]],  al
	jmp	.label_147
.label_144:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rdi, [rdi]
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_152
	movabs	rdi, OFFSET FLAT:ascii_to_ibm
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_142]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [newline_character]],  al
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [label_143]]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [space_character]],  al
.label_152:
	jmp	.label_147
.label_147:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 0xbc], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	esi, 0xfffdfeff
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	je	.label_157
	nop	
	mov	esi, 3
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xbc]
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], 1
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_164
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_156
.label_164:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_161
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0x10000
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_162
	lea	rsi, [rbp - 0xb8]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xbc]
	call	__fstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_159
	mov	byte ptr [rbp - 0x15], 0
	mov	rsp, rsp
	jmp	.label_160
.label_159:
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	and	eax, 0x10000
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_155
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_155
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 0
	lea	rdi, [rdi]
	jmp	.label_154
.label_155:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_153
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xa8]
	jae	.label_153
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x1f
	mov	byte ptr [rbp - 0x15], 0
.label_153:
	jmp	.label_154
.label_154:
	lea	rsi, [rsi]
	jmp	.label_160
.label_160:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xfffeffff
	mov	dword ptr [rbp - 8], eax
.label_162:
	test	byte ptr [rbp - 0x15], 1
	je	.label_158
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_158
	mov	esi, 4
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 8]
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	rsp, rsp
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_158
	mov	byte ptr [rbp - 0x15], 0
.label_158:
	jmp	.label_161
.label_161:
	jmp	.label_156
.label_156:
	test	byte ptr [rbp - 0x15], 1
	lea	rdi, [rdi]
	jne	.label_163
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.105
	nop	
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	call	quotearg_style
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_163:
	jmp	.label_157
.label_157:
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x18], edx
	mov	dword ptr [rbp - 0x20], ecx
.label_166:
	mov	rbp, rbp
	call	process_signals
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fd_reopen
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
	nop	
	jge	.label_165
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x19], cl
.label_165:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	nop	
	jne	.label_166
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0xa0], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1a0], xmm6
	movaps	xmmword ptr [rbp - 0x90], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm3
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm2
	movaps	xmmword ptr [rbp - 0x180], xmm1
	movaps	xmmword ptr [rbp - 0x190], xmm0
	mov	dword ptr [rbp - 0x50], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x60], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], esi
	lea	rdi, [rdi]
	je	.label_167
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0x130], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x180]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x120], xmm1
	mov	rbp, rbp
	movaps	xmm2, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x110], xmm2
	lea	rdi, [rdi]
	movaps	xmm3, xmmword ptr [rbp - 0x30]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x100], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xf0], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x90]
	nop	
	movaps	xmmword ptr [rbp - 0xe0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xd0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm7
.label_167:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x140], rcx
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x50]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 0x54], edi
	mov	qword ptr [rbp - 0xa8], rsi
	cmp	r9d,  dword ptr [dword ptr [progress_len]]
	jge	.label_168
	mov	edi, 0xa
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stderr]]
	nop	
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_168:
	nop	
	lea	rax, [rbp - 0x160]
	mov	qword ptr [rbp - 0x70], rax
	lea	rax, [rbp + 0x10]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], 0x30
	mov	dword ptr [rbp - 0x80], 0x18
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0xa8]
	nop	
	lea	rcx, [rbp - 0x80]
	call	verror
	mov	rsp, rsp
	add	rsp, 0x1a0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
.label_169:
	mov	rsp, rsp
	call	process_signals
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	ftruncate
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jge	.label_170
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
.label_170:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_169
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x1d0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 0
	cmp	qword ptr [word ptr [skip_records]],  0
	lea	rsi, [rsi]
	jne	.label_256
	cmp	qword ptr [word ptr [skip_bytes]],  0
	lea	rdi, [rdi]
	je	.label_218
.label_256:
	xor	edi, edi
	movabs	r8, OFFSET FLAT:skip_bytes
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [skip_records]]
	mov	rbp, rbp
	imul	rcx,  qword ptr [word ptr [input_blocksize]]
	lea	rdi, [rdi]
	add	rax, rcx
	add	rax,  qword ptr [word ptr [skip_bytes]]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	rdx,  qword ptr [word ptr [skip_records]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [input_blocksize]]
	lea	rdi, [rdi]
	call	skip
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	jne	.label_191
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	lea	rdi, [rdi]
	jne	.label_198
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_198
.label_191:
	cmp	dword ptr [dword ptr [status_level]],  1
	mov	rsp, rsp
	je	.label_198
	movabs	rdi, OFFSET FLAT:.str.106
	lea	rsi, [rsi]
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_198:
	jmp	.label_218
.label_218:
	cmp	qword ptr [word ptr [seek_records]],  0
	mov	rsp, rsp
	jne	.label_220
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [seek_bytes]],  0
	nop	
	je	.label_223
.label_220:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	lea	r8, [rbp - 8]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [seek_bytes]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rdx,  qword ptr [word ptr [seek_records]]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	call	skip
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_238
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_231
.label_238:
	mov	rdi,  qword ptr [word ptr [obuf]]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rdi
	je	.label_248
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	jmp	.label_253
.label_248:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rax
.label_253:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	nop	
	call	memset
.label_227:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_260
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_171
.label_260:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_171:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0xe0]
	call	iwrite
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_190
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.107
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	call	quit
.label_190:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	je	.label_209
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_212
.label_209:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_212:
	mov	rbp, rbp
	jmp	.label_219
.label_219:
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x71], al
	jne	.label_222
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x71], al
.label_222:
	mov	al, byte ptr [rbp - 0x71]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_227
	lea	rdi, [rdi]
	jmp	.label_231
.label_231:
	jmp	.label_223
.label_223:
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_186
	cmp	qword ptr [word ptr [max_bytes]],  0
	mov	rbp, rbp
	jne	.label_186
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_184
.label_186:
	call	alloc_ibuf
	call	alloc_obuf
.label_172:
	cmp	dword ptr [dword ptr [status_level]],  4
	jne	.label_246
	call	gethrxtime
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax,  qword ptr [word ptr [next_time]]
	cmp	rax, qword ptr [rbp - 0xb0]
	jg	.label_251
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	print_xfer_stats
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [next_time]]
	add	rdi, 0x3b9aca00
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [next_time]],  rdi
.label_251:
	jmp	.label_246
.label_246:
	nop	
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [max_records]]
	cmp	qword ptr [word ptr [max_bytes]],  0
	setne	dl
	xor	dl, 0xff
	lea	rsi, [rsi]
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	movsxd	rdi, esi
	add	rcx, rdi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_252
	jmp	.label_183
.label_252:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_185
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	and	eax, 0x100
	cmp	eax, 0
	je	.label_185
	xor	eax, eax
	mov	ecx, 0x20
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [ibuf]]
	nop	
	mov	edx,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	edx, 0x18
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	sil, al
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	lea	rsi, [rsi]
	movzx	esi, sil
	call	memset
.label_185:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	cmp	rax,  qword ptr [word ptr [max_records]]
	jb	.label_205
	xor	edi, edi
	nop	
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [max_bytes]]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_214
.label_205:
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	nop	
	mov	rsi,  qword ptr [word ptr [ibuf]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	call	rax
	mov	qword ptr [rbp - 0x68], rax
.label_214:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	jle	.label_224
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	call	advance_input_offset
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_228
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	call	invalidate_cache
	nop	
	mov	byte ptr [rbp - 0xe], al
.label_228:
	jmp	.label_234
.label_224:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_237
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	dl,  byte ptr [byte ptr [i_nocache]]
	and	dl, 1
	mov	rbp, rbp
	movzx	eax, dl
	nop	
	mov	dl,  byte ptr [byte ptr [i_nocache_eof]]
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	or	esi, eax
	cmp	esi, 0
	mov	rbp, rbp
	setne	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	byte ptr [byte ptr [i_nocache_eof]],  dl
	test	byte ptr [byte ptr [o_nocache]],  1
	mov	byte ptr [rbp - 0xe5], cl
	lea	rdi, [rdi]
	je	.label_239
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x200
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0xe5], cl
.label_239:
	mov	al, byte ptr [rbp - 0xe5]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	or	edx, ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	lea	rsi, [rsi]
	jmp	.label_183
.label_237:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_182
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_188
.label_182:
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.108
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_188:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_206
	call	print_stats
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	sub	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsi, qword ptr [rbp - 0xa8]
	call	invalidate_cache
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	byte ptr [rbp - 0xd], al
	mov	rsp, rsp
	call	advance_input_after_read_error
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_221
	mov	dword ptr [rbp - 0xe4], 1
	mov	byte ptr [byte ptr [input_seekable]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_seek_errno]],  0x1d
.label_221:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	nop	
	cmp	eax, 0
	je	.label_233
	nop	
	cmp	qword ptr [rbp - 0xc8], 0
	jne	.label_233
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_236
.label_233:
	jmp	.label_172
.label_236:
	lea	rdi, [rdi]
	jmp	.label_195
.label_206:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], 1
	lea	rdi, [rdi]
	jmp	.label_183
.label_195:
	lea	rsi, [rsi]
	jmp	.label_247
.label_247:
	jmp	.label_234
.label_234:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	nop	
	jae	.label_250
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [r_partial]],  rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [conversions_mask]]
	and	ecx, 0x400
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_257
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_175
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0x20
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [ibuf]]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x18
	cmp	esi, 0
	cmovne	eax, ecx
	mov	dil, al
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	sub	r8, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], dil
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rbp - 0x1c1]
	nop	
	movzx	esi, r9b
	mov	rdx, r8
	call	memset
.label_175:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
.label_257:
	lea	rsi, [rsi]
	jmp	.label_203
.label_250:
	mov	rax,  qword ptr [word ptr [r_full]]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r_full]],  rax
	nop	
	mov	qword ptr [rbp - 0xc8], 0
.label_203:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [obuf]]
	lea	rsi, [rsi]
	jne	.label_210
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x110]
	call	iwrite
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax,  qword ptr [word ptr [w_bytes]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [w_bytes]],  rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	je	.label_196
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.109
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_184
.label_196:
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jne	.label_254
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [w_full]],  rax
	mov	rbp, rbp
	jmp	.label_207
.label_254:
	mov	rax,  qword ptr [word ptr [w_partial]]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [w_partial]],  rax
.label_207:
	nop	
	jmp	.label_261
.label_261:
	jmp	.label_172
.label_210:
	test	byte ptr [byte ptr [translation_needed]],  1
	je	.label_174
	mov	rdi,  qword ptr [word ptr [ibuf]]
	nop	
	mov	rsi, qword ptr [rbp - 0x110]
	call	translate_buffer
.label_174:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x80
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_181
	nop	
	lea	rsi, [rbp - 0x110]
	mov	rdi,  qword ptr [word ptr [ibuf]]
	call	swab_buffer
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	jmp	.label_193
.label_181:
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0x80], rax
.label_193:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 8
	nop	
	cmp	eax, 0
	je	.label_197
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	call	copy_with_block
	nop	
	jmp	.label_215
.label_197:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_204
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	call	copy_with_unblock
	nop	
	jmp	.label_211
.label_204:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	call	copy_simple
.label_211:
	jmp	.label_215
.label_215:
	jmp	.label_172
.label_183:
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_216
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_217
	movabs	rdi, OFFSET FLAT:saved_char
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	call	copy_with_block
	mov	rbp, rbp
	jmp	.label_229
.label_217:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x10
	cmp	eax, 0
	je	.label_232
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:saved_char
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	call	copy_with_unblock
	jmp	.label_241
.label_232:
	jmp	.label_244
.label_244:
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	nop	
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	rbp, rbp
	jb	.label_245
	call	write_output
.label_245:
	mov	rsp, rsp
	jmp	.label_259
.label_259:
	mov	rbp, rbp
	jmp	.label_241
.label_241:
	jmp	.label_229
.label_229:
	lea	rsi, [rsi]
	jmp	.label_216
.label_216:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_173
	cmp	qword ptr [word ptr [col]],  0
	jbe	.label_173
	nop	
	mov	rax,  qword ptr [word ptr [col]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_202:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_180
	jmp	.label_240
.label_240:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [space_character]]
	nop	
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [oc]],  rdx
	nop	
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	lea	rdi, [rdi]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_187
	call	write_output
.label_187:
	jmp	.label_199
.label_199:
	mov	rbp, rbp
	jmp	.label_200
.label_200:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_202
.label_180:
	lea	rsi, [rsi]
	jmp	.label_173
.label_173:
	cmp	qword ptr [word ptr [col]],  0
	nop	
	je	.label_194
	nop	
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_194
	jmp	.label_235
.label_235:
	mov	al,  byte ptr [byte ptr [newline_character]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [oc]]
	nop	
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_242
	mov	rbp, rbp
	call	write_output
.label_242:
	jmp	.label_249
.label_249:
	jmp	.label_194
.label_194:
	cmp	qword ptr [word ptr [oc]],  0
	lea	rsi, [rsi]
	je	.label_189
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [obuf]]
	nop	
	mov	rdx,  qword ptr [word ptr [oc]]
	call	iwrite
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_243
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [w_partial]]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_243:
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [oc]]
	nop	
	je	.label_258
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.109
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	nl_error
	nop	
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_184
.label_258:
	jmp	.label_189
.label_189:
	nop	
	test	byte ptr [byte ptr [final_op_was_seek]],  1
	je	.label_178
	mov	edi, 1
	lea	rsi, [rbp - 0x1b0]
	nop	
	call	__fstat
	cmp	eax, 0
	nop	
	je	.label_201
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_184
.label_201:
	mov	eax, dword ptr [rbp - 0x198]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_213
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x198]
	sub	eax, dword ptr [rbp - 0x198]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_177
.label_213:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	esi, ecx
	mov	edi, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	call	lseek
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	jg	.label_176
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x100]
	jge	.label_176
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	call	iftruncate
	cmp	eax, 0
	je	.label_226
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.110
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x108], rcx
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	r8, rax
	mov	al, 0
	call	nl_error
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], 1
	nop	
	jmp	.label_184
.label_226:
	jmp	.label_176
.label_176:
	nop	
	jmp	.label_177
.label_177:
	jmp	.label_178
.label_178:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x4000
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_179
	mov	rsp, rsp
	mov	edi, 1
	nop	
	call	fdatasync
	cmp	eax, 0
	nop	
	je	.label_179
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	je	.label_192
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_192
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.111
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x11c], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x11c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	nl_error
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 1
.label_192:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	or	eax, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_179:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rsp, rsp
	and	eax, 0x8000
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_255
	jmp	.label_208
.label_208:
	mov	edi, 1
	call	fsync
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_225
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	nop	
	je	.label_230
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.112
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b8], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x1b8]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x44], 1
	mov	rsp, rsp
	jmp	.label_184
.label_230:
	jmp	.label_208
.label_225:
	mov	rsp, rsp
	jmp	.label_255
.label_255:
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_184:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	add	rsp, 0x1d0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x40], rsi
	mov	dword ptr [rbp - 8], 0xffffffff
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_278
	mov	al,  byte ptr [byte ptr [i_nocache_eof]]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_270
.label_278:
	nop	
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], ecx
.label_270:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 1], cl
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x40]
	call	cache_round
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_273
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_273
	mov	byte ptr [rbp - 0x35], 1
	mov	rsp, rsp
	jmp	.label_263
.label_273:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_268
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_268
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	jne	.label_268
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_263
.label_268:
	nop	
	jmp	.label_280
.label_280:
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_264
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	cache_round
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_274
.label_264:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_262
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_seekable]],  1
	lea	rsi, [rsi]
	je	.label_269
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [input_offset]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_276
.label_269:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x1d
.label_276:
	jmp	.label_271
.label_262:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  -1
	je	.label_272
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  0
	nop	
	jge	.label_279
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 1
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	call	lseek
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
	jmp	.label_267
.label_279:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_277
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	add	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
.label_277:
	jmp	.label_267
.label_267:
	jmp	.label_272
.label_272:
	mov	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [rbp - 0x20], rax
.label_271:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_275
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_265
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_265
	test	byte ptr [rbp - 1], 1
	nop	
	je	.label_265
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x18], 0
.label_265:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_266
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [page_size]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x20], rsi
.label_266:
	mov	rbp, rbp
	mov	ecx, 4
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	posix_fadvise
	mov	dword ptr [rbp - 8], eax
.label_275:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], -1
	mov	rsp, rsp
	cmovne	eax, ecx
	cmp	eax, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x35], dl
.label_263:
	mov	al, byte ptr [rbp - 0x35]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl finish_up
	.type finish_up, @function
finish_up:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	call	cleanup
	lea	rsi, [rsi]
	call	print_stats
	lea	rsi, [rsi]
	call	process_signals
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d10

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	add	edi, 1
	mov	dword ptr [dword ptr [info_signal_count]],  edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [interrupt_signal]],  edi
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d50

	.globl operand_is
	.type operand_is, @function
operand_is:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	operand_matches
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 4], 0
.label_292:
	mov	esi, 0x2c
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x18], rax
.label_284:
	mov	edx, 0x2c
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	operand_matches
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	cl, dl
	mov	rbp, rbp
	test	al, 1
	mov	byte ptr [rbp - 0x19], cl
	lea	rsi, [rsi]
	jne	.label_293
	mov	rbp, rbp
	jmp	.label_285
.label_293:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xc], 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], cl
.label_285:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_291
	mov	rsp, rsp
	jmp	.label_281
.label_291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_282
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_286
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_289
.label_286:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
.label_289:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	call	quotearg_n_style_mem
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	edi, esi
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	r8, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_282:
	mov	rsp, rsp
	jmp	.label_283
.label_283:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_284
.label_281:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_288
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_294
.label_288:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	or	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rbp - 4], ecx
.label_294:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_287
	jmp	.label_290
.label_287:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_292
.label_290:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f90

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x50]
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.85
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	nop	
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_297
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_297
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	parse_integer
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_295
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	imul	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_295
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_298
.label_295:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_296
	movabs	rsi, OFFSET FLAT:.str.86
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	strncmp
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_296
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.87
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	nop	
	movabs	rsi, OFFSET FLAT:.str.86
	mov	qword ptr [rbp - 0x18], rax
	call	quote_n
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:.str.88
	nop	
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	nl_error
.label_296:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_299
.label_297:
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	je	.label_300
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_298
.label_300:
	mov	rsp, rsp
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20], rax
.label_298:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 8], 0
.label_302:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_301
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	iread
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_305
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_304
.label_305:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_303
	jmp	.label_301
.label_303:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_302
.label_301:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_304:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl iread
	.type iread, @function
iread:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
.label_313:
	mov	rsp, rsp
	call	process_signals
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	mov	rsp, rsp
	jne	.label_307
	nop	
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_307
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_307
	nop	
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_307
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	nop	
	je	.label_307
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x28], 0
.label_307:
	nop	
	jmp	.label_306
.label_306:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], cl
	jge	.label_309
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], cl
.label_309:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_313
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jge	.label_311
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_311
	mov	rsp, rsp
	call	process_signals
.label_311:
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_308
	test	byte ptr [byte ptr [warn_partial_read]],  1
	je	.label_308
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_310
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_310
	nop	
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_312
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	select_plural
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.89
	movabs	rsi, OFFSET FLAT:.str.90
	mov	rbp, rbp
	mov	rdx, rax
	call	ngettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	lea	rsi, [rsi]
	call	nl_error
.label_312:
	mov	byte ptr [byte ptr [warn_partial_read]],  0
.label_310:
	lea	rsi, [rsi]
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [iread.prev_nread]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	and	edi, eax
	cmp	edi, 0
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406490

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 2], al
.label_318:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	byte ptr [rax], 0
	je	.label_315
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax]
	cmp	edx, esi
	lea	rdi, [rdi]
	je	.label_314
	mov	byte ptr [rbp - 1], 0
	jmp	.label_317
.label_314:
	jmp	.label_318
.label_315:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 3], al
	je	.label_316
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 2]
	cmp	ecx, edx
	sete	sil
	nop	
	mov	byte ptr [rbp - 3], sil
.label_316:
	mov	al, byte ptr [rbp - 3]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
.label_317:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xa0
.label_320:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x95], al
	lea	rsi, [rsi]
	jne	.label_321
	nop	
	mov	eax,  dword ptr [dword ptr [info_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x95], cl
.label_321:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x95]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_322
	jmp	.label_325
.label_322:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x80]
	call	sigprocmask
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	nop	
	mov	dword ptr [rbp - 0x90], edi
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	mov	dword ptr [rbp - 0x8c], edi
	cmp	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_324
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [info_signal_count]],  eax
.label_324:
	mov	edi, 2
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x80]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	call	sigprocmask
	nop	
	cmp	dword ptr [rbp - 0x90], 0
	mov	dword ptr [rbp - 0x88], eax
	je	.label_319
	call	cleanup
.label_319:
	call	print_stats
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_323
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x90]
	nop	
	call	raise
	nop	
	mov	dword ptr [rbp - 0x84], eax
.label_323:
	mov	rsp, rsp
	jmp	.label_320
.label_325:
	nop	
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	mov	rbp, rbp
	ja	.label_326
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_327
.label_326:
	mov	eax, 0xf4240
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	xor	edx, edx
	div	rcx
	mov	rbp, rbp
	add	rdx, 0xf4240
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
.label_327:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl cleanup
	.type cleanup, @function
cleanup:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	close
	cmp	eax, 0
	jge	.label_329
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.91
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	quotearg_style
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_329:
	mov	edi, 1
	mov	rbp, rbp
	call	close
	cmp	eax, 0
	jge	.label_328
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.92
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	nl_error
.label_328:
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067e0

	.globl print_stats
	.type print_stats, @function
print_stats:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	cmp	dword ptr [dword ptr [status_level]],  1
	jne	.label_330
	jmp	.label_333
.label_330:
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_332
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [progress_len]],  0
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_332:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [r_partial]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [w_full]]
	mov	r9,  qword ptr [word ptr [w_partial]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	cmp	qword ptr [word ptr [r_truncate]],  0
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_331
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [r_truncate]]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rsi, OFFSET FLAT:.str.95
	mov	rbp, rbp
	mov	rdx, rax
	call	ngettext
	mov	rdx,  qword ptr [word ptr [r_truncate]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_331:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [status_level]],  2
	jne	.label_334
	lea	rsi, [rsi]
	jmp	.label_333
.label_334:
	xor	eax, eax
	mov	edi, eax
	call	print_xfer_stats
.label_333:
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406930

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x8c0
	mov	qword ptr [rbp - 0x8a0], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x8a0], 0
	mov	rbp, rbp
	je	.label_346
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8a0]
	mov	qword ptr [rbp - 0x898], rax
	lea	rsi, [rsi]
	jmp	.label_336
.label_346:
	call	gethrxtime
	mov	qword ptr [rbp - 0x898], rax
.label_336:
	nop	
	mov	rax, qword ptr [rbp - 0x898]
	mov	edx, 0x1d1
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdi, [rbp - 0x810]
	nop	
	mov	qword ptr [rbp - 0x860], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [w_bytes]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8a8], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8a8]
	mov	qword ptr [rbp - 0x840], rsi
	nop	
	mov	rsi, rax
	mov	rcx, qword ptr [rbp - 0x840]
	mov	r8, qword ptr [rbp - 0x840]
	call	human_readable
	lea	rsi, [rsi]
	mov	edx, 0x1f1
	lea	rsi, [rsi]
	mov	r9d, 1
	mov	ecx, r9d
	nop	
	lea	rsi, [rbp - 0x810]
	mov	qword ptr [rbp - 0x870], rax
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	add	rsi, 0x28e
	mov	qword ptr [rbp - 0x10], rcx
	mov	r8, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	human_readable
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x810]
	nop	
	mov	qword ptr [rbp - 0x850], rax
	lea	rsi, [rsi]
	add	rcx, 0x51c
	nop	
	mov	qword ptr [rbp - 0x818], rcx
	mov	dword ptr [rbp - 0x18], 0x28e
	mov	rax,  qword ptr [word ptr [start_time]]
	cmp	rax, qword ptr [rbp - 0x860]
	jge	.label_344
	mov	edx, 0x1d1
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	lea	rdi, [rdi]
	movabs	rsi, 0x41cdcd6500000000
	mov	qword ptr [rbp - 0x830], rsi
	mov	rsi, qword ptr [rbp - 0x860]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x858], rsi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + start_time]]
	mov	rsp, rsp
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x858], rsi
	movq	xmm0, rsi
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_349]]
	lea	rdi, [rdi]
	punpckldq	xmm0, xmm1
	mov	rsp, rsp
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_350]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	lea	rdi, [rdi]
	addpd	xmm1, xmm0
	divsd	xmm1, qword ptr [rbp - 0x830]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x868], xmm1
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x818]
	mov	r8, qword ptr [rbp - 0x858]
	mov	rbp, rbp
	call	human_readable
	movabs	rsi, OFFSET FLAT:print_xfer_stats.slash_s
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x818]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x818]
	mov	rbp, rbp
	mov	rdi, rax
	call	strcat
	nop	
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_337
.label_344:
	movabs	rdi, OFFSET FLAT:.str.97
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x868], xmm0
	mov	rax, qword ptr [rbp - 0x818]
	movsxd	rsi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x888], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x828], rax
	call	gettext
	nop	
	movabs	rdx, OFFSET FLAT:.str.96
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x828]
	mov	rsi, qword ptr [rbp - 0x888]
	mov	rcx, rax
	mov	al, 0
	call	snprintf
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x818]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x87c], eax
.label_337:
	cmp	qword ptr [rbp - 0x8a0], 0
	je	.label_340
	mov	edi, 0xd
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x4c], eax
.label_340:
	mov	eax, 0x18
	mov	esi, eax
	movabs	rcx, OFFSET FLAT:.str.99
	movabs	rdx, OFFSET FLAT:.str.98
	lea	rdi, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x8a0], 0
	cmovne	rcx, rdx
	movsd	xmm0, qword ptr [rbp - 0x868]
	mov	rdx, rcx
	nop	
	mov	al, 1
	call	snprintf
	mov	rdi, qword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_335
	jmp	.label_338
.label_335:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [w_bytes]]
	nop	
	mov	qword ptr [rbp - 0x890], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	call	select_plural
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.100
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.101
	mov	rdx, rax
	call	ngettext
	mov	rbp, rbp
	lea	rcx, [rbp - 0x40]
	nop	
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x890]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x844], eax
	jmp	.label_339
.label_338:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x850]
	nop	
	call	abbreviation_lacks_prefix
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_343
	jmp	.label_348
.label_343:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.102
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x820], rax
	call	gettext
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x870]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x820]
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8ac], eax
	jmp	.label_347
.label_348:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x878], rax
	call	gettext
	lea	r9, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	nop	
	mov	rcx, qword ptr [rbp - 0x870]
	nop	
	mov	r8, qword ptr [rbp - 0x850]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x878]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8ac], eax
.label_347:
	mov	eax, dword ptr [rbp - 0x8ac]
	mov	dword ptr [rbp - 0x844], eax
.label_339:
	mov	eax, dword ptr [rbp - 0x844]
	mov	dword ptr [rbp - 0x834], eax
	cmp	qword ptr [rbp - 0x8a0], 0
	je	.label_341
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x834]
	lea	rsi, [rsi]
	jg	.label_342
	mov	eax, dword ptr [rbp - 0x834]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_342
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.104
	movabs	rcx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax,  dword ptr [dword ptr [progress_len]]
	sub	eax, dword ptr [rbp - 0x834]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 4], eax
.label_342:
	mov	eax, dword ptr [rbp - 0x834]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [progress_len]],  eax
	jmp	.label_345
.label_341:
	mov	edi, 0xa
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8b0], eax
.label_345:
	add	rsp, 0x8c0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	sub	rax, 2
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rdi + rax]
	mov	rbp, rbp
	cmp	ecx, 0x20
	sete	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ef0

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_352:
	cmp	dword ptr [rbp - 4], 0x100
	mov	rsp, rsp
	jge	.label_351
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	sil, byte ptr [rdx + rax]
	movsxd	rax, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rax * 1) + trans_table]],  sil
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_352
.label_351:
	mov	byte ptr [byte ptr [translation_needed]],  1
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f70

	.globl skip
	.type skip, @function
skip:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x150
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x68], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rcx
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rcx, 0x7fffffffffffffff
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_358
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	call	skip_via_lseek
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	jg	.label_358
	cmp	dword ptr [rbp - 0xc], 0
	lea	rsi, [rsi]
	jne	.label_365
	xor	edi, edi
	mov	rsp, rsp
	lea	rsi, [rbp - 0x150]
	mov	rbp, rbp
	call	__fstat
	nop	
	cmp	eax, 0
	je	.label_373
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_373:
	lea	rdi, [rbp - 0x150]
	mov	rbp, rbp
	call	usable_st_size
	test	al, 1
	jne	.label_367
	jmp	.label_368
.label_367:
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [input_offset]]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x98]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_368
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	sub	rax,  qword ptr [word ptr [input_offset]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	jmp	.label_378
.label_368:
	mov	qword ptr [rbp - 0x68], 0
.label_378:
	mov	rdi, qword ptr [rbp - 0x98]
	call	advance_input_offset
	jmp	.label_359
.label_365:
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], 0
.label_359:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_375
.label_358:
	lea	rsi, [rsi]
	call	__errno_location
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	ecx, 2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], esi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	skip_via_lseek
	cmp	rax, 0
	jl	.label_360
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 0
	lea	rsi, [rsi]
	jne	.label_363
	mov	dword ptr [rbp - 0xa4], 0x4b
.label_363:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_370
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.113
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xa4]
	nop	
	mov	dword ptr [rbp - 0xa0], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	nl_error
	mov	rsp, rsp
	jmp	.label_364
.label_370:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.114
	nop	
	mov	esi, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xa8], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xb0], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_364:
	lea	rsi, [rsi]
	mov	edi, 1
	call	quit
.label_360:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_361
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_366
.label_361:
	mov	rbp, rbp
	call	alloc_obuf
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [obuf]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
.label_366:
	nop	
	jmp	.label_353
.label_353:
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x80]
	cmp	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rbp, rbp
	je	.label_377
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_357
.label_377:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_357:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x9c]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	jge	.label_376
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jne	.label_380
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.108
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	nl_error
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x100
	cmp	esi, 0
	je	.label_369
	call	print_stats
.label_369:
	jmp	.label_381
.label_380:
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_381:
	mov	edi, 1
	lea	rdi, [rdi]
	call	quit
.label_376:
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_372
	mov	rsp, rsp
	jmp	.label_379
.label_372:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_382
	mov	rdi, qword ptr [rbp - 0x78]
	call	advance_input_offset
.label_382:
	nop	
	jmp	.label_354
.label_354:
	mov	rsp, rsp
	jmp	.label_356
.label_356:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	je	.label_355
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_362
.label_355:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], 0
.label_362:
	nop	
	jmp	.label_371
.label_371:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	jne	.label_374
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_374:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_353
.label_379:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x18], rax
.label_375:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x150
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407540

	.globl iwrite
	.type iwrite, @function
iwrite:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	edi, 0x4000
	cmp	edi, 0
	nop	
	je	.label_383
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rbp, rbp
	jae	.label_383
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 3
	mov	al, 0
	mov	rbp, rbp
	call	rpl_fcntl
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xffffbfff
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_389
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [status_level]],  1
	nop	
	je	.label_389
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.116
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_389:
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [o_nocache_eof]],  1
	lea	rdi, [rdi]
	call	invalidate_cache
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [conversions_mask]]
	or	edi, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  edi
	mov	byte ptr [rbp - 0x16], al
.label_383:
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_387
	mov	qword ptr [rbp - 0x10], 0
	call	process_signals
	mov	byte ptr [byte ptr [final_op_was_seek]],  0
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x10000
	nop	
	cmp	eax, 0
	je	.label_392
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	is_nul
	mov	rsp, rsp
	test	al, 1
	jne	.label_390
	nop	
	jmp	.label_392
.label_390:
	mov	edx, 1
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	lseek
	nop	
	cmp	rax, 0
	jge	.label_393
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xfffeffff
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	mov	rbp, rbp
	jmp	.label_394
.label_393:
	mov	byte ptr [byte ptr [final_op_was_seek]],  1
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_394:
	jmp	.label_392
.label_392:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_384
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	nop	
	mov	rdx, rcx
	nop	
	call	write
	mov	qword ptr [rbp - 0x10], rax
.label_384:
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_395
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_385
	jmp	.label_387
.label_385:
	mov	rsp, rsp
	jmp	.label_391
.label_395:
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_396
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_387
.label_396:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_391
.label_391:
	mov	rsp, rsp
	jmp	.label_386
.label_387:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_388
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	je	.label_388
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x15], al
.label_388:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407820

	.globl quit
	.type quit, @function
quit:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	nop	
	call	finish_up
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407850

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x2c0
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [ibuf]],  0
	je	.label_397
	mov	rbp, rbp
	jmp	.label_398
.label_397:
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	mov	rbp, rbp
	shl	rcx, 1
	lea	rsi, [rsi]
	add	rcx, 4
	sub	rcx, 1
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_399
	movabs	rdi, OFFSET FLAT:.str.117
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2b8], rax
	call	gettext
	mov	edx, 0x1f1
	nop	
	mov	ecx, 1
	mov	edi, ecx
	lea	rsi, [rbp - 0x2b0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2c0], rcx
	lea	rsi, [rsi]
	mov	rcx, r8
	mov	qword ptr [rbp - 0x18], rax
	call	human_readable
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x2c0]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_399:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi,  qword ptr [word ptr [page_size]]
	mov	rbp, rbp
	call	ptr_align
	mov	rbp, rbp
	mov	qword ptr [word ptr [ibuf]],  rax
.label_398:
	add	rsp, 0x2c0
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x2c0
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [obuf]],  0
	je	.label_400
	jmp	.label_401
.label_400:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	nop	
	cmp	eax, 0
	je	.label_403
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	nop	
	sub	rcx, 1
	add	rax, rcx
	mov	rdi, rax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x2b8], rax
	cmp	qword ptr [rbp - 0x2b8], 0
	jne	.label_402
	movabs	rdi, OFFSET FLAT:.str.118
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	nop	
	mov	qword ptr [rbp - 8], rax
	call	gettext
	mov	edx, 0x1f1
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	edi, ecx
	nop	
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x2b0], rdi
	nop	
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a8], rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2c0], rax
	call	human_readable
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2c0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2a8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_402:
	mov	rdi, qword ptr [rbp - 0x2b8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [obuf]],  rax
	lea	rdi, [rdi]
	jmp	.label_401
.label_403:
	mov	rsp, rsp
	call	alloc_ibuf
	nop	
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [word ptr [obuf]],  rax
.label_401:
	add	rsp, 0x2c0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [word ptr [input_offset]],  rdi
	nop	
	mov	rdi,  qword ptr [word ptr [input_offset]]
	cmp	rdi, qword ptr [rbp - 8]
	jae	.label_404
	mov	rbp, rbp
	mov	byte ptr [byte ptr [input_offset_overflow]],  1
.label_404:
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b50

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_seekable]],  1
	mov	rsp, rsp
	jne	.label_409
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [input_seek_errno]],  0x1d
	mov	rsp, rsp
	jne	.label_414
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_408
.label_414:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [input_seek_errno]]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_412
.label_409:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	advance_input_offset
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	cmp	rdi,  qword ptr [word ptr [input_offset]]
	setb	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [input_offset_overflow]]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rdi, [rdi]
	or	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [byte ptr [input_offset_overflow]],  al
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	je	.label_413
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.119
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x30], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	byte ptr [rbp - 0x39], 0
	nop	
	jmp	.label_408
.label_413:
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	edx, 1
	mov	rsp, rsp
	call	lseek
	mov	rsp, rsp
	xor	edx, edx
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jg	.label_406
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [input_offset]]
	jne	.label_411
	nop	
	mov	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	jmp	.label_408
.label_411:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [input_offset]]
	sub	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jg	.label_407
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jbe	.label_405
.label_407:
	cmp	dword ptr [dword ptr [status_level]],  1
	mov	rbp, rbp
	je	.label_405
	movabs	rdi, OFFSET FLAT:.str.120
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_405:
	xor	esi, esi
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [input_file]]
	mov	rdx, qword ptr [rbp - 0x28]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jg	.label_410
	mov	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	jmp	.label_408
.label_410:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_415
	movabs	rdi, OFFSET FLAT:.str.121
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_415:
	jmp	.label_406
.label_406:
	jmp	.label_412
.label_412:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 8], rax
	nop	
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], 0
.label_408:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
.label_417:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_416
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	nop	
	movzx	edi, al
	mov	ecx, edi
	nop	
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + trans_table]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_417
.label_416:
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	test	byte ptr [byte ptr [char_is_saved]],  1
	mov	rbp, rbp
	je	.label_418
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [char_is_saved]],  0
.label_418:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_421
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, -1
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	sil, byte ptr [rax + rcx - 1]
	mov	byte ptr [byte ptr [saved_char]],  sil
	mov	byte ptr [byte ptr [char_is_saved]],  1
.label_421:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_420:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_419
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax - 2]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_420
.label_419:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408010

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
.label_430:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_438
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	movsx	edx,  byte ptr [byte ptr [newline_character]]
	lea	rdi, [rdi]
	cmp	ecx, edx
	jne	.label_424
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	mov	rbp, rbp
	jae	.label_429
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [col]]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_433:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	mov	rbp, rbp
	jae	.label_427
	jmp	.label_436
.label_436:
	mov	al,  byte ptr [byte ptr [space_character]]
	nop	
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	nop	
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	lea	rsi, [rsi]
	jb	.label_435
	call	write_output
.label_435:
	jmp	.label_439
.label_439:
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_433
.label_427:
	jmp	.label_429
.label_429:
	nop	
	mov	qword ptr [word ptr [col]],  0
	jmp	.label_431
.label_424:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jne	.label_437
	mov	rax,  qword ptr [word ptr [r_truncate]]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r_truncate]],  rax
	lea	rdi, [rdi]
	jmp	.label_423
.label_437:
	mov	rax,  qword ptr [word ptr [col]]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	lea	rdi, [rdi]
	jae	.label_434
	lea	rdi, [rdi]
	jmp	.label_426
.label_426:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	rax,  qword ptr [word ptr [oc]]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	add	rdx, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [obuf]]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], cl
	mov	rax,  qword ptr [word ptr [oc]]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_425
	mov	rbp, rbp
	call	write_output
.label_425:
	mov	rbp, rbp
	jmp	.label_432
.label_432:
	mov	rsp, rsp
	jmp	.label_434
.label_434:
	mov	rbp, rbp
	jmp	.label_423
.label_423:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [col]]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [word ptr [col]],  rax
.label_431:
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_430
.label_438:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408250

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_456:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_452
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [col]]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [col]],  rcx
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	mov	rsp, rsp
	jb	.label_440
	nop	
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [col]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	al,  byte ptr [byte ptr [newline_character]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	nop	
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_445
	call	write_output
.label_445:
	mov	rbp, rbp
	jmp	.label_455
.label_455:
	jmp	.label_441
.label_440:
	nop	
	movsx	eax, byte ptr [rbp - 1]
	nop	
	movsx	ecx,  byte ptr [byte ptr [space_character]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_443
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	mov	rbp, rbp
	jmp	.label_450
.label_443:
	jmp	.label_442
.label_442:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	mov	rsp, rsp
	je	.label_444
	lea	rsi, [rsi]
	jmp	.label_449
.label_449:
	mov	al,  byte ptr [byte ptr [space_character]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [word ptr [oc]],  rdx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_453
	call	write_output
.label_453:
	jmp	.label_446
.label_446:
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	lea	rsi, [rsi]
	jmp	.label_442
.label_444:
	jmp	.label_447
.label_447:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_448
	call	write_output
.label_448:
	nop	
	jmp	.label_451
.label_451:
	jmp	.label_450
.label_450:
	jmp	.label_441
.label_441:
	jmp	.label_454
.label_454:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_456
.label_452:
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
.label_459:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	rbp, rbp
	sub	rcx,  qword ptr [word ptr [oc]]
	mov	rbp, rbp
	cmp	rax, rcx
	jae	.label_457
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_458
.label_457:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	lea	rsi, [rsi]
	sub	rax,  qword ptr [word ptr [oc]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_458:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [obuf]]
	add	rax,  qword ptr [word ptr [oc]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x20], rdx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax,  qword ptr [word ptr [oc]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [oc]],  rax
	mov	rax,  qword ptr [word ptr [oc]]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rsp, rsp
	jb	.label_460
	lea	rsi, [rsi]
	call	write_output
.label_460:
	mov	rbp, rbp
	jmp	.label_461
.label_461:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_459
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085d0

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx,  qword ptr [word ptr [output_blocksize]]
	lea	rsi, [rsi]
	call	iwrite
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rbp, rbp
	je	.label_463
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.107
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	nl_error
	nop	
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_462
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [w_partial]]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [w_partial]],  rax
.label_462:
	mov	edi, 1
	call	quit
.label_463:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [w_full]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	mov	qword ptr [word ptr [oc]],  0
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	rsp, rsp
	mov	eax, 0x80306d02
	mov	rsp, rsp
	mov	r8d, eax
	lea	rdi, [rdi]
	lea	r9, [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rdi
	mov	dword ptr [rbp - 0x5c], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rdx
	nop	
	mov	dword ptr [rbp - 0x4c], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, r8
	mov	rdx, r9
	mov	al, 0
	call	ioctl
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	sete	r10b
	and	r10b, 1
	nop	
	mov	byte ptr [rbp - 0x39], r10b
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	call	lseek
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x58], rax
	cmp	rsi, qword ptr [rbp - 0x58]
	jg	.label_464
	mov	rsp, rsp
	test	byte ptr [rbp - 0x39], 1
	mov	rsp, rsp
	je	.label_464
	mov	rbp, rbp
	mov	eax, 0x80306d02
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	ioctl
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_464
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_464
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x78]
	jne	.label_464
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	jne	.label_464
	cmp	dword ptr [dword ptr [status_level]],  1
	lea	rsi, [rsi]
	je	.label_465
	movabs	rdi, OFFSET FLAT:.str.115
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rdx, 0
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	al, 0
	call	nl_error
.label_465:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], -1
.label_464:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rsp, 0xa0
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408880

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x8000
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	je	.label_466
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	edx, 0xf000
	lea	rdi, [rdi]
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	nop	
	je	.label_466
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	nop	
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_466
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	lea	rsi, [rsi]
	jmp	.label_466
.label_466:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408930

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_474
	mov	byte ptr [rbp - 9], 1
	jmp	.label_467
.label_474:
	nop	
	jmp	.label_471
.label_471:
	nop	
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0
	cmp	rax, 0
	je	.label_476
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_469
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_467
.label_469:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_468
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 1
	jmp	.label_467
.label_468:
	jmp	.label_471
.label_476:
	jmp	.label_472
.label_472:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	nop	
	je	.label_477
	mov	byte ptr [rbp - 9], 0
	jmp	.label_467
.label_477:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rax, 1
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_475
	mov	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jmp	.label_467
.label_475:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0xf
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_470
	lea	rdi, [rdi]
	jmp	.label_473
.label_470:
	jmp	.label_472
.label_473:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	memcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
.label_467:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ab0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rsp, rsp
	add	rsi, rcx
	mov	rax, rsi
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b10

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b30

	.globl cache_round
	.type cache_round, @function
cache_round:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:cache_round.o_pending
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:cache_round.i_pending
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 4], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_478
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	and	rax, 0x1ffff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_480
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_479
.label_480:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_479:
	jmp	.label_481
.label_478:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_481:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

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
	jne	.label_484
	test	byte ptr [rbp - 0x15], 1
	je	.label_483
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_484
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_483
.label_484:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_482
	call	__errno_location
	mov	dword ptr [rax], 0
.label_482:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_485
.label_483:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_485:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0
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
	#Procedure 0x408d10
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
	#Procedure 0x408d40

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
	je	.label_486
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_487
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_486
.label_487:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_490
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
	jmp	.label_488
.label_490:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_488:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_486:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_489
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_489:
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
	#Procedure 0x408e70

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x18], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 0x2c], edx
	nop	
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	nop	
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	je	.label_493
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_492
.label_493:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_491
.label_492:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x18]
	call	dup2
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x20], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
.label_491:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f30

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	edi, 1
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x10]
	call	clock_gettime
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_494
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	call	xtime_make
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_495
.label_494:
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	call	gettime
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	xtime_make
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_495:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0

	.globl xtime_make
	.type xtime_make, @function
xtime_make:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	eax, 0x3b9aca00
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0x3b9aca00
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10], 0x3b9aca00
	add	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, rcx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409020

	.globl xtime_nonnegative_sec
	.type xtime_nonnegative_sec, @function
xtime_nonnegative_sec:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409050
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	nop
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jge	.label_496
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rdx, 0x3b9aca00
	lea	rsi, [rsi]
	sub	rdx, 1
	mov	rax, rdx
	cqo	
	mov	rsp, rsp
	idiv	rcx
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_497
.label_496:
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	xtime_nonnegative_sec
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_497:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0
	.globl xtime_nonnegative_nsec
	.type xtime_nonnegative_nsec, @function
xtime_nonnegative_nsec:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	eax, 0x3b9aca00
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	rsp, rsp
	mov	rax, rdx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409100
	.globl xtime_nsec
	.type xtime_nsec, @function
xtime_nsec:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jge	.label_498
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x3b9aca00
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_498:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409160

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091a0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x10]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091f0

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str_0
	movabs	r9, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rsi
	mov	dword ptr [rbp - 0x78], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r8
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 3
	mov	dword ptr [rbp - 0x74], edx
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 0x20
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x54], r10d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], 0xffffffff
	mov	dword ptr [rbp - 0x140], 8
	mov	qword ptr [rbp - 0x118], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0x1b0], rax
	call	localeconv
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0xe0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jae	.label_547
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x108], 0x10
	ja	.label_547
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x118], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x148], rax
.label_547:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	mov	rsp, rsp
	ja	.label_518
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rax
.label_518:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x28b
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	add	rax, -3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	ja	.label_526
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	cmp	rdx, 0
	jne	.label_542
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_548
	mov	dword ptr [rbp - 0x150], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], 0
	jmp	.label_511
.label_548:
	mov	rbp, rbp
	jmp	.label_542
.label_542:
	mov	rsp, rsp
	jmp	.label_519
.label_526:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	je	.label_522
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa0]
	cmp	rdx, 0
	jne	.label_522
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x48]
	mov	rsp, rsp
	imul	rdx, rdx, 0xa
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, rdx
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x48]
	shl	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], ecx
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_535
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0xe8]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	jmp	.label_516
.label_535:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xe8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	add	edx, 2
	mov	dword ptr [rbp - 0x64], edx
.label_516:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_511
.label_522:
	lea	rdi, [rdi]
	jmp	.label_519
.label_519:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_540]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0xc8]
	faddp	st(1)
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	nop	
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_540]]
	fild	qword ptr [rbp - 0x50]
	mov	rbp, rbp
	faddp	st(1)
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x28], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_540]]
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x28]
	faddp	st(1)
	fdivrp	st(2)
	nop	
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x190]
	mov	edx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	edx, 0x10
	cmp	edx, 0
	nop	
	jne	.label_541
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	rcx, rsp
	mov	rsp, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rdi
	mov	edi, eax
	lea	rdi, [rdi]
	call	adjust_value
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.2_0
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.2_0
	nop	
	mov	esi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	al, r8b
	mov	qword ptr [rbp - 0x70], rcx
	call	sprintf
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x17c], eax
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0x80], 0
	jmp	.label_530
.label_541:
	nop	
	fld1	
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x1e0]
	mov	dword ptr [rbp - 0x14c], 0
.label_546:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x198], rcx
	nop	
	fild	qword ptr [rbp - 0x198]
	fmulp	st(1)
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	xor	eax, eax
	mov	dl, al
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	byte ptr [rbp - 0x139], dl
	jb	.label_504
	jmp	.label_538
.label_538:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	setl	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x139], cl
.label_504:
	mov	al, byte ptr [rbp - 0x139]
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_546
	fld	xword ptr [rbp - 0x1e0]
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	fdivrp	st(1)
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	edi, eax
	nop	
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.3_0
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.3_0
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	al, r8b
	mov	qword ptr [rbp - 0x168], rcx
	mov	rbp, rbp
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x180], eax
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x78]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	nop	
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rcx, r9d
	mov	rbp, rbp
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xf8]
	jb	.label_523
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_517
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_517
.label_523:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	nop	
	mov	ecx, 0xa
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rbp - 0x74]
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_550]]
	mov	rbp, rbp
	fmul	st(1), st(0)
	mov	rsp, rsp
	mov	rsi, rsp
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	fstp	xword ptr [rbp - 0x174]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x174]
	mov	rsp, rsp
	fdivp	st(2)
	nop	
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.2_0
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	rdi, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	al, r8b
	nop	
	fstp	xword ptr [rbp - 0x15c]
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
.label_517:
	jmp	.label_530
.label_530:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c0], rdx
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c0]
	nop	
	add	rcx, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	lea	rdi, [rdi]
	jmp	.label_501
.label_511:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_534
	mov	dword ptr [rbp - 0x14c], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x138]
	ja	.label_521
	nop	
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x128], rdx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x128]
	div	rsi
	imul	rdx, rdx, 0xa
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x150]
	mov	rbp, rbp
	add	rdx, rdi
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x1c4], ecx
	mov	ecx, dword ptr [rbp - 0x1c4]
	mov	eax, ecx
	xor	edx, edx
	mov	rbp, rbp
	div	dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	edx, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rsp, rsp
	sar	ecx, 1
	lea	rsi, [rsi]
	add	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x178], edx
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	rax, r8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rdi
	nop	
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	mov	eax, dword ptr [rbp - 0x178]
	cmp	eax, dword ptr [rbp - 0x54]
	nop	
	jae	.label_531
	mov	eax, dword ptr [rbp - 0x178]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_515
.label_531:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x178]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	nop	
	setb	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
.label_515:
	mov	eax, dword ptr [rbp - 0xec]
	mov	dword ptr [rbp - 0xcc], eax
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	ja	.label_544
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	setl	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9], cl
.label_544:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_529
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_512
	cmp	dword ptr [rbp - 0x74], 1
	lea	rsi, [rsi]
	jne	.label_505
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x150]
	mov	rsp, rsp
	and	edx, 1
	nop	
	add	ecx, edx
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_509
	mov	rbp, rbp
	jmp	.label_524
.label_505:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_524
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xcc]
	jge	.label_524
.label_509:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x150]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], eax
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	cmp	dword ptr [rbp - 0x150], 0xa
	lea	rdi, [rdi]
	jne	.label_532
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], 0
.label_532:
	lea	rdi, [rdi]
	jmp	.label_524
.label_524:
	nop	
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_528
	cmp	dword ptr [rbp - 0x150], 0
	nop	
	jne	.label_508
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 8
	cmp	eax, 0
	jne	.label_528
.label_508:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x150]
	add	eax, 0x30
	mov	dl, al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x1c0], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dl
	nop	
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x1c0]
	sub	rcx, rsi
	nop	
	add	rdi, rcx
	mov	qword ptr [rbp - 0x1c0], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	mov	dword ptr [rbp - 0x150], 0
.label_528:
	jmp	.label_512
.label_512:
	jmp	.label_521
.label_521:
	jmp	.label_534
.label_534:
	nop	
	cmp	dword ptr [rbp - 0x74], 1
	jne	.label_536
	lea	rsi, [rsi]
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x150]
	movsxd	rsi, dword ptr [rbp - 0xcc]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rsi, [rsi]
	add	ecx, r9d
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_539
	lea	rsi, [rsi]
	jmp	.label_506
.label_536:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_506
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x150]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_506
.label_539:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	ecx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	ecx, 0x10
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_503
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_503
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	jge	.label_503
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_527
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x1c0]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	qword ptr [rbp - 0x1c0], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	call	memcpy
.label_527:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], 1
.label_503:
	jmp	.label_506
.label_506:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rax
.label_513:
	mov	rsp, rsp
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	nop	
	mov	esi, edx
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	cmp	rax, 0
	jne	.label_513
	lea	rdi, [rdi]
	jmp	.label_501
.label_501:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_545
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rbp - 0x1c0]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x1c0], rax
.label_545:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 0x80
	nop	
	cmp	eax, 0
	je	.label_500
	cmp	dword ptr [rbp - 0x14c], 0
	jge	.label_507
	nop	
	mov	dword ptr [rbp - 0x14c], 0
	mov	qword ptr [rbp - 0xa8], 1
.label_520:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jae	.label_510
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	cmp	eax, dword ptr [rbp - 0x140]
	mov	rsp, rsp
	jne	.label_525
	lea	rsi, [rsi]
	jmp	.label_510
.label_525:
	jmp	.label_533
.label_533:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_520
.label_510:
	lea	rsi, [rsi]
	jmp	.label_507
.label_507:
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	or	eax, ecx
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_543
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x40
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_543
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
.label_543:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_499
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x20
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_502
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 1
	lea	rdi, [rdi]
	jne	.label_502
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	jmp	.label_514
.label_502:
	movsxd	rax, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
.label_514:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rdx], cl
.label_499:
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x100
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_549
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_537
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_537
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x69
.label_537:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x42
.label_549:
	jmp	.label_500
.label_500:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x1c0]
	add	rsp, 0x1f0
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a210

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	fld	xword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rdi, [rdi]
	je	.label_551
	nop	
	fld	xword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rip + label_555]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_551
	jmp	.label_552
.label_552:
	xor	eax, eax
	nop	
	mov	cl, al
	fld	xword ptr [rbp - 0x30]
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_553]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rbp - 2]
	mov	dx, word ptr [rbp - 2]
	mov	word ptr [rbp - 2], 0xc7f
	fldcw	word ptr [rbp - 2]
	mov	word ptr [rbp - 2], dx
	fistp	qword ptr [rbp - 0x48]
	fldcw	word ptr [rbp - 2]
	mov	rbp, rbp
	fnstcw	word ptr [rbp - 0x5a]
	nop	
	mov	dx, word ptr [rbp - 0x5a]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x5a], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x5a]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x5a], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x5a]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movabs	rdi, 0x8000000000000000
	nop	
	xor	rsi, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x58], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x39], cl
	nop	
	jne	.label_554
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	nop	
	movzx	edx, cl
	mov	eax, edx
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [+ (rax * 4) + label_540]]
	nop	
	fild	qword ptr [rbp - 0x18]
	faddp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x30]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	setp	cl
	lea	rdi, [rdi]
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x39], sil
.label_554:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	setns	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	nop	
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_540]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x30]
.label_551:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a3a0

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x90
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_557:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x81], cl
	cmp	byte ptr [rbp - 0x81], 0
	je	.label_556
	movzx	eax, byte ptr [rbp - 0x81]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jge	.label_561
	movzx	eax, byte ptr [rbp - 0x81]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	jmp	.label_560
.label_561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
.label_560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_556:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_558
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_558:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x50]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	jne	.label_559
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_559:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	nop	
	jmp	.label_557
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a570
	.globl human_options
	.type human_options, @function
human_options:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	humblock
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rdx], 0
	jne	.label_562
	call	default_block_size
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 4
.label_562:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5f0

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_568
	movabs	rdi, OFFSET FLAT:.str.4_0
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_568
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	rax, 0
	jne	.label_568
	lea	rdi, [rdi]
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_563
.label_568:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_577
	mov	eax, dword ptr [rbp - 0x24]
	or	eax, 4
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
.label_577:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	argmatch
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r9d
	nop	
	cmp	r8d, r9d
	lea	rdi, [rdi]
	jg	.label_569
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_575
.label_569:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	xstrtoumax
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	je	.label_565
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x38], ecx
	nop	
	jmp	.label_570
.label_565:
	jmp	.label_567
.label_567:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	jg	.label_576
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_576:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_574
	lea	rdi, [rdi]
	jmp	.label_564
.label_574:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_566
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	jne	.label_571
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x24], eax
.label_571:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x42
	jne	.label_578
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x69
	lea	rsi, [rsi]
	jne	.label_572
.label_578:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
.label_572:
	jmp	.label_564
.label_566:
	mov	rsp, rsp
	jmp	.label_573
.label_573:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_567
.label_564:
	jmp	.label_575
.label_575:
	jmp	.label_563
.label_563:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 0x38], 0
.label_570:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8b0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.9_0
	nop	
	call	getenv
	mov	ecx, 0x400
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmp	rax, 0
	lea	rsi, [rsi]
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a8f0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1f0
	test	al, al
	movaps	xmmword ptr [rbp - 0x180], xmm7
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmmword ptr [rbp - 0x40], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1e0], xmm1
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	dword ptr [rbp - 0x94], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], r9
	mov	qword ptr [rbp - 0x1e8], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rdx
	mov	qword ptr [rbp - 0x70], rsi
	je	.label_580
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x130], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1e0]
	movaps	xmmword ptr [rbp - 0x120], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0x110], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x40]
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xf0], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xe0], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x60]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xd0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xc0], xmm7
.label_580:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1e8]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	r8d, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x1c8], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x1cc], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_579
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_4
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 8]
	call	getopt_long
	mov	dword ptr [rbp - 0x16c], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_579
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x16c]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x98], ecx
	je	.label_581
	jmp	.label_582
.label_582:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	je	.label_585
	mov	rbp, rbp
	jmp	.label_584
.label_581:
	xor	edi, edi
	call	qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jmp	.label_583
.label_585:
	lea	rax, [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdx, [rbp - 0x160]
	nop	
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 0x30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, rax
	call	version_etc_va
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_584:
	mov	rsp, rsp
	jmp	.label_583
.label_583:
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1f0
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x210
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x60], xmm7
	movaps	xmmword ptr [rbp - 0x140], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x40], xmm4
	movaps	xmmword ptr [rbp - 0x200], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x1c0], xmm1
	movaps	xmmword ptr [rbp - 0x220], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x124], edi
	mov	dword ptr [rbp - 0x1cc], r9d
	mov	qword ptr [rbp - 0x228], r8
	mov	qword ptr [rbp - 0x190], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_590
	movaps	xmm0, xmmword ptr [rbp - 0x220]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0xe0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xd0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x200]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xc0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x40]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm4
	nop	
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xa0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x90], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x80], xmm7
.label_590:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x190]
	mov	r8, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x124]
	lea	rsi, [rsi]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	mov	rsp, rsp
	movabs	r15, OFFSET FLAT:.str_4
	mov	rbp, rbp
	movabs	r12, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], r10d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], r9
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x1e0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x185], cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x1a8], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x185]
	test	cl, 1
	lea	rsi, [rsi]
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x1c8], r15
	mov	edi, dword ptr [rbp - 0x1ec]
	nop	
	mov	rsi, qword ptr [rbp - 0x1e8]
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], eax
	cmp	eax, -1
	je	.label_588
	mov	eax, dword ptr [rbp - 0x184]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x204], eax
	mov	dword ptr [rbp - 0x1a4], ecx
	je	.label_591
	jmp	.label_592
.label_592:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x204]
	nop	
	sub	eax, 0x76
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x144], eax
	je	.label_587
	nop	
	jmp	.label_586
.label_591:
	xor	edi, edi
	call	qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	jmp	.label_589
.label_587:
	nop	
	lea	rax, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x120]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rbp, rbp
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rcx], 0x30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_586:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_589:
	lea	rdi, [rdi]
	jmp	.label_588
.label_588:
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	add	rsp, 0x210
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aea0

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
	jne	.label_593
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_593:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_595
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_596
.label_595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_596:
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
	jl	.label_594
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
	jne	.label_594
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
	jne	.label_597
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_597:
	jmp	.label_594
.label_594:
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
	#Procedure 0x40b020
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
	je	.label_598
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_599
.label_598:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_599
.label_599:
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
	#Procedure 0x40b0d0
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
	je	.label_600
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_601
.label_600:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_601
.label_601:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b130
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
	je	.label_602
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_603
.label_602:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b190

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
	je	.label_604
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_605
.label_604:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_605
.label_605:
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
	#Procedure 0x40b290
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
	jne	.label_606
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_606:
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
	#Procedure 0x40b2f0

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
	jne	.label_607
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_607:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_609
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_608
.label_609:
	call	abort
.label_608:
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
	#Procedure 0x40b390
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
	je	.label_610
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_611
.label_610:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_611
.label_611:
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
	#Procedure 0x40b490

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
.label_693:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_699
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_709]]
	jmp	rcx
.label_1195:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1194:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_728
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_728
.label_728:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_660
.label_1196:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_660
.label_1197:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_744
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
.label_744:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_755
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_773:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_761
	jmp	.label_664
.label_664:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_764
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_764:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_640
.label_640:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_773
.label_761:
	mov	rbp, rbp
	jmp	.label_755
.label_755:
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
	jmp	.label_660
.label_1192:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1191:
	mov	byte ptr [rbp - 0x3e], 1
.label_1193:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_790
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_790:
	jmp	.label_793
.label_793:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_794
	jmp	.label_797
.label_797:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_614
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_614:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_794
.label_794:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_660
.label_1190:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_660
.label_699:
	call	abort
.label_660:
	mov	qword ptr [rbp - 0xd8], 0
.label_628:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_621
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
	jmp	.label_624
.label_621:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_624:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_646
	mov	rbp, rbp
	jmp	.label_657
.label_646:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_632
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_632
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_632
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_674
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_674
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_689
.label_674:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_689:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_632
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
	jne	.label_632
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_714
	jmp	.label_615
.label_714:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_632:
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
	ja	.label_720
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_731]]
	nop	
	jmp	rcx
.label_1214:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_734
	mov	rsp, rsp
	jmp	.label_739
.label_739:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_741
	jmp	.label_615
.label_741:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_742
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_742
	nop	
	jmp	.label_746
.label_746:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_749
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_749:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_756
.label_756:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_759
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_759:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_765
.label_765:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_769
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_769:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_742:
	lea	rsi, [rsi]
	jmp	.label_776
.label_776:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_777
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_777:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_810
.label_810:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_644
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_644
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_644
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_644
	nop	
	jmp	.label_803
.label_803:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_805
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_805:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_812
.label_812:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_623
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_623:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_644
.label_644:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_629
.label_734:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_633
	mov	rbp, rbp
	jmp	.label_625
.label_633:
	jmp	.label_629
.label_629:
	jmp	.label_626
.label_1225:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_643
	mov	rbp, rbp
	jmp	.label_653
.label_653:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_655
	jmp	.label_662
.label_643:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_663
	jmp	.label_615
.label_663:
	jmp	.label_667
.label_655:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_673
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_673
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_673
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
	je	.label_695
	nop	
	jmp	.label_635
.label_635:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_695
	jmp	.label_701
.label_701:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_695
	jmp	.label_723
.label_723:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_695
	jmp	.label_716
.label_716:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_682
	jmp	.label_695
.label_695:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_725
	jmp	.label_615
.label_725:
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
	jae	.label_729
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_729:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_745
.label_745:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_751
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_751:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_752
.label_752:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_806
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_806:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_710
.label_710:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_687
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_687:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_757
.label_682:
	jmp	.label_757
.label_757:
	jmp	.label_673
.label_673:
	jmp	.label_667
.label_662:
	jmp	.label_667
.label_667:
	jmp	.label_626
.label_1215:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_617
.label_1216:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_617
.label_1220:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_617
.label_1218:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_656
.label_1221:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_656
.label_1217:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_656
.label_1219:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_617
.label_1226:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_702
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_795
	nop	
	jmp	.label_615
.label_795:
	lea	rsi, [rsi]
	jmp	.label_711
.label_702:
	test	byte ptr [rbp - 0x89], 1
	je	.label_762
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_762
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_762
	jmp	.label_711
.label_762:
	jmp	.label_656
.label_656:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_612
	test	byte ptr [rbp - 0x3e], 1
	je	.label_612
	jmp	.label_615
.label_612:
	mov	rsp, rsp
	jmp	.label_617
.label_617:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_620
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_622
.label_620:
	jmp	.label_626
.label_1227:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_630
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_634
	jmp	.label_642
.label_630:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_634
.label_642:
	nop	
	jmp	.label_626
.label_634:
	jmp	.label_647
.label_647:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_789
	lea	rsi, [rsi]
	jmp	.label_626
.label_789:
	nop	
	jmp	.label_658
.label_658:
	mov	byte ptr [rbp - 0x91], 1
.label_1222:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_661
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_661
	jmp	.label_615
.label_661:
	lea	rsi, [rsi]
	jmp	.label_626
.label_1224:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_669
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_654
	jmp	.label_615
.label_654:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_681
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_681
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_681:
	jmp	.label_690
.label_690:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_691
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_691:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_698
.label_698:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_705
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_705:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_715
.label_715:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_719
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_719:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_669:
	lea	rsi, [rsi]
	jmp	.label_626
.label_1223:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_626
.label_720:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_735
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
	jmp	.label_696
.label_735:
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
	jne	.label_758
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_758:
	jmp	.label_708
.label_708:
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
	jne	.label_775
	jmp	.label_781
.label_775:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_779
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_781
.label_779:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_784
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_801:
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
	jae	.label_786
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_786:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_798
	jmp	.label_799
.label_798:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_801
.label_799:
	jmp	.label_781
.label_784:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_672
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_672
	mov	qword ptr [rbp - 0xe8], 1
.label_666:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_613
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
	jb	.label_618
	jmp	.label_638
.label_638:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_618
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_618
	jmp	.label_804
.label_804:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_811
	mov	rsp, rsp
	jmp	.label_618
.label_618:
	mov	rsp, rsp
	jmp	.label_615
.label_811:
	jmp	.label_665
.label_665:
	mov	rsp, rsp
	jmp	.label_668
.label_668:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_666
.label_613:
	mov	rbp, rbp
	jmp	.label_672
.label_672:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_678
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_678:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_680
.label_680:
	lea	rsi, [rsi]
	jmp	.label_684
.label_684:
	jmp	.label_686
.label_686:
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
	jne	.label_708
.label_781:
	jmp	.label_696
.label_696:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_697
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_707
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_707
.label_697:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_683:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_721
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_721
	jmp	.label_726
.label_726:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_727
	jmp	.label_615
.label_727:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_650
	test	byte ptr [rbp - 0x42], 1
	jne	.label_650
	lea	rdi, [rdi]
	jmp	.label_736
.label_736:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_677
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_677:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_724
.label_724:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_747:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_753
.label_753:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_800
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_800:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_650:
	jmp	.label_766
.label_766:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_767:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_737
.label_737:
	jmp	.label_772
.label_772:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_774
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
.label_774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_783
.label_783:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_787
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
.label_787:
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
	jmp	.label_619
.label_721:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_802
	lea	rdi, [rdi]
	jmp	.label_807
.label_807:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_809
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_809:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_802:
	nop	
	jmp	.label_619
.label_619:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_679
	jmp	.label_627
.label_679:
	lea	rsi, [rsi]
	jmp	.label_631
.label_631:
	test	byte ptr [rbp - 0x42], 1
	je	.label_636
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_636
	lea	rsi, [rsi]
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_641
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_641:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_652
.label_652:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_659
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_659:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_636:
	nop	
	jmp	.label_671
.label_671:
	mov	rsp, rsp
	jmp	.label_717
.label_717:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_676
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_676:
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
	jmp	.label_683
.label_627:
	mov	rsp, rsp
	jmp	.label_711
.label_707:
	lea	rsi, [rsi]
	jmp	.label_626
.label_626:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_670
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_703
.label_670:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_706
.label_703:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_706
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
	jne	.label_712
.label_706:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_712
	mov	rsp, rsp
	jmp	.label_711
.label_712:
	nop	
	jmp	.label_622
.label_622:
	jmp	.label_732
.label_732:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_733
	jmp	.label_615
.label_733:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_738
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_738
	lea	rdi, [rdi]
	jmp	.label_743
.label_743:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_694
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_694:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_754
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_754:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_760
.label_760:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_763
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_763:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_738:
	jmp	.label_770
.label_770:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_771
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_771:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_778
.label_778:
	nop	
	jmp	.label_711
.label_711:
	jmp	.label_780
.label_780:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_782
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_782
	lea	rdi, [rdi]
	jmp	.label_785
.label_785:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_788
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_788:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_792
.label_792:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_796
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_796:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_782:
	jmp	.label_808
.label_808:
	nop	
	jmp	.label_791
.label_791:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_675
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_675:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_616
	mov	byte ptr [rbp - 0xb7], 0
.label_616:
	mov	rbp, rbp
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_628
.label_657:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_637
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_637
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_637
	nop	
	jmp	.label_615
.label_637:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_649
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_649
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_649
	test	byte ptr [rbp - 0xb7], 1
	je	.label_648
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
	jmp	.label_685
.label_648:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_688
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_688
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_693
.label_688:
	jmp	.label_700
.label_700:
	mov	rbp, rbp
	jmp	.label_649
.label_649:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_704
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_704
	mov	rbp, rbp
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_713
	lea	rdi, [rdi]
	jmp	.label_692
.label_692:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_718
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_718:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_651
.label_713:
	jmp	.label_704
.label_704:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_740
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_740:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_685
.label_615:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_748
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_748
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_748:
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
.label_685:
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
	#Procedure 0x40cf30
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
	#Procedure 0x40cfa0

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
	je	.label_813
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_814
.label_813:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_814
.label_814:
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
	je	.label_815
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_815:
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
	#Procedure 0x40d170
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
.label_820:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_819
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
	jmp	.label_820
.label_819:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_818
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_816]],  rax
.label_818:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_817
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_817:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d280

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
	#Procedure 0x40d2d0

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
	jge	.label_827
	call	abort
.label_827:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_822
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
	jge	.label_823
	call	xalloc_die
.label_823:
	test	byte ptr [rbp - 0x51], 1
	je	.label_824
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_828
.label_824:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_828:
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
	je	.label_826
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_816]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_826:
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
.label_822:
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
	ja	.label_825
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
	je	.label_821
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_821:
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
.label_825:
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
	#Procedure 0x40d600

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
	#Procedure 0x40d640
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
	#Procedure 0x40d670
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
	#Procedure 0x40d6b0

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
	#Procedure 0x40d710

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
	jne	.label_829
	call	abort
.label_829:
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
	#Procedure 0x40d7b0

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
	#Procedure 0x40d820

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
	#Procedure 0x40d860
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
	#Procedure 0x40d8a0

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
	#Procedure 0x40d950

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
	#Procedure 0x40d990

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
	#Procedure 0x40d9c0
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
	#Procedure 0x40da00

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
	#Procedure 0x40dae0

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
	#Procedure 0x40db30

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
	#Procedure 0x40dbd0
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
	#Procedure 0x40dc20
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
	#Procedure 0x40dc80

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
	#Procedure 0x40dcc0
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
	#Procedure 0x40dd00

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
	#Procedure 0x40dd40

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
	#Procedure 0x40dd80

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
	je	.label_833
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_832
.label_833:
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
	jne	.label_831
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
	jmp	.label_832
.label_831:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_830
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_832
.label_830:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_832:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dec0

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, eax
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x10], rcx
	mov	ecx, eax
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	call	verror_at_line
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df20

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x2c], edi
	mov	dword ptr [rbp - 0x28], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	xvasprintf
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_836
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_834
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error_at_line
	jmp	.label_837
.label_834:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_837:
	jmp	.label_835
.label_836:
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	call	abort
.label_835:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e020

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
	je	.label_842
	movabs	rsi, OFFSET FLAT:.str_6
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
	jmp	.label_840
.label_842:
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
.label_840:
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
	ja	.label_841
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_838]]
	jmp	rcx
.label_1203:
	jmp	.label_839
.label_1204:
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
	jmp	.label_839
.label_1205:
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
	jmp	.label_839
.label_1206:
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
	jmp	.label_839
.label_1207:
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
	jmp	.label_839
.label_1208:
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
	jmp	.label_839
.label_1209:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_839
.label_1210:
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
	jmp	.label_839
.label_1211:
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
	jmp	.label_839
.label_1212:
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
	jmp	.label_839
.label_841:
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
.label_839:
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
	#Procedure 0x40e860
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
.label_843:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_844
	mov	rbp, rbp
	jmp	.label_845
.label_845:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_843
.label_844:
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
	#Procedure 0x40e910

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
.label_850:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_846
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_852
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
	jmp	.label_851
.label_852:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_851:
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
.label_846:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_849
	mov	rsp, rsp
	jmp	.label_847
.label_849:
	jmp	.label_848
.label_848:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_850
.label_847:
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
	#Procedure 0x40ea70
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
	je	.label_853
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
.label_853:
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
	#Procedure 0x40ec30
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
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	#Procedure 0x40ece0
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
	jae	.label_854
	mov	rbp, rbp
	call	xalloc_die
.label_854:
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
	#Procedure 0x40ed40

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
	jne	.label_855
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_855
	lea	rdi, [rdi]
	call	xalloc_die
.label_855:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eda0
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
	jae	.label_856
	mov	rsp, rsp
	call	xalloc_die
.label_856:
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
	#Procedure 0x40ee20

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
	jne	.label_857
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_857
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_859
.label_857:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_858
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_858
	lea	rsi, [rsi]
	call	xalloc_die
.label_858:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_859:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eed0

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
	jne	.label_860
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_862
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
.label_862:
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
	jae	.label_864
	call	xalloc_die
.label_864:
	lea	rsi, [rsi]
	jmp	.label_863
.label_860:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_861
	call	xalloc_die
.label_861:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_863:
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
	#Procedure 0x40f000

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
	#Procedure 0x40f030
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
	#Procedure 0x40f070
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
	#Procedure 0x40f0c0
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
	jb	.label_865
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_866
.label_865:
	lea	rsi, [rsi]
	call	xalloc_die
.label_866:
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
	#Procedure 0x40f130

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
	#Procedure 0x40f180
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
	#Procedure 0x40f1e0

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
	movabs	rdx, OFFSET FLAT:.str_2
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
	#Procedure 0x40f240

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_906
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_906
	jmp	.label_910
.label_906:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_910:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_901
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_887
.label_901:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_887
.label_887:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_894:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_885
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_894
.label_885:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_907
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_870
.label_907:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_922
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_903
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_903
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_903
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_916
.label_903:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_870
.label_916:
	lea	rdi, [rdi]
	jmp	.label_898
.label_922:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_904
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_893
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_870
.label_893:
	mov	dword ptr [rbp - 0x60], 1
.label_904:
	jmp	.label_898
.label_898:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_915
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_870
.label_915:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_908
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_882
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_870
.label_882:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_867
	jmp	.label_913
.label_913:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_867
	nop	
	jmp	.label_917
.label_917:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_867
	nop	
	jmp	.label_926
.label_926:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_867
	lea	rsi, [rsi]
	jmp	.label_932
.label_932:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_867
	jmp	.label_875
.label_875:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_867
	jmp	.label_881
.label_881:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_867
	mov	rsp, rsp
	jmp	.label_891
.label_891:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_867
	jmp	.label_931
.label_931:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_867
	mov	rsp, rsp
	jmp	.label_912
.label_912:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_867
	jmp	.label_918
.label_918:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_911
	jmp	.label_867
.label_867:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_900
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_880
	lea	rsi, [rsi]
	jmp	.label_878
.label_878:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_880
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_889
	lea	rsi, [rsi]
	jmp	.label_896
.label_896:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_899
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_899:
	jmp	.label_889
.label_880:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_889:
	jmp	.label_900
.label_900:
	nop	
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_921
	jmp	.label_929
.label_929:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_930
	jmp	.label_869
.label_869:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_871
	jmp	.label_876
.label_876:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_877
	nop	
	jmp	.label_884
.label_884:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_886
	nop	
	jmp	.label_892
.label_892:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_895
	mov	rsp, rsp
	jmp	.label_928
.label_928:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_872
	jmp	.label_909
.label_909:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_879
	mov	rbp, rbp
	jmp	.label_919
.label_919:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_914
	jmp	.label_923
.label_923:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_925
	jmp	.label_905
.label_905:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_924
	jmp	.label_873
.label_873:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_871
	jmp	.label_874
.label_874:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_877
	jmp	.label_890
.label_890:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_886
	jmp	.label_927
.label_927:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_872
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_897
	jmp	.label_902
.label_925:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_921:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_924:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_868
.label_930:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_871:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_877:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_886:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_895:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_868
.label_872:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_868
.label_897:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_879:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_914:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_868
.label_902:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_870
.label_868:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_883
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_883:
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_870:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fbd0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_933
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_934
.label_933:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_934:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fc50

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_935:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_936
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_935
.label_936:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fcd0

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
.label_941:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_943
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xstrcat
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_938
.label_943:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	je	.label_940
	mov	rbp, rbp
	jmp	.label_937
.label_940:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_939
	mov	rsp, rsp
	jmp	.label_937
.label_939:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_941
.label_937:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	call	vasprintf
	cmp	eax, 0
	jge	.label_942
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_944
	lea	rdi, [rdi]
	call	xalloc_die
.label_944:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_938
.label_942:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_938:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe00

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi]
	nop	
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x78], rax
.label_947:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	jbe	.label_953
	lea	rax, [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	ja	.label_950
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	eax, 8
	mov	rsp, rsp
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_945
.label_950:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x18], rdx
.label_945:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, rax
	call	xsum
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_947
.label_953:
	lea	rax, [rbp - 0x30]
	cmp	qword ptr [rbp - 0x70], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	je	.label_954
	nop	
	cmp	qword ptr [rbp - 0x70], 0x7fffffff
	jbe	.label_946
.label_954:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	jmp	.label_949
.label_946:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x78], rax
.label_951:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jbe	.label_952
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_955
	mov	eax, dword ptr [rbp - 0x64]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	jmp	.label_948
.label_955:
	mov	rax, qword ptr [rbp - 0x80]
.label_1149:
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rcx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_948:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_951
.label_952:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
.label_949:
	mov	rax, qword ptr [rbp - 0x98]
	add	rsp, 0xb0
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4100b0

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
	jge	.label_960
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_958
.label_960:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_957
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
	je	.label_956
.label_957:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_956
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_956:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_959
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
.label_959:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_958:
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
	#Procedure 0x4101d0

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
	je	.label_981
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
.label_981:
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
	je	.label_983
	nop	
	jmp	.label_962
.label_962:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_964
	jmp	.label_971
.label_983:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_972
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
	jmp	.label_980
.label_972:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_980:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_965
.label_964:
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
	ja	.label_979
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
	jmp	.label_990
.label_979:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_990:
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
	jmp	.label_965
.label_971:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_973
	nop	
	jmp	.label_961
.label_961:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_963
	jmp	.label_969
.label_969:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_973
	nop	
	jmp	.label_977
.label_977:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_963
	nop	
	jmp	.label_982
.label_982:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_973
	lea	rsi, [rsi]
	jmp	.label_989
.label_989:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_973
	lea	rsi, [rsi]
	jmp	.label_966
.label_966:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_963
	mov	rsp, rsp
	jmp	.label_975
.label_975:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_973
	jmp	.label_986
.label_986:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_963
	lea	rsi, [rsi]
	jmp	.label_987
.label_987:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_973
	jmp	.label_970
.label_970:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_963
	mov	rsp, rsp
	jmp	.label_978
.label_978:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_973
	lea	rsi, [rsi]
	jmp	.label_967
.label_967:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_973
	nop	
	jmp	.label_985
.label_985:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_988
	lea	rdi, [rdi]
	jmp	.label_963
.label_963:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_968
.label_973:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_974
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
	jmp	.label_991
.label_974:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_991:
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
	jmp	.label_968
.label_988:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_984
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
	jmp	.label_976
.label_984:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_976:
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
.label_968:
	jmp	.label_965
.label_965:
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
	#Procedure 0x410830

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
	#Procedure 0x410880

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
	jg	.label_992
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
	jle	.label_999
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_994
.label_999:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_996
.label_994:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1000
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1000:
	mov	rbp, rbp
	jmp	.label_996
.label_996:
	jmp	.label_997
.label_992:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_997:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_993
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_993
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_998
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
	jne	.label_995
.label_998:
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
.label_995:
	jmp	.label_993
.label_993:
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
	#Procedure 0x410a00

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
	je	.label_1001
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1002
.label_1001:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1003
.label_1002:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1003:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410a70

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
	je	.label_1004
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
.label_1004:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ad0

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
	jne	.label_1005
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1005
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1005
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
	jne	.label_1007
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1006
.label_1007:
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
	jmp	.label_1006
.label_1005:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1006:
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
	#Procedure 0x410be0

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
	jne	.label_1008
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_1008:
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
	ja	.label_1009
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1009
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1009
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
	jmp	.label_1010
.label_1009:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1010:
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
	#Procedure 0x410cd0

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
	.align	32
	#Procedure 0x410cf0

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
.label_1015:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1011
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
	jne	.label_1012
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_1016
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1018
.label_1016:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1021
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1013
.label_1021:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1017
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
	je	.label_1019
.label_1017:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_1019:
	lea	rsi, [rsi]
	jmp	.label_1013
.label_1013:
	mov	rbp, rbp
	jmp	.label_1022
.label_1022:
	mov	rsp, rsp
	jmp	.label_1012
.label_1012:
	nop	
	jmp	.label_1014
.label_1014:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_1015
.label_1011:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1020
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_1018
.label_1020:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1018:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410ea0

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
	jne	.label_1023
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_1024
.label_1023:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_1024:
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
	.align	32
	#Procedure 0x410f80

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_3
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
.label_1027:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1029
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1028
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
	je	.label_1026
.label_1028:
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
	movabs	rsi, OFFSET FLAT:.str.3_2
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
	jmp	.label_1030
.label_1026:
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
	movabs	rsi, OFFSET FLAT:.str.4_2
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_1030:
	jmp	.label_1025
.label_1025:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1027
.label_1029:
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
	.align	32
	#Procedure 0x411130
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
	jl	.label_1031
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1032
.label_1031:
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
.label_1032:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4111f0
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
.label_1035:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1037
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
	jne	.label_1034
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1033
.label_1034:
	lea	rdi, [rdi]
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1035
.label_1037:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1033:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4112c0

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
	jne	.label_1038
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1041
.label_1038:
	mov	rbp, rbp
	jmp	.label_1039
.label_1039:
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
	jne	.label_1040
	jmp	.label_1042
.label_1040:
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
	je	.label_1039
.label_1042:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1041:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113b0

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
	je	.label_1044
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_9
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1045
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1043
.label_1045:
	mov	byte ptr [rbp - 0xd], 0
.label_1043:
	jmp	.label_1044
.label_1044:
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
	#Procedure 0x411450

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
	jne	.label_1047
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1047:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1046
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1046:
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
	#Procedure 0x4114d0

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jb	.label_1048
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1049
.label_1048:
	mov	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1049
.label_1049:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411540
	.globl xsum3
	.type xsum3, @function
xsum3:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	xsum
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	xsum
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411590
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4115f0
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jb	.label_1051
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1050
.label_1051:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1050:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411640

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
	ja	.label_1052
	jmp	.label_1054
.label_1054:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1053
.label_1052:
	lea	rsi, [rsi]
	jmp	.label_1053
.label_1053:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116a0
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
	jb	.label_1055
	jmp	.label_1056
.label_1056:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_1055
	nop	
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_1059
	jmp	.label_1055
.label_1055:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_1058
.label_1059:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_1058:
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
	#Procedure 0x411730
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
	jb	.label_1060
	nop	
	jmp	.label_1061
.label_1061:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_1062
	lea	rdi, [rdi]
	jmp	.label_1060
.label_1060:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1063
.label_1062:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_1063:
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
	#Procedure 0x4117b0
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
	ja	.label_1064
	mov	rsp, rsp
	jmp	.label_1066
.label_1066:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1065
.label_1064:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_1065:
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
	#Procedure 0x411800
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
	je	.label_1067
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1067:
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
	#Procedure 0x411850
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
	jb	.label_1068
	nop	
	jmp	.label_1069
.label_1069:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_1070
	lea	rsi, [rsi]
	jmp	.label_1068
.label_1068:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1071
.label_1070:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_1071:
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
	#Procedure 0x4118c0
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
	ja	.label_1073
	jmp	.label_1074
.label_1074:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_1072
.label_1073:
	mov	byte ptr [rbp - 5], 0
.label_1072:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411910
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
	ja	.label_1075
	lea	rsi, [rsi]
	jmp	.label_1076
.label_1076:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1077
.label_1075:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_1077:
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
	#Procedure 0x411960
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
	ja	.label_1078
	jmp	.label_1079
.label_1079:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1080
.label_1078:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1080:
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
	#Procedure 0x4119b0
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
	ja	.label_1081
	jmp	.label_1083
.label_1083:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1082
.label_1081:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1082:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a00
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
	jb	.label_1085
	jmp	.label_1086
.label_1086:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_1085
	nop	
	jmp	.label_1089
.label_1089:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1085
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_1084
	mov	rsp, rsp
	jmp	.label_1085
.label_1085:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1088
.label_1084:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1088:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ab0
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
	jb	.label_1090
	mov	rbp, rbp
	jmp	.label_1091
.label_1091:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_1093
	mov	rsp, rsp
	jmp	.label_1090
.label_1090:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1092
.label_1093:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1092:
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
	#Procedure 0x411b20
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
	ja	.label_1094
	jmp	.label_1096
.label_1096:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_1095
.label_1094:
	mov	byte ptr [rbp - 5], 0
.label_1095:
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
	#Procedure 0x411b70
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
	jb	.label_1097
	lea	rdi, [rdi]
	jmp	.label_1101
.label_1101:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_1097
	jmp	.label_1098
.label_1098:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1100
	jmp	.label_1097
.label_1097:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1099
.label_1100:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_1099:
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
	#Procedure 0x411c00

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
	ja	.label_1102
	jmp	.label_1103
.label_1103:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1104
.label_1102:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_1104:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c50
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
	ja	.label_1105
	mov	rbp, rbp
	jmp	.label_1106
.label_1106:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1107
.label_1105:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1107:
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
	.section .text
	.align	32
	#Procedure 0x411d60

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
