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
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
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
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x54], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x68], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x70], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
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
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_12
	jmp	.label_14
.label_12:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_16
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	eax, 3
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
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
	sub	rsp, 0x1c0
	mov	dword ptr [rbp - 0x24], 0
	nop	
	mov	dword ptr [rbp - 0x28], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	call	install_signal_handlers
	mov	rsi, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0xf8], rax
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:maybe_close_stdout
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	call	atexit
	mov	dword ptr [rbp - 0x10c], eax
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
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	r14, qword ptr [rbp - 0x30]
	mov	r15,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rdi
	mov	edi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, r14
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], r8
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	qword ptr [rsp], r14
	mov	r15, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r15
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 0x10], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], 0
	mov	al, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rbx
	mov	rbp, rbp
	call	parse_gnu_standard_options_only
	mov	byte ptr [byte ptr [close_stdout_required]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], 0
.label_33:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0x100
	jge	.label_32
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x34]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_33
.label_32:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
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
	jmp	.label_18
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
	mov	dword ptr [rbp - 0x134], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [input_file]]
	nop	
	mov	qword ptr [rbp - 0x140], rax
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x134]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_25:
	mov	rsp, rsp
	jmp	.label_18
.label_18:
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
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	rsi, qword ptr [rbp - 0x40]
	setle	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [input_seekable]],  cl
	cmp	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	jle	.label_39
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rsp, rsp
	jmp	.label_21
.label_39:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x148], rax
.label_21:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [word ptr [input_offset]],  rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [dword ptr [input_seek_errno]],  ecx
	nop	
	cmp	qword ptr [word ptr [output_file]],  0
	jne	.label_29
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
	jmp	.label_31
.label_29:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, 0x80
	mov	esi, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], 0x1b6
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
	mov	dword ptr [rbp - 0x14c], edi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x14d], al
	lea	rsi, [rsi]
	jne	.label_34
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x14d], cl
.label_34:
	mov	al, byte ptr [rbp - 0x14d]
	mov	ecx, 0x200
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	cmovne	ecx, edx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	or	edx, ecx
	mov	dword ptr [rbp - 0x48], edx
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [seek_records]],  0
	lea	rdi, [rdi]
	je	.label_22
	mov	rbp, rbp
	mov	edi, 1
	nop	
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	or	eax, 2
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_35
.label_22:
	mov	edi, 1
	nop	
	mov	rsi,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	eax, 1
	mov	ecx, dword ptr [rbp - 0x44]
	nop	
	mov	edx, eax
	call	ifd_reopen
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_35
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_35:
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_23
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rsp, rsp
	and	eax, 0x200
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_23
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [seek_records]]
	imul	rcx,  qword ptr [word ptr [output_blocksize]]
	add	rcx,  qword ptr [word ptr [seek_bytes]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	xor	edx, edx
	div	qword ptr [word ptr [output_blocksize]]
	nop	
	cmp	rax,  qword ptr [word ptr [seek_records]]
	jae	.label_28
	nop	
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [seek_records]]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_28:
	mov	rsp, rsp
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x50]
	call	iftruncate
	cmp	eax, 0
	je	.label_17
	mov	rsp, rsp
	call	__errno_location
	mov	edi, 1
	lea	rsi, [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_24
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x164], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x164]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x170]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_24:
	mov	eax, dword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_36
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_36
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xd8]
	cmp	eax, 0
	je	.label_41
.label_36:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.37
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x174], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], rcx
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x188]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_41:
	lea	rdi, [rdi]
	jmp	.label_17
.label_17:
	nop	
	jmp	.label_23
.label_23:
	lea	rdi, [rdi]
	jmp	.label_31
.label_31:
	call	gethrxtime
	mov	qword ptr [word ptr [start_time]],  rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [start_time]]
	add	rax, 0x3b9aca00
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [next_time]],  rax
	call	dd_copy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_37
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_37
	nop	
	test	byte ptr [byte ptr [i_nocache]],  1
	lea	rdi, [rdi]
	je	.label_42
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_42
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x198], rax
	mov	rbp, rbp
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	nl_error
	mov	dword ptr [rbp - 0x38], 1
.label_42:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_30
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	call	invalidate_cache
	test	al, 1
	jne	.label_30
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.38
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x19c], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [output_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x19c]
	mov	rdx, qword ptr [rbp - 0x1a8]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x38], 1
.label_30:
	mov	rsp, rsp
	jmp	.label_19
.label_37:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [i_nocache]],  1
	jne	.label_40
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [i_nocache_eof]],  1
	je	.label_20
.label_40:
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, eax
	call	invalidate_cache
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a9], al
.label_20:
	mov	rsp, rsp
	test	byte ptr [byte ptr [o_nocache]],  1
	lea	rsi, [rsi]
	jne	.label_26
	mov	rsp, rsp
	test	byte ptr [byte ptr [o_nocache_eof]],  1
	lea	rsi, [rsi]
	je	.label_27
.label_26:
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	call	invalidate_cache
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1aa], al
.label_27:
	jmp	.label_19
.label_19:
	call	finish_up
	nop	
	mov	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x1c0
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
	.section	.text
	.align	32
	#Procedure 0x402dc0

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
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	call	sigemptyset
	test	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsp, rsp
	je	.label_44
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rsp, rsp
	call	sigaddset
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], eax
.label_44:
	mov	rsp, rsp
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	nop	
	lea	rdx, [rbp - 0xa0]
	mov	rbp, rbp
	call	sigaction
	mov	edi, 1
	mov	edx, edi
	cmp	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	je	.label_46
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:caught_signals
	lea	rsi, [rsi]
	mov	esi, 2
	lea	rsi, [rsi]
	call	sigaddset
	nop	
	mov	dword ptr [rbp - 0xb0], eax
.label_46:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edx, 0x80
	lea	rdi, [rbp - 0xa0]
	add	rdi, 8
	mov	dword ptr [rbp - 0xb4], esi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rsp, rsp
	call	sigismember
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_45
	nop	
	mov	edi, 0xa
	lea	rsi, [rbp - 0xa0]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:siginfo_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0
	call	sigaction
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
.label_45:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	mov	esi, 2
	nop	
	call	sigismember
	cmp	eax, 0
	je	.label_43
	mov	edi, 2
	lea	rsi, [rbp - 0xa0]
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:interrupt_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0xc0000000
	lea	rdi, [rdi]
	call	sigaction
	nop	
	mov	dword ptr [rbp - 0xc8], eax
.label_43:
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
	sub	rsp, 0xc0
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], -1
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	qword ptr [rbp - 0x30], 0
	mov	edi,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], edi
.label_135:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_78
	mov	esi, 0x3d
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_85
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
	mov	edi, 1
	call	usage
.label_85:
	movabs	rsi, OFFSET FLAT:.str.57
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	operand_is
	nop	
	test	al, 1
	jne	.label_107
	mov	rbp, rbp
	jmp	.label_108
.label_107:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [input_file]],  rax
	jmp	.label_110
.label_108:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.58
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	mov	rsp, rsp
	jne	.label_117
	jmp	.label_119
.label_117:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_file]],  rax
	jmp	.label_120
.label_119:
	movabs	rsi, OFFSET FLAT:.str.59
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_123
	nop	
	jmp	.label_124
.label_123:
	movabs	rsi, OFFSET FLAT:conversions
	xor	edx, edx
	nop	
	movabs	rcx, OFFSET FLAT:.str.60
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	parse_symbols
	nop	
	or	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_129
.label_124:
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	mov	rbp, rbp
	jne	.label_136
	mov	rsp, rsp
	jmp	.label_137
.label_136:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:flags
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [input_flags]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_flags]],  eax
	jmp	.label_94
.label_137:
	movabs	rsi, OFFSET FLAT:.str.63
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	operand_is
	test	al, 1
	jne	.label_65
	jmp	.label_71
.label_65:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:flags
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	movabs	rcx, OFFSET FLAT:.str.64
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [output_flags]]
	mov	dword ptr [dword ptr [output_flags]],  eax
	lea	rdi, [rdi]
	jmp	.label_81
.label_71:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	operand_is
	test	al, 1
	jne	.label_90
	lea	rdi, [rdi]
	jmp	.label_91
.label_90:
	movabs	rsi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.66
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	parse_symbols
	mov	dword ptr [dword ptr [status_level]],  eax
	jmp	.label_88
.label_91:
	lea	rsi, [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_integer
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_115
	jmp	.label_76
.label_115:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	lea	rdi, [rdi]
	shl	rdx, 1
	lea	rsi, [rsi]
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_118
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_131
.label_118:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_131
.label_131:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_102
.label_76:
	movabs	rsi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	operand_is
	test	al, 1
	mov	rsp, rsp
	jne	.label_57
	jmp	.label_58
.label_57:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [page_size]]
	mov	rsp, rsp
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	nop	
	jae	.label_60
	mov	rax, -1
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [page_size]]
	lea	rsi, [rsi]
	sub	rcx, 1
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_72
.label_60:
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	jmp	.label_86
.label_58:
	movabs	rsi, OFFSET FLAT:.str.69
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_92
	mov	rbp, rbp
	jmp	.label_95
.label_92:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 1
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
	jae	.label_98
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
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	jmp	.label_114
.label_98:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_101
.label_95:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.70
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	nop	
	jne	.label_127
	jmp	.label_128
.label_127:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 1
	nop	
	mov	qword ptr [rbp - 0x68], -1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [conversion_blocksize]],  rax
	lea	rdi, [rdi]
	jmp	.label_100
.label_128:
	movabs	rsi, OFFSET FLAT:.str.71
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	operand_is
	test	al, 1
	jne	.label_51
	lea	rdi, [rdi]
	jmp	.label_53
.label_51:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_56
.label_53:
	movabs	rsi, OFFSET FLAT:.str.72
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	nop	
	jne	.label_64
	jmp	.label_66
.label_64:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_68
.label_66:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.73
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	operand_is
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_69
	jmp	.label_77
.label_69:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_79
.label_77:
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x90], rax
	nop	
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_79:
	jmp	.label_68
.label_68:
	jmp	.label_56
.label_56:
	nop	
	jmp	.label_100
.label_100:
	lea	rsi, [rsi]
	jmp	.label_101
.label_101:
	jmp	.label_86
.label_86:
	jmp	.label_102
.label_102:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_63
	nop	
	mov	dword ptr [rbp - 0x4c], 4
	jmp	.label_105
.label_63:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_96
	mov	dword ptr [rbp - 0x4c], 1
.label_96:
	jmp	.label_105
.label_105:
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	je	.label_113
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.75
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x4b
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 1
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_113:
	lea	rdi, [rdi]
	jmp	.label_88
.label_88:
	jmp	.label_81
.label_81:
	mov	rbp, rbp
	jmp	.label_94
.label_94:
	jmp	.label_129
.label_129:
	jmp	.label_120
.label_120:
	lea	rdi, [rdi]
	jmp	.label_110
.label_110:
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	jmp	.label_135
.label_78:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_50
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	mov	qword ptr [word ptr [input_blocksize]],  rax
	lea	rdi, [rdi]
	jmp	.label_54
.label_50:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x800
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_54:
	nop	
	cmp	qword ptr [word ptr [input_blocksize]],  0
	lea	rdi, [rdi]
	jne	.label_67
	mov	qword ptr [word ptr [input_blocksize]],  0x200
.label_67:
	cmp	qword ptr [word ptr [output_blocksize]],  0
	jne	.label_73
	mov	qword ptr [word ptr [output_blocksize]],  0x200
.label_73:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [conversion_blocksize]],  0
	mov	rsp, rsp
	jne	.label_109
	nop	
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xffffffe7
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_109:
	nop	
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x101000
	cmp	eax, 0
	je	.label_87
	mov	eax,  dword ptr [dword ptr [input_flags]]
	lea	rdi, [rdi]
	or	eax, 0x101000
	mov	dword ptr [dword ptr [input_flags]],  eax
.label_87:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [output_flags]]
	mov	rsp, rsp
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_93
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.76
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
	mov	edi, 1
	call	usage
.label_93:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_116
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
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
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	r8, rax
	nop	
	mov	al, 0
	call	nl_error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_116:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0xc
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_132
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
	mov	qword ptr [rbp - 0xb8], rax
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
	mov	rcx, qword ptr [rbp - 0xb8]
	nop	
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_132:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 8
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_80
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_80
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	div	qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [skip_records]],  rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [word ptr [input_blocksize]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [skip_bytes]],  rdx
	jmp	.label_83
.label_80:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_55
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [word ptr [skip_records]],  rax
.label_55:
	jmp	.label_83
.label_83:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	mov	rbp, rbp
	and	eax, 4
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_104
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_104
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [max_records]],  rax
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [max_bytes]],  rdx
	mov	rbp, rbp
	jmp	.label_112
.label_104:
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_103
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [max_records]],  rax
.label_103:
	mov	rbp, rbp
	jmp	.label_112
.label_112:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_70
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_70
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [word ptr [seek_records]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [word ptr [output_blocksize]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [seek_bytes]],  rdx
	jmp	.label_61
.label_70:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	je	.label_52
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [seek_records]],  rax
.label_52:
	mov	rsp, rsp
	jmp	.label_61
.label_61:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_62
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	nop	
	jne	.label_62
	mov	al, 1
	cmp	qword ptr [word ptr [skip_records]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xba], al
	lea	rsi, [rsi]
	jne	.label_75
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	nop	
	cmp	rcx,  qword ptr [word ptr [max_records]]
	jae	.label_84
	mov	rbp, rbp
	mov	al, 1
	cmp	qword ptr [word ptr [max_records]],  -1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba], al
	jb	.label_75
.label_84:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0x4000
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	mov	byte ptr [rbp - 0xba], cl
.label_75:
	mov	al, byte ptr [rbp - 0xba]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb9], al
.label_62:
	mov	al, byte ptr [rbp - 0xb9]
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
	jne	.label_121
	mov	rbp, rbp
	jmp	.label_122
.label_121:
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
.label_122:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x18
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	mov	rsp, rsp
	jne	.label_130
	nop	
	jmp	.label_133
.label_130:
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
.label_133:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x60
	lea	rdi, [rdi]
	mov	edi, eax
	call	multiple_bits_set
	nop	
	test	al, 1
	jne	.label_97
	jmp	.label_59
.label_97:
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
.label_59:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x3000
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	mov	rsp, rsp
	jne	.label_74
	jmp	.label_82
.label_74:
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
.label_82:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4002
	mov	edi, eax
	lea	rsi, [rsi]
	call	multiple_bits_set
	mov	rbp, rbp
	test	al, 1
	jne	.label_89
	mov	eax,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	mov	rsp, rsp
	test	al, 1
	jne	.label_89
	nop	
	jmp	.label_99
.label_89:
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
.label_99:
	nop	
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_106
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	byte ptr [byte ptr [i_nocache]],  1
	mov	rbp, rbp
	cmp	qword ptr [word ptr [max_records]],  0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbb], cl
	lea	rdi, [rdi]
	jne	.label_111
	mov	rbp, rbp
	cmp	qword ptr [word ptr [max_bytes]],  0
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbb], al
.label_111:
	nop	
	mov	al, byte ptr [rbp - 0xbb]
	and	al, 1
	nop	
	mov	byte ptr [byte ptr [i_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [input_flags]],  ecx
.label_106:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_125
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [byte ptr [o_nocache]],  1
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [max_records]],  0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbc], cl
	mov	rsp, rsp
	jne	.label_126
	mov	rsp, rsp
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbc], al
.label_126:
	mov	al, byte ptr [rbp - 0xbc]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [output_flags]]
	and	ecx, 0xfffffffd
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [output_flags]],  ecx
.label_125:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404030

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
	je	.label_147
	movabs	rdi, OFFSET FLAT:ascii_to_ebcdic
	mov	rsp, rsp
	call	translate_charset
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [label_144]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [label_145]]
	mov	byte ptr [byte ptr [space_character]],  al
	jmp	.label_146
.label_147:
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
	jmp	.label_146
.label_146:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404210

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	esi, 0xfffdfeff
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_157
	nop	
	mov	esi, 3
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, dword ptr [rbp - 8]
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_163
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_155
.label_163:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_160
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	and	eax, 0x10000
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_164
	lea	rsi, [rbp - 0xb0]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	__fstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_158
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_161
.label_158:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	eax, 0x10000
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_153
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_153
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 0
	lea	rdi, [rdi]
	jmp	.label_159
.label_153:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_156
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_156
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x1f
	mov	byte ptr [rbp - 0x19], 0
.label_156:
	jmp	.label_159
.label_159:
	lea	rsi, [rsi]
	jmp	.label_161
.label_161:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xfffeffff
	mov	dword ptr [rbp - 0x18], eax
.label_164:
	test	byte ptr [rbp - 0x19], 1
	je	.label_154
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_154
	mov	esi, 4
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	rsp, rsp
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_154
	mov	byte ptr [rbp - 0x19], 0
.label_154:
	jmp	.label_160
.label_160:
	jmp	.label_155
.label_155:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	jne	.label_162
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.105
	nop	
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	call	quotearg_style
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_162:
	jmp	.label_157
.label_157:
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404470

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
.label_166:
	mov	rbp, rbp
	call	process_signals
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	fd_reopen
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d], cl
	nop	
	jge	.label_165
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x1d], cl
.label_165:
	mov	al, byte ptr [rbp - 0x1d]
	test	al, 1
	nop	
	jne	.label_166
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404500

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x120], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm3
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18c], esi
	lea	rdi, [rdi]
	je	.label_167
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	mov	rbp, rbp
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	lea	rdi, [rdi]
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	nop	
	movaps	xmmword ptr [rbp - 0x60], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_167:
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x18c]
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x164]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	r9d,  dword ptr [dword ptr [progress_len]]
	jge	.label_168
	mov	edi, 0xa
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stderr]]
	nop	
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x190], eax
.label_168:
	nop	
	lea	rax, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x20], rax
	lea	rax, [rbp + 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x18
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	lea	rcx, [rbp - 0x30]
	call	verror
	mov	rsp, rsp
	add	rsp, 0x190
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
.label_169:
	mov	rsp, rsp
	call	process_signals
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	ftruncate
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	lea	rdi, [rdi]
	jge	.label_170
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], cl
.label_170:
	mov	al, byte ptr [rbp - 0x15]
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
	.section	.text
	.align	32
	#Procedure 0x404780

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x1c0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [word ptr [skip_records]],  0
	lea	rsi, [rsi]
	jne	.label_244
	cmp	qword ptr [word ptr [skip_bytes]],  0
	lea	rdi, [rdi]
	je	.label_212
.label_244:
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
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	rdx,  qword ptr [word ptr [skip_records]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [input_blocksize]]
	lea	rdi, [rdi]
	call	skip
	mov	qword ptr [rbp - 0x40], rax
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	jne	.label_181
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	lea	rdi, [rdi]
	jne	.label_188
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_188
.label_181:
	cmp	dword ptr [dword ptr [status_level]],  1
	mov	rsp, rsp
	je	.label_188
	movabs	rdi, OFFSET FLAT:.str.106
	lea	rsi, [rsi]
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x120], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x120]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_188:
	jmp	.label_212
.label_212:
	cmp	qword ptr [word ptr [seek_records]],  0
	mov	rsp, rsp
	jne	.label_204
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [seek_bytes]],  0
	nop	
	je	.label_220
.label_204:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x48]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [seek_bytes]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rdx,  qword ptr [word ptr [seek_records]]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	call	skip
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_236
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_228
.label_236:
	mov	rdi,  qword ptr [word ptr [obuf]]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x128], rdi
	je	.label_190
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	jmp	.label_245
.label_190:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rax
.label_245:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rdx, rax
	nop	
	call	memset
.label_224:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_258
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_260
.label_258:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
.label_260:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x58]
	call	iwrite
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_180
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.107
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	call	quit
.label_180:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	je	.label_202
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_205
.label_202:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
.label_205:
	mov	rbp, rbp
	jmp	.label_214
.label_214:
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x149], al
	jne	.label_217
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	setne	al
	mov	byte ptr [rbp - 0x149], al
.label_217:
	mov	al, byte ptr [rbp - 0x149]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_224
	lea	rdi, [rdi]
	jmp	.label_228
.label_228:
	jmp	.label_220
.label_220:
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_232
	cmp	qword ptr [word ptr [max_bytes]],  0
	mov	rbp, rbp
	jne	.label_232
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_193
.label_232:
	call	alloc_ibuf
	call	alloc_obuf
.label_198:
	cmp	dword ptr [dword ptr [status_level]],  4
	jne	.label_241
	call	gethrxtime
	mov	qword ptr [rbp - 0x60], rax
	mov	rax,  qword ptr [word ptr [next_time]]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_213
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	print_xfer_stats
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [next_time]]
	add	rdi, 0x3b9aca00
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [next_time]],  rdi
.label_213:
	jmp	.label_241
.label_241:
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
	jb	.label_254
	jmp	.label_173
.label_254:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_174
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	and	eax, 0x100
	cmp	eax, 0
	je	.label_174
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
.label_174:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	cmp	rax,  qword ptr [word ptr [max_records]]
	jb	.label_194
	xor	edi, edi
	nop	
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [max_bytes]]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_206
.label_194:
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	nop	
	mov	rsi,  qword ptr [word ptr [ibuf]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	call	rax
	mov	qword ptr [rbp - 0x18], rax
.label_206:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_248
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	advance_input_offset
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_223
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	invalidate_cache
	nop	
	mov	byte ptr [rbp - 0x14a], al
.label_223:
	jmp	.label_233
.label_248:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_234
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
	mov	byte ptr [rbp - 0x14b], cl
	lea	rdi, [rdi]
	je	.label_249
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x200
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x14b], cl
.label_249:
	mov	al, byte ptr [rbp - 0x14b]
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
	jmp	.label_173
.label_234:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_171
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_178
.label_171:
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.108
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], esi
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
.label_178:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_199
	call	print_stats
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	invalidate_cache
	mov	rdi, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x159], al
	mov	rsp, rsp
	call	advance_input_after_read_error
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_215
	mov	dword ptr [rbp - 0x24], 1
	mov	byte ptr [byte ptr [input_seekable]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_seek_errno]],  0x1d
.label_215:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	nop	
	cmp	eax, 0
	je	.label_222
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_222
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_221
.label_222:
	jmp	.label_198
.label_221:
	lea	rdi, [rdi]
	jmp	.label_235
.label_199:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	lea	rdi, [rdi]
	jmp	.label_173
.label_235:
	lea	rsi, [rsi]
	jmp	.label_238
.label_238:
	jmp	.label_233
.label_233:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	nop	
	jae	.label_240
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [r_partial]],  rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [conversions_mask]]
	and	ecx, 0x400
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_247
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_257
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0x20
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [ibuf]]
	add	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x18
	cmp	esi, 0
	cmovne	eax, ecx
	mov	dil, al
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	sub	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15a], dil
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rbp - 0x15a]
	nop	
	movzx	esi, r9b
	mov	rdx, r8
	call	memset
.label_257:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_247:
	lea	rsi, [rsi]
	jmp	.label_189
.label_240:
	mov	rax,  qword ptr [word ptr [r_full]]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r_full]],  rax
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_189:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [obuf]]
	lea	rsi, [rsi]
	jne	.label_196
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x30]
	call	iwrite
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax,  qword ptr [word ptr [w_bytes]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [w_bytes]],  rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	je	.label_207
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.109
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_193
.label_207:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jne	.label_177
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [w_full]],  rax
	mov	rbp, rbp
	jmp	.label_243
.label_177:
	mov	rax,  qword ptr [word ptr [w_partial]]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [w_partial]],  rax
.label_243:
	nop	
	jmp	.label_250
.label_250:
	jmp	.label_198
.label_196:
	test	byte ptr [byte ptr [translation_needed]],  1
	je	.label_252
	mov	rdi,  qword ptr [word ptr [ibuf]]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	call	translate_buffer
.label_252:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x80
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_259
	nop	
	lea	rsi, [rbp - 0x30]
	mov	rdi,  qword ptr [word ptr [ibuf]]
	call	swab_buffer
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_231
.label_259:
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0x10], rax
.label_231:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 8
	nop	
	cmp	eax, 0
	je	.label_179
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	copy_with_block
	nop	
	jmp	.label_185
.label_179:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_186
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	copy_with_unblock
	nop	
	jmp	.label_192
.label_186:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	copy_simple
.label_192:
	jmp	.label_185
.label_185:
	jmp	.label_198
.label_173:
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_246
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_200
	movabs	rdi, OFFSET FLAT:saved_char
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	call	copy_with_block
	mov	rbp, rbp
	jmp	.label_211
.label_200:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x10
	cmp	eax, 0
	je	.label_216
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:saved_char
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	call	copy_with_unblock
	jmp	.label_225
.label_216:
	jmp	.label_227
.label_227:
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
	jb	.label_229
	call	write_output
.label_229:
	mov	rsp, rsp
	jmp	.label_242
.label_242:
	mov	rbp, rbp
	jmp	.label_225
.label_225:
	jmp	.label_211
.label_211:
	lea	rsi, [rsi]
	jmp	.label_246
.label_246:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_187
	cmp	qword ptr [word ptr [col]],  0
	jbe	.label_187
	nop	
	mov	rax,  qword ptr [word ptr [col]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_183:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_256
	jmp	.label_182
.label_182:
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
	jb	.label_261
	call	write_output
.label_261:
	jmp	.label_184
.label_184:
	mov	rbp, rbp
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_183
.label_256:
	lea	rsi, [rsi]
	jmp	.label_187
.label_187:
	cmp	qword ptr [word ptr [col]],  0
	nop	
	je	.label_176
	nop	
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_176
	jmp	.label_195
.label_195:
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
	jb	.label_197
	mov	rbp, rbp
	call	write_output
.label_197:
	jmp	.label_237
.label_237:
	jmp	.label_176
.label_176:
	cmp	qword ptr [word ptr [oc]],  0
	lea	rsi, [rsi]
	je	.label_219
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [obuf]]
	nop	
	mov	rdx,  qword ptr [word ptr [oc]]
	call	iwrite
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_226
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [w_partial]]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_226:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [oc]]
	nop	
	je	.label_239
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.109
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x178], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	nl_error
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_193
.label_239:
	jmp	.label_219
.label_219:
	nop	
	test	byte ptr [byte ptr [final_op_was_seek]],  1
	je	.label_253
	mov	edi, 1
	lea	rsi, [rbp - 0x110]
	nop	
	call	__fstat
	cmp	eax, 0
	nop	
	je	.label_172
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x17c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_193
.label_172:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_203
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf8]
	sub	eax, dword ptr [rbp - 0xf8]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_251
.label_203:
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
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	jg	.label_210
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x118]
	jge	.label_210
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x118]
	call	iftruncate
	cmp	eax, 0
	je	.label_230
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.110
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x198], rax
	nop	
	mov	qword ptr [rbp - 0x1a0], rcx
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	r8, rax
	mov	al, 0
	call	nl_error
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_193
.label_230:
	jmp	.label_210
.label_210:
	nop	
	jmp	.label_251
.label_251:
	jmp	.label_253
.label_253:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	nop	
	and	eax, 0x4000
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_255
	mov	rsp, rsp
	mov	edi, 1
	nop	
	call	fdatasync
	cmp	eax, 0
	nop	
	je	.label_255
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	je	.label_175
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_175
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.111
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1b0], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	nl_error
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 1
.label_175:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rbp, rbp
	or	eax, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_255:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	rsp, rsp
	and	eax, 0x8000
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_201
	jmp	.label_208
.label_208:
	mov	edi, 1
	call	fsync
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_209
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	nop	
	je	.label_218
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.112
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [output_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_193
.label_218:
	jmp	.label_208
.label_209:
	mov	rsp, rsp
	jmp	.label_201
.label_201:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_193:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x1c0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059a0

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0xffffffff
	cmp	dword ptr [rbp - 8], 0
	jne	.label_273
	mov	al,  byte ptr [byte ptr [i_nocache_eof]]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_263
.label_273:
	nop	
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], ecx
.label_263:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x21], cl
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cache_round
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_268
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jne	.label_268
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_275
.label_268:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_265
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_265
	mov	rbp, rbp
	test	byte ptr [rbp - 0x21], 1
	jne	.label_265
	mov	byte ptr [rbp - 1], 1
	jmp	.label_275
.label_265:
	nop	
	jmp	.label_277
.label_277:
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_279
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	cache_round
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_269
.label_279:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 8], 0
	jne	.label_278
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_seekable]],  1
	lea	rsi, [rsi]
	je	.label_262
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [input_offset]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_271
.label_262:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x1d
.label_271:
	jmp	.label_264
.label_278:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  -1
	je	.label_267
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  0
	nop	
	jge	.label_274
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 1
	nop	
	mov	edi, dword ptr [rbp - 8]
	call	lseek
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
	jmp	.label_266
.label_274:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_272
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	add	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
.label_272:
	jmp	.label_266
.label_266:
	jmp	.label_267
.label_267:
	mov	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [rbp - 0x20], rax
.label_264:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_270
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_276
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_276
	test	byte ptr [rbp - 0x21], 1
	nop	
	je	.label_276
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_276:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_280
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
.label_280:
	mov	rbp, rbp
	mov	ecx, 4
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	posix_fadvise
	mov	dword ptr [rbp - 0x14], eax
.label_270:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], -1
	mov	rsp, rsp
	cmovne	eax, ecx
	cmp	eax, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_275:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c90

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
	.section	.text
	.align	32
	#Procedure 0x405cc0

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
	#Procedure 0x405ce0

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
	.section	.text
	.align	32
	#Procedure 0x405d00

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
	.section	.text
	.align	32
	#Procedure 0x405d40

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
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
.label_288:
	mov	esi, 0x2c
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_292:
	mov	edx, 0x2c
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	operand_matches
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	cl, dl
	mov	rbp, rbp
	test	al, 1
	mov	byte ptr [rbp - 0x41], cl
	lea	rsi, [rsi]
	jne	.label_290
	mov	rbp, rbp
	jmp	.label_281
.label_290:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xc], 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], cl
.label_281:
	mov	al, byte ptr [rbp - 0x41]
	nop	
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_287
	mov	rsp, rsp
	jmp	.label_289
.label_287:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_293
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_282
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_285
.label_282:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
.label_285:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	call	quotearg_n_style_mem
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	edi, esi
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r8, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	nl_error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_293:
	mov	rsp, rsp
	jmp	.label_294
.label_294:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_292
.label_289:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	je	.label_284
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	jmp	.label_291
.label_284:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	or	ecx, dword ptr [rbp - 0x24]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
.label_291:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_283
	jmp	.label_286
.label_283:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_288
.label_286:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f40

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x28]
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x20]
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.85
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	nop	
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_299
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_299
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	parse_integer
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	je	.label_297
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_297
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 1
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_298
.label_297:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_296
	movabs	rsi, OFFSET FLAT:.str.86
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:.str.88
	nop	
	mov	qword ptr [rbp - 0x48], rax
	call	quote_n
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], edi
	mov	esi, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	nl_error
.label_296:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_295
.label_299:
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	je	.label_300
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_298
.label_300:
	mov	rsp, rsp
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_298:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], 0
.label_302:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_301
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	iread
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_305
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_304
.label_305:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_303
	jmp	.label_301
.label_303:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_302
.label_301:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_304:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406200

	.globl iread
	.type iread, @function
iread:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_312:
	mov	rsp, rsp
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	mov	rsp, rsp
	jne	.label_306
	nop	
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_306
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_306
	nop	
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_306
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	nop	
	je	.label_306
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
.label_306:
	nop	
	jmp	.label_311
.label_311:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_313
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
.label_313:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_312
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jge	.label_307
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_307
	mov	rsp, rsp
	call	process_signals
.label_307:
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_310
	test	byte ptr [byte ptr [warn_partial_read]],  1
	je	.label_310
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_308
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jae	.label_308
	nop	
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_309
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, 0
	lea	rsi, [rsi]
	call	nl_error
.label_309:
	mov	byte ptr [byte ptr [warn_partial_read]],  0
.label_308:
	lea	rsi, [rsi]
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [iread.prev_nread]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406410

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
	.section	.text
	.align	32
	#Procedure 0x406440

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
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
	mov	byte ptr [rbp - 0x1a], al
	je	.label_316
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	sete	sil
	nop	
	mov	byte ptr [rbp - 0x1a], sil
.label_316:
	mov	al, byte ptr [rbp - 0x1a]
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
	.section	.text
	.align	32
	#Procedure 0x406500

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xa0
.label_324:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	jne	.label_321
	nop	
	mov	eax,  dword ptr [dword ptr [info_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_321:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_325
	jmp	.label_323
.label_325:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x88]
	call	sigprocmask
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x90], eax
	je	.label_322
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [info_signal_count]],  eax
.label_322:
	mov	edi, 2
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x88]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	call	sigprocmask
	nop	
	cmp	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_320
	call	cleanup
.label_320:
	call	print_stats
	cmp	dword ptr [rbp - 4], 0
	je	.label_319
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	nop	
	call	raise
	nop	
	mov	dword ptr [rbp - 0x98], eax
.label_319:
	mov	rsp, rsp
	jmp	.label_324
.label_323:
	nop	
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x406620

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], -1
	mov	rbp, rbp
	ja	.label_326
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_327
.label_326:
	mov	eax, 0xf4240
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rbp, rbp
	add	rdx, 0xf4240
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
.label_327:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406680

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
	mov	dword ptr [rbp - 4], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	call	quotearg_style
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
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
	.section	.text
	.align	32
	#Procedure 0x406780

	.globl print_stats
	.type print_stats, @function
print_stats:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	cmp	dword ptr [dword ptr [status_level]],  1
	jne	.label_330
	jmp	.label_332
.label_330:
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_333
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [progress_len]],  0
	nop	
	mov	dword ptr [rbp - 4], eax
.label_333:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [r_partial]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [w_full]]
	mov	r9,  qword ptr [word ptr [w_partial]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	cmp	qword ptr [word ptr [r_truncate]],  0
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	je	.label_331
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [r_truncate]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rsi, OFFSET FLAT:.str.95
	mov	rbp, rbp
	mov	rdx, rax
	call	ngettext
	mov	rdx,  qword ptr [word ptr [r_truncate]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
.label_331:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [status_level]],  2
	jne	.label_334
	lea	rsi, [rsi]
	jmp	.label_332
.label_334:
	xor	eax, eax
	mov	edi, eax
	call	print_xfer_stats
.label_332:
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x8b0
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_340
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x830], rax
	lea	rsi, [rsi]
	jmp	.label_348
.label_340:
	call	gethrxtime
	mov	qword ptr [rbp - 0x830], rax
.label_348:
	nop	
	mov	rax, qword ptr [rbp - 0x830]
	mov	edx, 0x1d1
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdi, [rbp - 0x7c0]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [w_bytes]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x838]
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
	lea	rsi, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	add	rsi, 0x28e
	mov	qword ptr [rbp - 0x848], rcx
	mov	r8, qword ptr [rbp - 0x848]
	lea	rsi, [rsi]
	call	human_readable
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x7c0]
	nop	
	mov	qword ptr [rbp - 0x7e0], rax
	lea	rsi, [rsi]
	add	rcx, 0x51c
	nop	
	mov	qword ptr [rbp - 0x7e8], rcx
	mov	dword ptr [rbp - 0x7ec], 0x28e
	mov	rax,  qword ptr [word ptr [start_time]]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_341
	mov	edx, 0x1d1
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	lea	rdi, [rdi]
	movabs	rsi, 0x41cdcd6500000000
	mov	qword ptr [rbp - 0x7f8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x800], rsi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + start_time]]
	mov	rsp, rsp
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x800], rsi
	movq	xmm0, rsi
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_336]]
	lea	rdi, [rdi]
	punpckldq	xmm0, xmm1
	mov	rsp, rsp
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_337]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	lea	rdi, [rdi]
	addpd	xmm1, xmm0
	divsd	xmm1, qword ptr [rbp - 0x7f8]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x7c8], xmm1
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x7e8]
	mov	r8, qword ptr [rbp - 0x800]
	mov	rbp, rbp
	call	human_readable
	movabs	rsi, OFFSET FLAT:print_xfer_stats.slash_s
	mov	qword ptr [rbp - 0x7d0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	rcx, qword ptr [rbp - 0x7e8]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x7e8]
	mov	rbp, rbp
	mov	rdi, rax
	call	strcat
	nop	
	mov	qword ptr [rbp - 0x850], rax
	nop	
	jmp	.label_345
.label_341:
	movabs	rdi, OFFSET FLAT:.str.97
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x7c8], xmm0
	mov	rax, qword ptr [rbp - 0x7e8]
	movsxd	rsi, dword ptr [rbp - 0x7ec]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x858], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x860], rax
	call	gettext
	nop	
	movabs	rdx, OFFSET FLAT:.str.96
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x860]
	mov	rsi, qword ptr [rbp - 0x858]
	mov	rcx, rax
	mov	al, 0
	call	snprintf
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x7e8]
	mov	qword ptr [rbp - 0x7d0], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x864], eax
.label_345:
	cmp	qword ptr [rbp - 8], 0
	je	.label_349
	mov	edi, 0xd
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x868], eax
.label_349:
	mov	eax, 0x18
	mov	esi, eax
	movabs	rcx, OFFSET FLAT:.str.99
	movabs	rdx, OFFSET FLAT:.str.98
	lea	rdi, [rbp - 0x820]
	cmp	qword ptr [rbp - 8], 0
	cmovne	rcx, rdx
	movsd	xmm0, qword ptr [rbp - 0x7c8]
	mov	rdx, rcx
	nop	
	mov	al, 1
	call	snprintf
	mov	rdi, qword ptr [rbp - 0x7d8]
	mov	dword ptr [rbp - 0x86c], eax
	mov	rbp, rbp
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_347
	jmp	.label_335
.label_347:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [w_bytes]]
	nop	
	mov	qword ptr [rbp - 0x878], rdi
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
	lea	rcx, [rbp - 0x820]
	nop	
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x7d0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x878]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_350
.label_335:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x7e0]
	nop	
	call	abbreviation_lacks_prefix
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_343
	jmp	.label_346
.label_343:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.102
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x888], rax
	call	gettext
	lea	r8, [rbp - 0x820]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x7d8]
	mov	r9, qword ptr [rbp - 0x7d0]
	mov	rdi, qword ptr [rbp - 0x888]
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88c], eax
	jmp	.label_338
.label_346:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x898], rax
	call	gettext
	lea	r9, [rbp - 0x820]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	nop	
	mov	rcx, qword ptr [rbp - 0x7d8]
	nop	
	mov	r8, qword ptr [rbp - 0x7e0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x7d0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x898]
	mov	qword ptr [rbp - 0x8a0], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x8a0]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88c], eax
.label_338:
	mov	eax, dword ptr [rbp - 0x88c]
	mov	dword ptr [rbp - 0x87c], eax
.label_350:
	mov	eax, dword ptr [rbp - 0x87c]
	mov	dword ptr [rbp - 0x824], eax
	cmp	qword ptr [rbp - 8], 0
	je	.label_342
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x824]
	lea	rsi, [rsi]
	jg	.label_344
	mov	eax, dword ptr [rbp - 0x824]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_344
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.104
	movabs	rcx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax,  dword ptr [dword ptr [progress_len]]
	sub	eax, dword ptr [rbp - 0x824]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x8a4], eax
.label_344:
	mov	eax, dword ptr [rbp - 0x824]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [progress_len]],  eax
	jmp	.label_339
.label_342:
	mov	edi, 0xa
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8a8], eax
.label_339:
	add	rsp, 0x8b0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e70

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
	.section	.text
	.align	32
	#Procedure 0x406eb0

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0
.label_352:
	cmp	dword ptr [rbp - 0xc], 0x100
	mov	rsp, rsp
	jge	.label_351
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	sil, byte ptr [rdx + rax]
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	byte ptr [byte ptr [+ (rax * 1) + trans_table]],  sil
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_352
.label_351:
	mov	byte ptr [byte ptr [translation_needed]],  1
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f30

	.globl skip
	.type skip, @function
skip:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x160
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rcx, 0x7fffffffffffffff
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_371
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	skip_via_lseek
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	jg	.label_371
	cmp	dword ptr [rbp - 0xc], 0
	lea	rsi, [rsi]
	jne	.label_378
	xor	edi, edi
	mov	rsp, rsp
	lea	rsi, [rbp - 0xc8]
	mov	rbp, rbp
	call	__fstat
	nop	
	cmp	eax, 0
	je	.label_375
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xec], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xec]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_375:
	lea	rdi, [rbp - 0xc8]
	mov	rbp, rbp
	call	usable_st_size
	test	al, 1
	jne	.label_353
	jmp	.label_356
.label_353:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [input_offset]]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_356
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax,  qword ptr [word ptr [input_offset]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_364
.label_356:
	mov	qword ptr [rbp - 0x20], 0
.label_364:
	mov	rdi, qword ptr [rbp - 0x38]
	call	advance_input_offset
	jmp	.label_354
.label_378:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_354:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_360
.label_371:
	lea	rsi, [rsi]
	call	__errno_location
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	ecx, 2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	skip_via_lseek
	cmp	rax, 0
	jl	.label_372
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	jne	.label_358
	mov	dword ptr [rbp - 0xcc], 0x4b
.label_358:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_355
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.113
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xcc]
	nop	
	mov	dword ptr [rbp - 0xfc], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xfc]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	nl_error
	mov	rsp, rsp
	jmp	.label_379
.label_355:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.114
	nop	
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_379:
	lea	rsi, [rsi]
	mov	edi, 1
	call	quit
.label_372:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_376
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	jmp	.label_381
.label_376:
	mov	rbp, rbp
	call	alloc_obuf
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [obuf]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
.label_381:
	nop	
	jmp	.label_362
.label_362:
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0xd8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x120], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x124], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rsi
	mov	rbp, rbp
	je	.label_363
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_377
.label_363:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
.label_377:
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x124]
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	call	rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	jge	.label_365
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jne	.label_370
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.108
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	nl_error
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x100
	cmp	esi, 0
	je	.label_368
	call	print_stats
.label_368:
	jmp	.label_374
.label_370:
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x14c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_374:
	mov	edi, 1
	lea	rdi, [rdi]
	call	quit
.label_365:
	nop	
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_369
	mov	rsp, rsp
	jmp	.label_373
.label_369:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_380
	mov	rdi, qword ptr [rbp - 0xe0]
	call	advance_input_offset
.label_380:
	nop	
	jmp	.label_382
.label_382:
	mov	rsp, rsp
	jmp	.label_361
.label_361:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_357
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_359
.label_357:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_359:
	nop	
	jmp	.label_366
.label_366:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x159], al
	lea	rsi, [rsi]
	jne	.label_367
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x159], cl
.label_367:
	mov	al, byte ptr [rbp - 0x159]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_362
.label_373:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_360:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x160
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407530

	.globl iwrite
	.type iwrite, @function
iwrite:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [output_flags]]
	lea	rdi, [rdi]
	and	edi, 0x4000
	cmp	edi, 0
	nop	
	je	.label_393
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rbp, rbp
	jae	.label_393
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
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xffffbfff
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_388
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [status_level]],  1
	nop	
	je	.label_388
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.116
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_388:
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
	mov	byte ptr [rbp - 0x41], al
.label_393:
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_383
	mov	qword ptr [rbp - 0x30], 0
	call	process_signals
	mov	byte ptr [byte ptr [final_op_was_seek]],  0
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	lea	rsi, [rsi]
	and	eax, 0x10000
	nop	
	cmp	eax, 0
	je	.label_391
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	is_nul
	mov	rsp, rsp
	test	al, 1
	jne	.label_389
	nop	
	jmp	.label_391
.label_389:
	mov	edx, 1
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	lseek
	nop	
	cmp	rax, 0
	jge	.label_390
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xfffeffff
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	mov	rbp, rbp
	jmp	.label_384
.label_390:
	mov	byte ptr [byte ptr [final_op_was_seek]],  1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_384:
	jmp	.label_391
.label_391:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_394
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	nop	
	mov	rdx, rcx
	nop	
	call	write
	mov	qword ptr [rbp - 0x30], rax
.label_394:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_392
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_395
	jmp	.label_383
.label_395:
	mov	rsp, rsp
	jmp	.label_387
.label_392:
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jne	.label_385
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_383
.label_385:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_387
.label_387:
	mov	rsp, rsp
	jmp	.label_396
.label_383:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_386
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_386
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x42], al
.label_386:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407810

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
	.section	.text
	.align	32
	#Procedure 0x407840

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
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_399
	movabs	rdi, OFFSET FLAT:.str.117
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	edx, 0x1f1
	nop	
	mov	ecx, 1
	mov	edi, ecx
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x2a8], rdi
	mov	rbp, rbp
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2b0], rcx
	lea	rsi, [rsi]
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2b8], rax
	call	human_readable
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	nl_error
.label_399:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
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
	.section	.text
	.align	32
	#Procedure 0x407990

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
	je	.label_401
	jmp	.label_400
.label_401:
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
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_402
	movabs	rdi, OFFSET FLAT:.str.118
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	edx, 0x1f1
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	edi, ecx
	nop	
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x2a8], rdi
	nop	
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2b0], rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2b8], rax
	call	human_readable
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_402:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [obuf]],  rax
	lea	rdi, [rdi]
	jmp	.label_400
.label_403:
	mov	rsp, rsp
	call	alloc_ibuf
	nop	
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [word ptr [obuf]],  rax
.label_400:
	add	rsp, 0x2c0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407af0

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
	.section	.text
	.align	32
	#Procedure 0x407b40

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_seekable]],  1
	mov	rsp, rsp
	jne	.label_405
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [input_seek_errno]],  0x1d
	mov	rsp, rsp
	jne	.label_410
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_407
.label_410:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [input_seek_errno]]
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_408
.label_405:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
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
	je	.label_414
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.119
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x34], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_407
.label_414:
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
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jg	.label_409
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [input_offset]]
	jne	.label_406
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_407
.label_406:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [input_offset]]
	sub	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jg	.label_415
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jbe	.label_413
.label_415:
	cmp	dword ptr [dword ptr [status_level]],  1
	mov	rbp, rbp
	je	.label_413
	movabs	rdi, OFFSET FLAT:.str.120
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	nl_error
.label_413:
	xor	esi, esi
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [input_file]]
	mov	rdx, qword ptr [rbp - 0x20]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jg	.label_412
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_407
.label_412:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_411
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
.label_411:
	jmp	.label_409
.label_409:
	jmp	.label_408
.label_408:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
.label_407:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e10

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
	.section	.text
	.align	32
	#Procedure 0x407eb0

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [char_is_saved]],  1
	mov	rbp, rbp
	je	.label_418
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
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
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	sil, byte ptr [rax + rcx - 1]
	mov	byte ptr [byte ptr [saved_char]],  sil
	mov	byte ptr [byte ptr [char_is_saved]],  1
.label_421:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x20], rax
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
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax - 2]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_420
.label_419:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408000

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
.label_425:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_433
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	movsx	edx,  byte ptr [byte ptr [newline_character]]
	lea	rdi, [rdi]
	cmp	ecx, edx
	jne	.label_438
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	mov	rbp, rbp
	jae	.label_424
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [col]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_437:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	mov	rbp, rbp
	jae	.label_422
	jmp	.label_430
.label_430:
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
	jb	.label_427
	call	write_output
.label_427:
	jmp	.label_434
.label_434:
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_437
.label_422:
	jmp	.label_424
.label_424:
	nop	
	mov	qword ptr [word ptr [col]],  0
	jmp	.label_426
.label_438:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jne	.label_431
	mov	rax,  qword ptr [word ptr [r_truncate]]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r_truncate]],  rax
	lea	rdi, [rdi]
	jmp	.label_432
.label_431:
	mov	rax,  qword ptr [word ptr [col]]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	lea	rdi, [rdi]
	jae	.label_429
	lea	rdi, [rdi]
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 8]
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
	jb	.label_439
	mov	rbp, rbp
	call	write_output
.label_439:
	mov	rbp, rbp
	jmp	.label_428
.label_428:
	mov	rsp, rsp
	jmp	.label_429
.label_429:
	mov	rbp, rbp
	jmp	.label_432
.label_432:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [col]]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [word ptr [col]],  rax
.label_426:
	jmp	.label_423
.label_423:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_425
.label_433:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408240

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], 0
.label_452:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_447
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x19], dl
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [col]]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [col]],  rcx
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	mov	rsp, rsp
	jb	.label_453
	nop	
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [col]],  0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
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
	jb	.label_444
	call	write_output
.label_444:
	mov	rbp, rbp
	jmp	.label_451
.label_451:
	jmp	.label_448
.label_453:
	nop	
	movsx	eax, byte ptr [rbp - 0x19]
	nop	
	movsx	ecx,  byte ptr [byte ptr [space_character]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_454
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	mov	rbp, rbp
	jmp	.label_455
.label_454:
	jmp	.label_440
.label_440:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	mov	rsp, rsp
	je	.label_456
	lea	rsi, [rsi]
	jmp	.label_443
.label_443:
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
	jb	.label_445
	call	write_output
.label_445:
	jmp	.label_450
.label_450:
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	lea	rsi, [rsi]
	jmp	.label_440
.label_456:
	jmp	.label_441
.label_441:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x19]
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
	jb	.label_442
	call	write_output
.label_442:
	nop	
	jmp	.label_446
.label_446:
	jmp	.label_455
.label_455:
	jmp	.label_448
.label_448:
	jmp	.label_449
.label_449:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_452
.label_447:
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084a0

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	rbp, rbp
	sub	rcx,  qword ptr [word ptr [oc]]
	mov	rbp, rbp
	cmp	rax, rcx
	jae	.label_457
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_458
.label_457:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	lea	rsi, [rsi]
	sub	rax,  qword ptr [word ptr [oc]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_458:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [obuf]]
	add	rax,  qword ptr [word ptr [oc]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x10], rdx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
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
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_459
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085c0

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
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x4086e0

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
	lea	r9, [rbp - 0x50]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	nop	
	mov	edi, dword ptr [rbp - 0xc]
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
	mov	byte ptr [rbp - 0x81], r10b
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	call	lseek
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x90], rax
	cmp	rsi, qword ptr [rbp - 0x90]
	jg	.label_465
	mov	rsp, rsp
	test	byte ptr [rbp - 0x81], 1
	mov	rsp, rsp
	je	.label_465
	mov	rbp, rbp
	mov	eax, 0x80306d02
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x80]
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	ioctl
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_465
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_465
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rbp - 0x58]
	jne	.label_465
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	jne	.label_465
	cmp	dword ptr [dword ptr [status_level]],  1
	lea	rsi, [rsi]
	je	.label_464
	movabs	rdi, OFFSET FLAT:.str.115
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rdx, 0
	mov	qword ptr [rbp - 0x98], rdi
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	al, 0
	call	nl_error
.label_464:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], -1
.label_465:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rsp, 0xa0
	pop	rbp
	nop	
	ret	
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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_474
	mov	byte ptr [rbp - 1], 1
	jmp	.label_467
.label_474:
	nop	
	jmp	.label_471
.label_471:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_476
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_469
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_467
.label_469:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_468
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_467
.label_468:
	jmp	.label_471
.label_476:
	jmp	.label_472
.label_472:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	nop	
	je	.label_477
	mov	byte ptr [rbp - 1], 0
	jmp	.label_467
.label_477:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jne	.label_475
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_467
.label_475:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_470
	lea	rdi, [rdi]
	jmp	.label_473
.label_470:
	jmp	.label_472
.label_473:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	memcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_467:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_478
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x1ffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jbe	.label_480
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_481:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	lea	rdi, [rdi]
	ret	
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
	jne	.label_484
	test	byte ptr [rbp - 0x13], 1
	je	.label_483
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_484
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_483
.label_484:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_482
	call	__errno_location
	mov	dword ptr [rax], 0
.label_482:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_485
.label_483:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_485:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
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
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_490
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
	jmp	.label_488
.label_490:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	nop	
	je	.label_493
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_492
.label_493:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_491
.label_492:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
.label_491:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
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
	lea	rsi, [rbp - 0x18]
	call	clock_gettime
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_494
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
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
	mov	qword ptr [rbp - 8], rax
.label_495:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fb0

	.globl xtime_make
	.type xtime_make, @function
xtime_make:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0x3b9aca00
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rdx
	imul	rcx, qword ptr [rbp - 8], 0x3b9aca00
	add	rcx, qword ptr [rbp - 0x10]
	mov	rax, rcx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409000

	.globl xtime_nonnegative_sec
	.type xtime_nonnegative_sec, @function
xtime_nonnegative_sec:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409020
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jge	.label_496
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x3b9aca00
	sub	rdx, 1
	mov	rax, rdx
	cqo	
	idiv	rcx
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_497
.label_496:
	mov	rdi, qword ptr [rbp - 8]
	call	xtime_nonnegative_sec
	mov	qword ptr [rbp - 0x10], rax
.label_497:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409080
	.globl xtime_nonnegative_nsec
	.type xtime_nonnegative_nsec, @function
xtime_nonnegative_nsec:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090a0
	.globl xtime_nsec
	.type xtime_nsec, @function
xtime_nsec:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_498
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x10], rax
.label_498:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090e0

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
	.section	.text
	.align	32
	#Procedure 0x409120
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
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409170

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x98]
	nop	
	jae	.label_512
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_512
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_512:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	mov	rsp, rsp
	ja	.label_536
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_536:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ja	.label_543
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_503
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_507
	mov	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_526
.label_507:
	mov	rbp, rbp
	jmp	.label_503
.label_503:
	mov	rsp, rsp
	jmp	.label_523
.label_543:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_531
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_531
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	imul	rdx, rdx, 0xa
	nop	
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, rdx
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_541
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0xb8]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], eax
	lea	rsi, [rsi]
	jmp	.label_529
.label_541:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_529:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	jmp	.label_526
.label_531:
	lea	rdi, [rdi]
	jmp	.label_523
.label_523:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_548]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	nop	
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_548]]
	fild	qword ptr [rbp - 0x120]
	mov	rbp, rbp
	faddp	st(1)
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_548]]
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	nop	
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	edx, 0x10
	cmp	edx, 0
	nop	
	jne	.label_549
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rcx, rsp
	mov	rsp, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
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
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_508
.label_549:
	nop	
	fld1	
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_501:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x138]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x100]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	nop	
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	mov	rbp, rbp
	fld	xword ptr [rbp - 0xe0]
	mov	rsp, rsp
	xor	eax, eax
	mov	dl, al
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_522
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	setl	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x165], cl
.label_522:
	mov	al, byte ptr [rbp - 0x165]
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_501
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	fdivrp	st(1)
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rdi
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
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	mov	rbp, rbp
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x14]
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
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_532
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_518
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_518
.label_532:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	nop	
	mov	ecx, 0xa
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_510]]
	mov	rbp, rbp
	fmul	st(1), st(0)
	mov	rsp, rsp
	mov	rsi, rsp
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
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
	mov	rdi, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	al, r8b
	nop	
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], 0
.label_518:
	jmp	.label_508
.label_508:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	jmp	.label_505
.label_526:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_516
	mov	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_521
	nop	
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c8]
	div	rsi
	imul	rdx, rdx, 0xa
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	rdx, rdi
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	mov	rbp, rbp
	div	dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	edx, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sar	ecx, 1
	lea	rsi, [rsi]
	add	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, r8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rdi
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	nop	
	jae	.label_514
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0x1cc], eax
	jmp	.label_524
.label_514:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
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
	mov	dword ptr [rbp - 0x1cc], eax
.label_524:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1cd], cl
	mov	rsp, rsp
	ja	.label_538
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1cd], cl
.label_538:
	mov	al, byte ptr [rbp - 0x1cd]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_534
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_515
	cmp	dword ptr [rbp - 0x2c], 1
	lea	rsi, [rsi]
	jne	.label_504
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	and	edx, 1
	nop	
	add	ecx, edx
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_509
	mov	rbp, rbp
	jmp	.label_519
.label_504:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_519
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_519
.label_509:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	nop	
	cmp	dword ptr [rbp - 0x3c], 0xa
	lea	rdi, [rdi]
	jne	.label_530
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
.label_530:
	lea	rdi, [rdi]
	jmp	.label_519
.label_519:
	nop	
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_513
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jne	.label_539
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 8
	cmp	eax, 0
	jne	.label_513
.label_539:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dl
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	nop	
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_513:
	jmp	.label_515
.label_515:
	jmp	.label_521
.label_521:
	jmp	.label_516
.label_516:
	nop	
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_517
	lea	rsi, [rsi]
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
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
	jl	.label_520
	lea	rsi, [rsi]
	jmp	.label_506
.label_517:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_506
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	nop	
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_506
.label_520:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	ecx, 0x10
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_500
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_500
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_500
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_528
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_528:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 1
.label_500:
	jmp	.label_506
.label_506:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_535:
	mov	rsp, rsp
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	nop	
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10c]
	lea	rsi, [rsi]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_535
	lea	rdi, [rdi]
	jmp	.label_505
.label_505:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_525
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_525:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	eax, 0x80
	nop	
	cmp	eax, 0
	je	.label_511
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_527
	nop	
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_533
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	jne	.label_537
	lea	rsi, [rsi]
	jmp	.label_533
.label_537:
	jmp	.label_545
.label_545:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_546
.label_533:
	lea	rsi, [rsi]
	jmp	.label_527
.label_527:
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	or	eax, ecx
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_499
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_499
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_499:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_542
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_502
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	jne	.label_502
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1d4], eax
	lea	rdi, [rdi]
	jmp	.label_550
.label_502:
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	nop	
	mov	dword ptr [rbp - 0x1d4], ecx
.label_550:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_542:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x100
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_540
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_544
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_544
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_544:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x42
.label_540:
	jmp	.label_511
.label_511:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a050

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
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	je	.label_551
	nop	
	fld	xword ptr [rbp - 0x20]
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
	fld	xword ptr [rbp - 0x20]
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_553]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	mov	rbp, rbp
	fnstcw	word ptr [rbp - 0x4c]
	nop	
	mov	dx, word ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x4c], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	nop	
	jne	.label_554
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	nop	
	movzx	edx, cl
	mov	eax, edx
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [+ (rax * 4) + label_548]]
	nop	
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	setp	cl
	lea	rdi, [rdi]
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_554:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	setns	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	nop	
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_548]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x20]
.label_551:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1e0

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x90
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_561:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_556
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jge	.label_560
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	jmp	.label_557
.label_560:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_557:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_556:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_559
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_559:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_558
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_558:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	nop	
	jmp	.label_561
	.section	.text
	.align	32
	#Procedure 0x40a3a0
	.globl human_options
	.type human_options, @function
human_options:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	humblock
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx], 0
	jne	.label_562
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x40a420

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_564
	movabs	rdi, OFFSET FLAT:.str.4_0
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_564
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	rax, 0
	jne	.label_564
	lea	rdi, [rdi]
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_571
.label_564:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_575
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_575:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	argmatch
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r9d
	nop	
	cmp	r8d, r9d
	lea	rdi, [rdi]
	jg	.label_567
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_569
.label_567:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_577
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	nop	
	jmp	.label_568
.label_577:
	jmp	.label_570
.label_570:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_574
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x35], dl
.label_574:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_573
	lea	rdi, [rdi]
	jmp	.label_566
.label_573:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_563
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	jne	.label_565
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_565:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x42
	jne	.label_576
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x69
	lea	rsi, [rsi]
	jne	.label_572
.label_576:
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	or	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
.label_572:
	jmp	.label_566
.label_563:
	mov	rsp, rsp
	jmp	.label_578
.label_578:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_570
.label_566:
	jmp	.label_569
.label_569:
	jmp	.label_571
.label_571:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_568:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6e0

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
	.section	.text
	.align	32
	#Procedure 0x40a720
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_579
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	nop	
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x90], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_579:
	nop	
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 2
	jne	.label_582
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_4
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_582
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_581
	jmp	.label_583
.label_583:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rbp, rbp
	je	.label_585
	mov	rbp, rbp
	jmp	.label_584
.label_581:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jmp	.label_580
.label_585:
	lea	rax, [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
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
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, rax
	call	version_etc_va
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_584:
	mov	rsp, rsp
	jmp	.label_580
.label_580:
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9c0

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
	sub	rsp, 0x1d0
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_586
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	nop	
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_586:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	mov	rsp, rsp
	movabs	r15, OFFSET FLAT:.str_4
	mov	rbp, rbp
	movabs	r12, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], r10d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	lea	rsi, [rsi]
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_587
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_590
	jmp	.label_591
.label_591:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x76
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_588
	nop	
	jmp	.label_592
.label_590:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jmp	.label_589
.label_588:
	nop	
	lea	rax, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
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
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_592:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_589:
	lea	rdi, [rdi]
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	add	rsp, 0x1d0
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acb0

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
	jne	.label_595
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_595:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_593
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_597
.label_593:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_597:
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
	jl	.label_596
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
	jne	.label_596
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
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
	jne	.label_594
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_594:
	jmp	.label_596
.label_596:
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
	#Procedure 0x40ae30
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
	je	.label_598
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_599
.label_598:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_599
.label_599:
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
	#Procedure 0x40aee0
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
	je	.label_600
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_601
.label_600:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_601
.label_601:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af40
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
	je	.label_602
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_603
.label_602:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afa0

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
	je	.label_604
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_605
.label_604:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_605
.label_605:
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
	#Procedure 0x40b0a0
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
	jne	.label_606
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_606:
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
	#Procedure 0x40b100

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
	jne	.label_607
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_607:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	#Procedure 0x40b1a0
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
	je	.label_610
	mov	rax, qword ptr [rbp - 0x28]
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
	#Procedure 0x40b2a0

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
.label_729:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_632
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_787]]
	jmp	rcx
.label_1140:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1139:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_796
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_801
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_801:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_796
.label_796:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_618
.label_1141:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_618
.label_1142:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_620
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
.label_620:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_636
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_658:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_643
	jmp	.label_644
.label_644:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_646
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_646:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_658
.label_643:
	mov	rbp, rbp
	jmp	.label_636
.label_636:
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
	jmp	.label_618
.label_1137:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1136:
	mov	byte ptr [rbp - 0x7b], 1
.label_1138:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_674
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_674:
	jmp	.label_794
.label_794:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_679
	jmp	.label_683
.label_683:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_634
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_634:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_679
.label_679:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_618
.label_1135:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_618
.label_632:
	call	abort
.label_618:
	mov	qword ptr [rbp - 0x58], 0
.label_788:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_708
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
	jmp	.label_710
.label_708:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_710:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_724
	mov	rbp, rbp
	jmp	.label_733
.label_724:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_700
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_700
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_700
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_752
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_752
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_759
.label_752:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_759:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_700
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
	jne	.label_700
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_777
	jmp	.label_662
.label_777:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_700:
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
	ja	.label_779
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_689]]
	nop	
	jmp	rcx
.label_1147:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_792
	mov	rsp, rsp
	jmp	.label_797
.label_797:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_740
	jmp	.label_662
.label_740:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_757
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_757
	nop	
	jmp	.label_811
.label_811:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_812
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_812:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_619
.label_619:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_623
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_623:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_633
.label_633:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_641
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_757:
	lea	rsi, [rsi]
	jmp	.label_809
.label_809:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_649
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_649:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_655
.label_655:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_661
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_661
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_661
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_661
	nop	
	jmp	.label_677
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_678
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_678:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_685
.label_685:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_663
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_663:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_661
.label_661:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_703
.label_792:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_705
	mov	rbp, rbp
	jmp	.label_675
.label_705:
	jmp	.label_703
.label_703:
	jmp	.label_640
.label_1158:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_712
	mov	rbp, rbp
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_719
	jmp	.label_725
.label_712:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_728
	jmp	.label_662
.label_728:
	jmp	.label_638
.label_719:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_635
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_635
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_635
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
	je	.label_748
	nop	
	jmp	.label_653
.label_653:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_748
	jmp	.label_761
.label_761:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_748
	jmp	.label_765
.label_765:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_748
	jmp	.label_758
.label_758:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_773
	jmp	.label_748
.label_748:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_804
	jmp	.label_662
.label_804:
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
	jae	.label_782
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_782:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_793
.label_793:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_800
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_800:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_808
.label_808:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_810
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_810:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_667
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_667:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_628
.label_773:
	jmp	.label_628
.label_628:
	jmp	.label_635
.label_635:
	jmp	.label_638
.label_725:
	jmp	.label_638
.label_638:
	jmp	.label_640
.label_1148:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_642
.label_1149:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_642
.label_1153:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_642
.label_1151:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_647
.label_1154:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_647
.label_1150:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_647
.label_1152:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_642
.label_1159:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_650
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_657
	nop	
	jmp	.label_662
.label_657:
	lea	rsi, [rsi]
	jmp	.label_626
.label_650:
	test	byte ptr [rbp - 0x79], 1
	je	.label_666
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_666
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_666
	jmp	.label_626
.label_666:
	jmp	.label_647
.label_647:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_673
	test	byte ptr [rbp - 0x7b], 1
	je	.label_673
	jmp	.label_662
.label_673:
	mov	rsp, rsp
	jmp	.label_642
.label_642:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_681
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_624
.label_681:
	jmp	.label_640
.label_1160:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_688
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_692
	jmp	.label_696
.label_688:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_692
.label_696:
	nop	
	jmp	.label_640
.label_692:
	jmp	.label_791
.label_791:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_731
	lea	rsi, [rsi]
	jmp	.label_640
.label_731:
	nop	
	jmp	.label_707
.label_707:
	mov	byte ptr [rbp - 0x83], 1
.label_1155:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_709
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_709
	jmp	.label_662
.label_709:
	lea	rsi, [rsi]
	jmp	.label_640
.label_1157:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_715
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_723
	jmp	.label_662
.label_723:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_727
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_727
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_727:
	jmp	.label_736
.label_736:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_738
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_738:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_745
.label_745:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_803
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_756
.label_756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_760
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_760:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_715:
	lea	rsi, [rsi]
	jmp	.label_640
.label_1156:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_640
.label_779:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_774
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
	jmp	.label_617
.label_774:
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
	jne	.label_795
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_795:
	jmp	.label_764
.label_764:
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
	jne	.label_621
	jmp	.label_627
.label_621:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_630
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_627
.label_630:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_637
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_660:
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
	jae	.label_684
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_684:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_656
	jmp	.label_659
.label_656:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_660
.label_659:
	jmp	.label_627
.label_637:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_668
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_668
	mov	qword ptr [rbp - 0xb8], 1
.label_714:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_672
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
	jb	.label_676
	jmp	.label_693
.label_693:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_676
	jmp	.label_699
.label_699:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_676
	jmp	.label_706
.label_706:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_753
	mov	rsp, rsp
	jmp	.label_676
.label_676:
	mov	rsp, rsp
	jmp	.label_662
.label_753:
	jmp	.label_713
.label_713:
	mov	rsp, rsp
	jmp	.label_805
.label_805:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_714
.label_672:
	mov	rbp, rbp
	jmp	.label_668
.label_668:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_726
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_726:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_730
.label_730:
	lea	rsi, [rsi]
	jmp	.label_737
.label_737:
	jmp	.label_739
.label_739:
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
	jne	.label_764
.label_627:
	jmp	.label_617
.label_617:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_750
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_671
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_671
.label_750:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_732:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_766
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_766
	jmp	.label_770
.label_770:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_772
	jmp	.label_662
.label_772:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_776
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_776
	lea	rdi, [rdi]
	jmp	.label_780
.label_780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_783:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_785
.label_785:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_790
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_790:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_802
.label_802:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_762
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_762:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_776:
	jmp	.label_612
.label_612:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_614
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_614:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_622
.label_622:
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_702
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
.label_702:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_711
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_786
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
.label_786:
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
	jmp	.label_654
.label_766:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_665
	lea	rdi, [rdi]
	jmp	.label_651
.label_651:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_669:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_665:
	nop	
	jmp	.label_654
.label_654:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_680
	jmp	.label_686
.label_680:
	lea	rsi, [rsi]
	jmp	.label_687
.label_687:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_690
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_690
	lea	rsi, [rsi]
	jmp	.label_695
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_697
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_697:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_704
.label_704:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_767:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_690:
	nop	
	jmp	.label_718
.label_718:
	mov	rsp, rsp
	jmp	.label_720
.label_720:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_722
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_722:
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
	jmp	.label_732
.label_686:
	mov	rsp, rsp
	jmp	.label_626
.label_671:
	lea	rsi, [rsi]
	jmp	.label_640
.label_640:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_746
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_749
.label_746:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_751
.label_749:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_751
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
	jne	.label_754
.label_751:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_754
	mov	rsp, rsp
	jmp	.label_626
.label_754:
	nop	
	jmp	.label_624
.label_624:
	jmp	.label_768
.label_768:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_769
	jmp	.label_662
.label_769:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_775
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_775
	lea	rdi, [rdi]
	jmp	.label_778
.label_778:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_781
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_781:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_789
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_789:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_799
.label_799:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_807
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_807:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_775:
	jmp	.label_613
.label_613:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_615
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_615:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_806
.label_806:
	nop	
	jmp	.label_626
.label_626:
	jmp	.label_629
.label_629:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_631
	test	byte ptr [rbp - 0x82], 1
	jne	.label_631
	lea	rdi, [rdi]
	jmp	.label_743
.label_743:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_639
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_698
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_631:
	jmp	.label_682
.label_682:
	nop	
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_664
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_664:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_670
	mov	byte ptr [rbp - 0x7e], 0
.label_670:
	mov	rbp, rbp
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_788
.label_733:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_648
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_648
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_648
	nop	
	jmp	.label_662
.label_648:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_694
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_694
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_694
	test	byte ptr [rbp - 0x7e], 1
	je	.label_701
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
	jmp	.label_717
.label_701:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_721
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_721
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_729
.label_721:
	jmp	.label_734
.label_734:
	mov	rbp, rbp
	jmp	.label_694
.label_694:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_735
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_735
	mov	rbp, rbp
	jmp	.label_741
.label_741:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_742
	lea	rdi, [rdi]
	jmp	.label_744
.label_744:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_747:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_741
.label_742:
	jmp	.label_735
.label_735:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_763
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_763:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_717
.label_662:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_771
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_771
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_771:
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
.label_717:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cbc0
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
	#Procedure 0x40cc30

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
	je	.label_813
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_814
.label_813:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_814
.label_814:
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
	je	.label_815
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_815:
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
	#Procedure 0x40ce00
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
	.section	.text
	.align	32
	#Procedure 0x40cf10

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
	#Procedure 0x40cf60

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
	jge	.label_822
	call	abort
.label_822:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_825
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
	jge	.label_826
	call	xalloc_die
.label_826:
	test	byte ptr [rbp - 0x31], 1
	je	.label_827
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_823
.label_827:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_823:
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
	je	.label_821
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_816]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_821:
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
.label_825:
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
	ja	.label_828
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
	je	.label_824
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_824:
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
.label_828:
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
	#Procedure 0x40d290

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
	#Procedure 0x40d2d0
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
	#Procedure 0x40d300
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
	#Procedure 0x40d340

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
	#Procedure 0x40d3a0

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
	jne	.label_829
	call	abort
.label_829:
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
	#Procedure 0x40d440

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
	#Procedure 0x40d4b0

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
	#Procedure 0x40d4f0
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
	#Procedure 0x40d530

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
	#Procedure 0x40d5e0

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
	#Procedure 0x40d620

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
	#Procedure 0x40d650
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
	#Procedure 0x40d690

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
	#Procedure 0x40d780

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
	#Procedure 0x40d7d0

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
	#Procedure 0x40d870
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
	#Procedure 0x40d8c0
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
	#Procedure 0x40d920

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
	#Procedure 0x40d960
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
	#Procedure 0x40d9a0

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
	#Procedure 0x40d9e0

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
	#Procedure 0x40da20

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
	je	.label_833
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_831
.label_833:
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
	jne	.label_832
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_831
.label_832:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_831
.label_830:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_831:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db60

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, eax
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x18]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x20], rcx
	mov	ecx, eax
	mov	r8, qword ptr [rbp - 0x20]
	nop	
	call	verror_at_line
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbc0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xvasprintf
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_836
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_834
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error_at_line
	jmp	.label_837
.label_834:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
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
	mov	dword ptr [rbp - 0x34], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	call	abort
.label_835:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dcc0

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
	je	.label_838
	movabs	rsi, OFFSET FLAT:.str_6
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
	jmp	.label_841
.label_838:
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
.label_841:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_840
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_842]]
	jmp	rcx
.label_1196:
	jmp	.label_839
.label_1197:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_839
.label_1198:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_839
.label_1199:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_839
.label_1200:
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
	jmp	.label_839
.label_1201:
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
	jmp	.label_839
.label_1202:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_839
.label_1203:
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
	jmp	.label_839
.label_1204:
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
	jmp	.label_839
.label_1205:
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
	jmp	.label_839
.label_840:
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
.label_839:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e430
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
.label_843:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_844
	mov	rbp, rbp
	jmp	.label_845
.label_845:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_843
.label_844:
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
	#Procedure 0x40e4e0

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
.label_852:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_851
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_847
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
	jmp	.label_848
.label_847:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_848:
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
.label_851:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_850
	mov	rsp, rsp
	jmp	.label_846
.label_850:
	jmp	.label_849
.label_849:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_852
.label_846:
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
	#Procedure 0x40e640
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
	je	.label_853
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
.label_853:
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
	#Procedure 0x40e7f0
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
	#Procedure 0x40e8a0
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
	.section	.text
	.align	32
	#Procedure 0x40e900

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
	jne	.label_855
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_855
	lea	rdi, [rdi]
	call	xalloc_die
.label_855:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e960
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
	jae	.label_856
	mov	rsp, rsp
	call	xalloc_die
.label_856:
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
	#Procedure 0x40e9e0

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
	jne	.label_857
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_857
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_859
.label_857:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_858
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_858
	lea	rsi, [rsi]
	call	xalloc_die
.label_858:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_859:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea90

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
	jne	.label_860
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_862
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
.label_862:
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_861
	call	xalloc_die
.label_861:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_863:
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
	#Procedure 0x40ebc0

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
	#Procedure 0x40ebf0
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
	#Procedure 0x40ec30
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
	#Procedure 0x40ec80
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
	jb	.label_865
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_866
.label_865:
	lea	rsi, [rsi]
	call	xalloc_die
.label_866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecf0

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
	#Procedure 0x40ed40
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
	#Procedure 0x40eda0

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
	.section	.text
	.align	32
	#Procedure 0x40ee00

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_867
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_867
	jmp	.label_892
.label_867:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_892:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_906
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_907
.label_906:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_907
.label_907:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_874:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_910
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_874
.label_910:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_884
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_881
.label_884:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_898
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_904
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_904
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_904
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_926
.label_904:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_881
.label_926:
	lea	rdi, [rdi]
	jmp	.label_886
.label_898:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_869
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_878
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_881
.label_878:
	mov	dword ptr [rbp - 0x4c], 1
.label_869:
	jmp	.label_886
.label_886:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_897
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_881
.label_897:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_896
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_916
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_881
.label_916:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_872
	jmp	.label_932
.label_932:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_872
	nop	
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_872
	nop	
	jmp	.label_885
.label_885:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_872
	lea	rsi, [rsi]
	jmp	.label_893
.label_893:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_872
	jmp	.label_901
.label_901:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_872
	jmp	.label_908
.label_908:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_872
	mov	rsp, rsp
	jmp	.label_918
.label_918:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_872
	jmp	.label_925
.label_925:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_872
	mov	rsp, rsp
	jmp	.label_931
.label_931:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_872
	jmp	.label_875
.label_875:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_871
	jmp	.label_872
.label_872:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_890
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_876
	lea	rsi, [rsi]
	jmp	.label_905
.label_905:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_876
	jmp	.label_914
.label_914:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_913
	lea	rsi, [rsi]
	jmp	.label_920
.label_920:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_923
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_923:
	jmp	.label_913
.label_876:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_913:
	jmp	.label_890
.label_890:
	nop	
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_873
	jmp	.label_891
.label_891:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_888
	jmp	.label_894
.label_894:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_880
	jmp	.label_899
.label_899:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_903
	nop	
	jmp	.label_911
.label_911:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_912
	nop	
	jmp	.label_919
.label_919:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_882
	mov	rsp, rsp
	jmp	.label_927
.label_927:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_922
	jmp	.label_928
.label_928:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_868
	mov	rbp, rbp
	jmp	.label_902
.label_902:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_921
	jmp	.label_887
.label_887:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_889
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_895
	jmp	.label_900
.label_900:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_880
	jmp	.label_909
.label_909:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_903
	jmp	.label_915
.label_915:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_912
	jmp	.label_924
.label_924:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_922
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_917
	jmp	.label_870
.label_889:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_873:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_895:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_883
.label_888:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_880:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_903:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_912:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_882:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_883
.label_922:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_883
.label_917:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_868:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_921:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_883
.label_870:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_881
.label_883:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_929
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_929:
	jmp	.label_896
.label_896:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_881:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6f0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_933
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_934
.label_933:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_934:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f770

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_935:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_936
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_935
.label_936:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7f0

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_942:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_943
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_937
.label_943:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	je	.label_940
	mov	rbp, rbp
	jmp	.label_938
.label_940:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_939
	mov	rsp, rsp
	jmp	.label_938
.label_939:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_942
.label_938:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_941
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_944
	lea	rdi, [rdi]
	call	xalloc_die
.label_944:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_937
.label_941:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_937:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f920

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi]
	nop	
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_952:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_951
	lea	rax, [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_954
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	eax, 8
	mov	rsp, rsp
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	jmp	.label_949
.label_954:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_949:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_952
.label_951:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	je	.label_947
	nop	
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_950
.label_947:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_955
.label_950:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_945:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	jbe	.label_946
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_948
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	jmp	.label_953
.label_948:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rcx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_953:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_945
.label_946:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_955:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fbd0

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
	jge	.label_960
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_958
.label_960:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_957
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
	je	.label_956
.label_957:
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_959
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
.label_959:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_958:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fcf0

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
	je	.label_967
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
.label_967:
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
	je	.label_964
	nop	
	jmp	.label_975
.label_975:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_976
	jmp	.label_982
.label_964:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_984
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
	jmp	.label_968
.label_984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_968:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_986
.label_976:
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
	ja	.label_988
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
	jmp	.label_966
.label_988:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_966:
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
.label_1175:
	jmp	.label_986
.label_982:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_963
	nop	
	jmp	.label_969
.label_969:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_965
	jmp	.label_980
.label_980:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_963
	nop	
	jmp	.label_987
.label_987:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_965
	nop	
	jmp	.label_961
.label_961:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_963
	lea	rsi, [rsi]
	jmp	.label_972
.label_972:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_963
	lea	rsi, [rsi]
	jmp	.label_981
.label_981:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_965
	mov	rsp, rsp
	jmp	.label_989
.label_989:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_963
	jmp	.label_962
.label_962:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_965
	lea	rsi, [rsi]
	jmp	.label_971
.label_971:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_963
	jmp	.label_983
.label_983:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_965
	mov	rsp, rsp
	jmp	.label_990
.label_990:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_963
	lea	rsi, [rsi]
	jmp	.label_978
.label_978:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_963
	nop	
	jmp	.label_977
.label_977:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_979
	lea	rdi, [rdi]
	jmp	.label_965
.label_965:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_970
.label_963:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_991
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
	jmp	.label_973
.label_991:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_973:
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
	jmp	.label_970
.label_979:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_974
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
	jmp	.label_985
.label_974:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_985:
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
.label_970:
	jmp	.label_986
.label_986:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410370

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
	#Procedure 0x4103c0

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
	jg	.label_992
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
	jle	.label_999
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_994
.label_999:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_996
.label_994:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
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
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_997:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_993
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_993
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_998
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
	jne	.label_995
.label_998:
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
.label_995:
	jmp	.label_993
.label_993:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x410540

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
	je	.label_1001
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1002
.label_1001:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1003
.label_1002:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1003:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4105b0

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
	je	.label_1004
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
.label_1004:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410610

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
	jne	.label_1005
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1005
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1005
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
	jne	.label_1006
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1007
.label_1006:
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
	jmp	.label_1007
.label_1005:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1007:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410720

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
	jne	.label_1008
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1008:
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
	ja	.label_1009
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	jmp	.label_1010
.label_1009:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1010:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410810

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x410830

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1015:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1011
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1012
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_1016
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1018
.label_1016:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1021
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1013
.label_1021:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1017
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_1019
.label_1017:
	nop	
	mov	byte ptr [rbp - 0x41], 1
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
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1015
.label_1011:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1020
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1018
.label_1020:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1018:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4109e0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1023
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1024
.label_1023:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1024:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
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
	.section	.text
	.align	32
	#Procedure 0x410ac0

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1027:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1029
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1028
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1026
.label_1028:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1030
.label_1026:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_2
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1030:
	jmp	.label_1025
.label_1025:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1027
.label_1029:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c70
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1031
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1032
.label_1031:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], -1
.label_1032:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d30
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_1035:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1037
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30]
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1033
.label_1034:
	lea	rdi, [rdi]
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1035
.label_1037:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1033:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e00

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
	jne	.label_1038
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1042
.label_1038:
	mov	rbp, rbp
	jmp	.label_1039
.label_1039:
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
	jne	.label_1041
	jmp	.label_1040
.label_1041:
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
	je	.label_1039
.label_1040:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1042:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ef0

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
	je	.label_1044
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_9
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1045
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1043
.label_1045:
	mov	byte ptr [rbp - 5], 0
.label_1043:
	jmp	.label_1044
.label_1044:
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
	#Procedure 0x410f90

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
	.section	.text
	.align	32
	#Procedure 0x411010

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jb	.label_1048
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1049
.label_1048:
	mov	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1049
.label_1049:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411080
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
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
	.section	.text
	.align	32
	#Procedure 0x4110d0
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x411130
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jb	.label_1051
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_1050
.label_1051:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1050:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411180

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
	.section	.text
	.align	32
	#Procedure 0x4111e0
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
	jb	.label_1055
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1055
	jmp	.label_1056
.label_1056:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1058
	jmp	.label_1055
.label_1055:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1059
.label_1058:
	mov	byte ptr [rbp - 1], 0
.label_1059:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411250
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
	jb	.label_1060
	jmp	.label_1063
.label_1063:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1061
	jmp	.label_1060
.label_1060:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1062
.label_1061:
	mov	byte ptr [rbp - 1], 0
.label_1062:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1064
	jmp	.label_1065
.label_1065:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1066
.label_1064:
	mov	byte ptr [rbp - 1], 0
.label_1066:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1067
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1067:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411300
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
	jb	.label_1068
	jmp	.label_1070
.label_1070:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1071
	jmp	.label_1068
.label_1068:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1069
.label_1071:
	mov	byte ptr [rbp - 1], 0
.label_1069:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411350
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1072
	jmp	.label_1074
.label_1074:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1073
.label_1072:
	mov	byte ptr [rbp - 1], 0
.label_1073:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411390
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1075
	jmp	.label_1077
.label_1077:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1076
.label_1075:
	mov	byte ptr [rbp - 1], 0
.label_1076:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113d0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1078
	jmp	.label_1080
.label_1080:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1079
.label_1078:
	mov	byte ptr [rbp - 1], 0
.label_1079:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411410
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1081
	jmp	.label_1083
.label_1083:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1082
.label_1081:
	mov	byte ptr [rbp - 1], 0
.label_1082:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411450
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
	jb	.label_1084
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1084
	jmp	.label_1088
.label_1088:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1084
	jmp	.label_1086
.label_1086:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1089
	jmp	.label_1084
.label_1084:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1085
.label_1089:
	mov	byte ptr [rbp - 1], 0
.label_1085:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4114d0
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
	jb	.label_1090
	jmp	.label_1092
.label_1092:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1093
	jmp	.label_1090
.label_1090:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1091
.label_1093:
	mov	byte ptr [rbp - 1], 0
.label_1091:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411520
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1094
	jmp	.label_1096
.label_1096:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1095
.label_1094:
	mov	byte ptr [rbp - 1], 0
.label_1095:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411560
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
	jb	.label_1097
	jmp	.label_1100
.label_1100:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1097
	jmp	.label_1098
.label_1098:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1099
	jmp	.label_1097
.label_1097:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1101
.label_1099:
	mov	byte ptr [rbp - 1], 0
.label_1101:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115d0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1102
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1103
.label_1102:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1103:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411610
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1105
	jmp	.label_1107
.label_1107:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1106
.label_1105:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1106:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411700

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat