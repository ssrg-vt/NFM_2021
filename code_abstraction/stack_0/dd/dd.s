	.section	.text
	.align	32
	#Procedure 0x401d40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	jmp	.label_10
.label_10:
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
	jmp	.label_8
.label_9:
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
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x70], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4020d0

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
.label_16:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_15
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_15:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_13
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_16
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_11
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.50
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.53
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.54
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
	.align	32
	#Procedure 0x402270

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1c0
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x28], edi
	mov	qword ptr [rbp - 0x30], rsi
	call	install_signal_handlers
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.27
	movabs	rsi, OFFSET FLAT:.str.28
	mov	qword ptr [rbp - 0xf8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.27
	mov	qword ptr [rbp - 0x100], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:maybe_close_stdout
	mov	qword ptr [rbp - 0x108], rax
	call	atexit
	mov	dword ptr [rbp - 0x10c], eax
	call	getpagesize
	movabs	rdx, OFFSET FLAT:.str.25
	movabs	rcx, OFFSET FLAT:.str.27
	mov	r9d, 1
	movabs	rsi, OFFSET FLAT:usage
	movabs	rdi, OFFSET FLAT:.str.29
	movabs	r8, OFFSET FLAT:.str.30
	movabs	r10, OFFSET FLAT:.str.31
	xor	r11d, r11d
	mov	ebx, r11d
	movsxd	r14, eax
	mov	qword ptr [word ptr [page_size]],  r14
	mov	eax, dword ptr [rbp - 0x28]
	mov	r14, qword ptr [rbp - 0x30]
	mov	r15,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x118], rdi
	mov	edi, eax
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, r14
	mov	qword ptr [rbp - 0x128], r8
	mov	r8, r15
	mov	r14, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp], r14
	mov	r15, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], r15
	mov	r12, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], 0
	mov	al, 0
	mov	qword ptr [rbp - 0x130], rbx
	call	parse_gnu_standard_options_only
	mov	byte ptr [byte ptr [close_stdout_required]],  0
	mov	dword ptr [rbp - 0x34], 0
.label_39:
	cmp	dword ptr [rbp - 0x34], 0x100
	jge	.label_32
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x34]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_39
.label_32:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	scanargs
	call	apply_translations
	cmp	qword ptr [word ptr [input_file]],  0
	jne	.label_21
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	xor	edi, edi
	mov	qword ptr [word ptr [input_file]],  rax
	mov	esi,  dword ptr [dword ptr [input_flags]]
	mov	rdx,  qword ptr [word ptr [input_file]]
	call	set_fd_flags
	jmp	.label_28
.label_21:
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	or	ecx, 0
	mov	edi, eax
	mov	edx, ecx
	mov	ecx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_31
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x134], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x140], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x134]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_31:
	jmp	.label_28
.label_28:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	lseek
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x40], rax
	cmp	rsi, qword ptr [rbp - 0x40]
	setle	cl
	and	cl, 1
	mov	byte ptr [byte ptr [input_seekable]],  cl
	cmp	rsi, qword ptr [rbp - 0x40]
	jle	.label_38
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_19
.label_38:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x148], rax
.label_19:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [word ptr [input_offset]],  rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [dword ptr [input_seek_errno]],  ecx
	cmp	qword ptr [word ptr [output_file]],  0
	jne	.label_24
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	mov	edi, 1
	mov	qword ptr [word ptr [output_file]],  rax
	mov	esi,  dword ptr [dword ptr [output_flags]]
	mov	rdx,  qword ptr [word ptr [output_file]]
	call	set_fd_flags
	jmp	.label_34
.label_24:
	mov	al, 1
	xor	ecx, ecx
	mov	edx, 0x80
	mov	esi, 0x40
	mov	dword ptr [rbp - 0x44], 0x1b6
	mov	edi,  dword ptr [dword ptr [output_flags]]
	mov	r8d,  dword ptr [dword ptr [conversions_mask]]
	and	r8d, 0x1000
	cmp	r8d, 0
	cmovne	esi, ecx
	or	edi, esi
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x2000
	cmp	esi, 0
	cmovne	ecx, edx
	or	edi, ecx
	cmp	qword ptr [word ptr [seek_records]],  0
	mov	dword ptr [rbp - 0x14c], edi
	mov	byte ptr [rbp - 0x14d], al
	jne	.label_20
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x14d], cl
.label_20:
	mov	al, byte ptr [rbp - 0x14d]
	mov	ecx, 0x200
	xor	edx, edx
	test	al, 1
	cmovne	ecx, edx
	mov	edx, dword ptr [rbp - 0x14c]
	or	edx, ecx
	mov	dword ptr [rbp - 0x48], edx
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_42
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, 2
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_26
.label_42:
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, 1
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_26
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_26:
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_33
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	jne	.label_33
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [seek_records]]
	imul	rcx,  qword ptr [word ptr [output_blocksize]]
	add	rcx,  qword ptr [word ptr [seek_bytes]]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x58], rcx
	xor	edx, edx
	div	qword ptr [word ptr [output_blocksize]]
	cmp	rax,  qword ptr [word ptr [seek_records]]
	jae	.label_40
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [seek_records]]
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_40:
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x50]
	call	iftruncate
	cmp	eax, 0
	je	.label_30
	call	__errno_location
	mov	edi, 1
	lea	rsi, [rbp - 0xf0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	__fstat
	cmp	eax, 0
	je	.label_35
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x164], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x170], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x164]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_35:
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_18
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_18
	mov	eax, dword ptr [rbp - 0xd8]
	sub	eax, dword ptr [rbp - 0xd8]
	cmp	eax, 0
	je	.label_23
.label_18:
	movabs	rdi, OFFSET FLAT:.str.37
	mov	esi, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x174], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x180], rax
	mov	qword ptr [rbp - 0x188], rcx
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x188]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_23:
	jmp	.label_30
.label_30:
	jmp	.label_33
.label_33:
	jmp	.label_34
.label_34:
	call	gethrxtime
	mov	qword ptr [word ptr [start_time]],  rax
	mov	rax,  qword ptr [word ptr [start_time]]
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [next_time]],  rax
	call	dd_copy
	mov	dword ptr [rbp - 0x38], eax
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_36
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_36
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_17
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_17
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.38
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x38], 1
.label_17:
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_29
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_29
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.38
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x19c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x19c]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x38], 1
.label_29:
	jmp	.label_25
.label_36:
	test	byte ptr [byte ptr [i_nocache]],  1
	jne	.label_37
	test	byte ptr [byte ptr [i_nocache_eof]],  1
	je	.label_41
.label_37:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	mov	byte ptr [rbp - 0x1a9], al
.label_41:
	test	byte ptr [byte ptr [o_nocache]],  1
	jne	.label_27
	test	byte ptr [byte ptr [o_nocache_eof]],  1
	je	.label_22
.label_27:
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	mov	byte ptr [rbp - 0x1aa], al
.label_22:
	jmp	.label_25
.label_25:
	call	finish_up
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x1c0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a60

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	getenv
	movabs	rdi, OFFSET FLAT:caught_signals
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	call	sigemptyset
	test	byte ptr [rbp - 1], 1
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_46
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
	mov	dword ptr [rbp - 0xa8], eax
.label_46:
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	call	sigaction
	mov	edi, 1
	mov	edx, edi
	cmp	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0xac], eax
	je	.label_45
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
	mov	dword ptr [rbp - 0xb0], eax
.label_45:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	mov	rcx, rax
	mov	edx, 0x80
	lea	rdi, [rbp - 0xa0]
	add	rdi, 8
	mov	dword ptr [rbp - 0xb4], esi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	esi, dword ptr [rbp - 0xb4]
	call	sigismember
	cmp	eax, 0
	je	.label_44
	mov	edi, 0xa
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:siginfo_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0x18], 0
	call	sigaction
	mov	dword ptr [rbp - 0xc4], eax
.label_44:
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	cmp	eax, 0
	je	.label_43
	mov	edi, 2
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:interrupt_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0x18], 0xc0000000
	call	sigaction
	mov	dword ptr [rbp - 0xc8], eax
.label_43:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [close_stdout_required]],  1
	je	.label_47
	call	close_stdout
	jmp	.label_48
.label_47:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_49
	mov	edi, 1
	call	_exit
.label_49:
	jmp	.label_48
.label_48:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c40

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], -1
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	edi,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x34], edi
.label_81:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_71
	mov	esi, 0x3d
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_83
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_83:
	movabs	rsi, OFFSET FLAT:.str.57
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_104
	jmp	.label_53
.label_104:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [input_file]],  rax
	jmp	.label_79
.label_53:
	movabs	rsi, OFFSET FLAT:.str.58
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_111
	jmp	.label_114
.label_111:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [output_file]],  rax
	jmp	.label_78
.label_114:
	movabs	rsi, OFFSET FLAT:.str.59
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_120
	jmp	.label_121
.label_120:
	movabs	rsi, OFFSET FLAT:conversions
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:.str.60
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_77
.label_121:
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_76
	jmp	.label_134
.label_76:
	movabs	rsi, OFFSET FLAT:flags
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:.str.62
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [input_flags]]
	mov	dword ptr [dword ptr [input_flags]],  eax
	jmp	.label_75
.label_134:
	movabs	rsi, OFFSET FLAT:.str.63
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_51
	jmp	.label_56
.label_51:
	movabs	rsi, OFFSET FLAT:flags
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:.str.64
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [output_flags]]
	mov	dword ptr [dword ptr [output_flags]],  eax
	jmp	.label_73
.label_56:
	movabs	rsi, OFFSET FLAT:.str.65
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_68
	jmp	.label_70
.label_68:
	movabs	rsi, OFFSET FLAT:statuses
	mov	edx, 1
	movabs	rcx, OFFSET FLAT:.str.66
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	mov	dword ptr [dword ptr [status_level]],  eax
	jmp	.label_72
.label_70:
	lea	rsi, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_integer
	movabs	rsi, OFFSET FLAT:.str.67
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_95
	jmp	.label_98
.label_95:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	shl	rdx, 1
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_99
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_107
.label_99:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_107
.label_107:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_116
.label_98:
	movabs	rsi, OFFSET FLAT:.str.68
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_124
	jmp	.label_126
.label_124:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_127
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_132
.label_127:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_132
.label_132:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	jmp	.label_136
.label_126:
	movabs	rsi, OFFSET FLAT:.str.69
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_58
	jmp	.label_60
.label_58:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	shl	rdx, 1
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_61
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_69
.label_61:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_69
.label_69:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_86
.label_60:
	movabs	rsi, OFFSET FLAT:.str.70
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_93
	jmp	.label_96
.label_93:
	mov	qword ptr [rbp - 0x60], 1
	mov	qword ptr [rbp - 0x68], -1
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [conversion_blocksize]],  rax
	jmp	.label_97
.label_96:
	movabs	rsi, OFFSET FLAT:.str.71
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_74
	jmp	.label_106
.label_74:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_94
.label_106:
	movabs	rsi, OFFSET FLAT:.str.72
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_112
	jmp	.label_115
.label_112:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_91
.label_115:
	movabs	rsi, OFFSET FLAT:.str.73
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_89
	jmp	.label_128
.label_89:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_63
.label_128:
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_63:
	jmp	.label_91
.label_91:
	jmp	.label_94
.label_94:
	jmp	.label_97
.label_97:
	jmp	.label_86
.label_86:
	jmp	.label_136
.label_136:
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_137
	mov	dword ptr [rbp - 0x4c], 4
	jmp	.label_54
.label_137:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_50
	mov	dword ptr [rbp - 0x4c], 1
.label_50:
	jmp	.label_54
.label_54:
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_85
	movabs	rdi, OFFSET FLAT:.str.75
	xor	eax, eax
	mov	ecx, 0x4b
	cmp	dword ptr [rbp - 0x4c], 1
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_85:
	jmp	.label_72
.label_72:
	jmp	.label_73
.label_73:
	jmp	.label_75
.label_75:
	jmp	.label_77
.label_77:
	jmp	.label_78
.label_78:
	jmp	.label_79
.label_79:
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_81
.label_71:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_88
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_90
.label_88:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x800
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_90:
	cmp	qword ptr [word ptr [input_blocksize]],  0
	jne	.label_118
	mov	qword ptr [word ptr [input_blocksize]],  0x200
.label_118:
	cmp	qword ptr [word ptr [output_blocksize]],  0
	jne	.label_102
	mov	qword ptr [word ptr [output_blocksize]],  0x200
.label_102:
	cmp	qword ptr [word ptr [conversion_blocksize]],  0
	jne	.label_105
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xffffffe7
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_105:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x101000
	cmp	eax, 0
	je	.label_110
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax, 0x101000
	mov	dword ptr [dword ptr [input_flags]],  eax
.label_110:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 1
	cmp	eax, 0
	je	.label_117
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.76
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_117:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_133
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.77
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_133:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0xc
	cmp	eax, 0
	je	.label_59
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.79
	movabs	rcx, OFFSET FLAT:.str.78
	mov	edx,  dword ptr [dword ptr [output_flags]]
	and	edx, 4
	cmp	edx, 0
	cmovne	rdi, rcx
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:.str.1_0
	mov	edi, edx
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_59:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 8
	cmp	eax, 0
	je	.label_87
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_87
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [skip_records]],  rax
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [skip_bytes]],  rdx
	jmp	.label_92
.label_87:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_101
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [skip_records]],  rax
.label_101:
	jmp	.label_92
.label_92:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 4
	cmp	eax, 0
	je	.label_82
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_82
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [max_records]],  rax
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [max_bytes]],  rdx
	jmp	.label_108
.label_82:
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_119
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [max_records]],  rax
.label_119:
	jmp	.label_108
.label_108:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_125
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_125
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [word ptr [seek_records]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [word ptr [seek_bytes]],  rdx
	jmp	.label_129
.label_125:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_135
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [seek_records]],  rax
.label_135:
	jmp	.label_129
.label_129:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_55
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_55
	mov	al, 1
	cmp	qword ptr [word ptr [skip_records]],  0
	mov	byte ptr [rbp - 0xba], al
	jne	.label_62
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [max_records]]
	jae	.label_65
	mov	al, 1
	cmp	qword ptr [word ptr [max_records]],  -1
	mov	byte ptr [rbp - 0xba], al
	jb	.label_62
.label_65:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xba], cl
.label_62:
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_55:
	mov	al, byte ptr [rbp - 0xb9]
	movabs	rcx, OFFSET FLAT:iread
	movabs	rdx, OFFSET FLAT:iread_fullblock
	and	al, 1
	mov	byte ptr [byte ptr [warn_partial_read]],  al
	mov	esi,  dword ptr [dword ptr [input_flags]]
	and	esi, 1
	cmp	esi, 0
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [iread_fnc]],  rcx
	mov	esi,  dword ptr [dword ptr [input_flags]]
	and	esi, 0xfffffffe
	mov	dword ptr [dword ptr [input_flags]],  esi
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 7
	mov	edi, esi
	call	multiple_bits_set
	test	al, 1
	jne	.label_100
	jmp	.label_103
.label_100:
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_103:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x18
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_109
	jmp	.label_113
.label_109:
	movabs	rdi, OFFSET FLAT:.str.81
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_113:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x60
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_122
	jmp	.label_123
.label_122:
	movabs	rdi, OFFSET FLAT:.str.82
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_123:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x3000
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_130
	jmp	.label_131
.label_130:
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_131:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_52
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_52
	jmp	.label_57
.label_52:
	movabs	rdi, OFFSET FLAT:.str.84
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_57:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_64
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [i_nocache]],  1
	cmp	qword ptr [word ptr [max_records]],  0
	mov	byte ptr [rbp - 0xbb], cl
	jne	.label_66
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbb], al
.label_66:
	mov	al, byte ptr [rbp - 0xbb]
	and	al, 1
	mov	byte ptr [byte ptr [i_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [input_flags]],  ecx
.label_64:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_84
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [o_nocache]],  1
	cmp	qword ptr [word ptr [max_records]],  0
	mov	byte ptr [rbp - 0xbc], cl
	jne	.label_67
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbc], al
.label_67:
	mov	al, byte ptr [rbp - 0xbc]
	and	al, 1
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [output_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [output_flags]],  ecx
.label_84:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403920

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 1
	cmp	eax, 0
	je	.label_146
	movabs	rdi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_146:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_152
	mov	dword ptr [rbp - 4], 0
.label_138:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_148
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_138
.label_148:
	mov	byte ptr [byte ptr [translation_needed]],  1
	jmp	.label_140
.label_152:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_149
	mov	dword ptr [rbp - 4], 0
.label_147:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_139
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	tolower
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_147
.label_139:
	mov	byte ptr [byte ptr [translation_needed]],  1
.label_149:
	jmp	.label_140
.label_140:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 2
	cmp	eax, 0
	je	.label_141
	movabs	rdi, OFFSET FLAT:ascii_to_ebcdic
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_150]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	al,  byte ptr [byte ptr [label_151]]
	mov	byte ptr [byte ptr [space_character]],  al
	jmp	.label_142
.label_141:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 4
	cmp	eax, 0
	je	.label_143
	movabs	rdi, OFFSET FLAT:ascii_to_ibm
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_144]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	al,  byte ptr [byte ptr [label_145]]
	mov	byte ptr [byte ptr [space_character]],  al
.label_143:
	jmp	.label_142
.label_142:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403aa0

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	and	esi, 0xfffdfeff
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 8], 0
	je	.label_158
	mov	esi, 3
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x18], eax
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_159
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_163
.label_159:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_162
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_155
	lea	rsi, [rbp - 0xb0]
	mov	edi, dword ptr [rbp - 4]
	call	__fstat
	cmp	eax, 0
	je	.label_161
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_157
.label_161:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_156
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_156
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_160
.label_156:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0
	cmp	eax, 0
	je	.label_153
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_153
	call	__errno_location
	mov	dword ptr [rax], 0x1f
	mov	byte ptr [rbp - 0x19], 0
.label_153:
	jmp	.label_160
.label_160:
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xfffeffff
	mov	dword ptr [rbp - 0x18], eax
.label_155:
	test	byte ptr [rbp - 0x19], 1
	je	.label_154
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_154
	mov	esi, 4
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_154
	mov	byte ptr [rbp - 0x19], 0
.label_154:
	jmp	.label_162
.label_162:
	jmp	.label_163
.label_163:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_164
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.105
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_164:
	jmp	.label_158
.label_158:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
.label_166:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	fd_reopen
	mov	dword ptr [rbp - 0x1c], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x1c], 0
	mov	byte ptr [rbp - 0x1d], cl
	jge	.label_165
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x1d], cl
.label_165:
	mov	al, byte ptr [rbp - 0x1d]
	test	al, 1
	jne	.label_166
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ce0

	.globl nl_error
	.type nl_error, @function
nl_error:
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
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_167
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
.label_167:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8d, dword ptr [rbp - 0x164]
	xor	r9d, r9d
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	r9d,  dword ptr [dword ptr [progress_len]]
	jge	.label_168
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	dword ptr [rbp - 0x190], eax
.label_168:
	lea	rax, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x20], rax
	lea	rax, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x18
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rcx, [rbp - 0x30]
	call	verror
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e70

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
.label_170:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ftruncate
	mov	dword ptr [rbp - 0x14], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], cl
	jge	.label_169
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x15], cl
.label_169:
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_170
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [word ptr [skip_records]],  0
	jne	.label_214
	cmp	qword ptr [word ptr [skip_bytes]],  0
	je	.label_220
.label_214:
	xor	edi, edi
	movabs	r8, OFFSET FLAT:skip_bytes
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rcx,  qword ptr [word ptr [skip_records]]
	imul	rcx,  qword ptr [word ptr [input_blocksize]]
	add	rax, rcx
	add	rax,  qword ptr [word ptr [skip_bytes]]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	rdx,  qword ptr [word ptr [skip_records]]
	mov	rcx,  qword ptr [word ptr [input_blocksize]]
	call	skip
	mov	qword ptr [rbp - 0x40], rax
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_243
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	jne	.label_236
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_236
.label_243:
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_236
	movabs	rdi, OFFSET FLAT:.str.106
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_236:
	jmp	.label_220
.label_220:
	cmp	qword ptr [word ptr [seek_records]],  0
	jne	.label_244
	cmp	qword ptr [word ptr [seek_bytes]],  0
	je	.label_207
.label_244:
	mov	edi, 1
	lea	r8, [rbp - 0x48]
	mov	rax,  qword ptr [word ptr [seek_bytes]]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rdx,  qword ptr [word ptr [seek_records]]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	call	skip
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_179
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_182
.label_179:
	mov	rdi,  qword ptr [word ptr [obuf]]
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x128], rdi
	je	.label_186
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_191
.label_186:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x130], rax
.label_191:
	mov	rax, qword ptr [rbp - 0x130]
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rdx, rax
	call	memset
.label_254:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_199
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_201
.label_199:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x138], rax
.label_201:
	mov	rax, qword ptr [rbp - 0x138]
	mov	edi, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x58]
	call	iwrite
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_218
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.107
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	quit
.label_218:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_241
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_173
.label_241:
	mov	qword ptr [rbp - 0x48], 0
.label_173:
	jmp	.label_247
.label_247:
	mov	al, 1
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x149], al
	jne	.label_249
	cmp	qword ptr [rbp - 0x48], 0
	setne	al
	mov	byte ptr [rbp - 0x149], al
.label_249:
	mov	al, byte ptr [rbp - 0x149]
	test	al, 1
	jne	.label_254
	jmp	.label_182
.label_182:
	jmp	.label_207
.label_207:
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_257
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_257
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_187
.label_257:
	call	alloc_ibuf
	call	alloc_obuf
.label_177:
	cmp	dword ptr [dword ptr [status_level]],  4
	jne	.label_224
	call	gethrxtime
	mov	qword ptr [rbp - 0x60], rax
	mov	rax,  qword ptr [word ptr [next_time]]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_260
	mov	rdi, qword ptr [rbp - 0x60]
	call	print_xfer_stats
	mov	rdi,  qword ptr [word ptr [next_time]]
	add	rdi, 0x3b9aca00
	mov	qword ptr [word ptr [next_time]],  rdi
.label_260:
	jmp	.label_224
.label_224:
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [max_records]]
	cmp	qword ptr [word ptr [max_bytes]],  0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	movsxd	rdi, esi
	add	rcx, rdi
	cmp	rax, rcx
	jb	.label_232
	jmp	.label_184
.label_232:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_183
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_183
	xor	eax, eax
	mov	ecx, 0x20
	mov	rdi,  qword ptr [word ptr [ibuf]]
	mov	edx,  dword ptr [dword ptr [conversions_mask]]
	and	edx, 0x18
	cmp	edx, 0
	cmovne	eax, ecx
	mov	sil, al
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	movzx	esi, sil
	call	memset
.label_183:
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	cmp	rax,  qword ptr [word ptr [max_records]]
	jb	.label_215
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [max_bytes]]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_226
.label_215:
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
.label_226:
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_235
	mov	rdi, qword ptr [rbp - 0x18]
	call	advance_input_offset
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_239
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x14a], al
.label_239:
	jmp	.label_216
.label_235:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_246
	xor	eax, eax
	mov	cl, al
	mov	dl,  byte ptr [byte ptr [i_nocache]]
	and	dl, 1
	movzx	eax, dl
	mov	dl,  byte ptr [byte ptr [i_nocache_eof]]
	and	dl, 1
	movzx	esi, dl
	or	esi, eax
	cmp	esi, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [i_nocache_eof]],  dl
	test	byte ptr [byte ptr [o_nocache]],  1
	mov	byte ptr [rbp - 0x14b], cl
	je	.label_250
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x14b], cl
.label_250:
	mov	al, byte ptr [rbp - 0x14b]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	jmp	.label_184
.label_246:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_198
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_196
.label_198:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.108
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x150]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_196:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_210
	call	print_stats
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	invalidate_cache
	mov	rdi, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x159], al
	call	advance_input_after_read_error
	test	al, 1
	jne	.label_206
	mov	dword ptr [rbp - 0x24], 1
	mov	byte ptr [byte ptr [input_seekable]],  0
	mov	dword ptr [dword ptr [input_seek_errno]],  0x1d
.label_206:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_217
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_217
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_253
.label_217:
	jmp	.label_177
.label_253:
	jmp	.label_227
.label_210:
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_184
.label_227:
	jmp	.label_205
.label_205:
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jae	.label_233
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [r_partial]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx,  dword ptr [dword ptr [conversions_mask]]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_237
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	jne	.label_248
	xor	eax, eax
	mov	ecx, 0x20
	mov	rdx,  qword ptr [word ptr [ibuf]]
	add	rdx, qword ptr [rbp - 0x30]
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x18
	cmp	esi, 0
	cmovne	eax, ecx
	mov	dil, al
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	sub	r8, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x15a], dil
	mov	rdi, rdx
	mov	r9b, byte ptr [rbp - 0x15a]
	movzx	esi, r9b
	mov	rdx, r8
	call	memset
.label_248:
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x30], rax
.label_237:
	jmp	.label_204
.label_233:
	mov	rax,  qword ptr [word ptr [r_full]]
	add	rax, 1
	mov	qword ptr [word ptr [r_full]],  rax
	mov	qword ptr [rbp - 0x20], 0
.label_204:
	mov	rax,  qword ptr [word ptr [ibuf]]
	cmp	rax,  qword ptr [word ptr [obuf]]
	jne	.label_171
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x30]
	call	iwrite
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_259
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.109
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x168], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x160]
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_187
.label_259:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jne	.label_203
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	jmp	.label_212
.label_203:
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_212:
	jmp	.label_188
.label_188:
	jmp	.label_177
.label_171:
	test	byte ptr [byte ptr [translation_needed]],  1
	je	.label_221
	mov	rdi,  qword ptr [word ptr [ibuf]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	translate_buffer
.label_221:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_229
	lea	rsi, [rbp - 0x30]
	mov	rdi,  qword ptr [word ptr [ibuf]]
	call	swab_buffer
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_180
.label_229:
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0x10], rax
.label_180:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_242
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_with_block
	jmp	.label_185
.label_242:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_251
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_with_unblock
	jmp	.label_255
.label_251:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_simple
.label_255:
	jmp	.label_185
.label_185:
	jmp	.label_177
.label_184:
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_181
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_230
	movabs	rdi, OFFSET FLAT:saved_char
	mov	eax, 1
	mov	esi, eax
	call	copy_with_block
	jmp	.label_193
.label_230:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_256
	movabs	rdi, OFFSET FLAT:saved_char
	mov	eax, 1
	mov	esi, eax
	call	copy_with_unblock
	jmp	.label_174
.label_256:
	jmp	.label_176
.label_176:
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_178
	call	write_output
.label_178:
	jmp	.label_190
.label_190:
	jmp	.label_174
.label_174:
	jmp	.label_193
.label_193:
	jmp	.label_181
.label_181:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_194
	cmp	qword ptr [word ptr [col]],  0
	jbe	.label_194
	mov	rax,  qword ptr [word ptr [col]]
	mov	qword ptr [rbp - 0x78], rax
.label_228:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_200
	jmp	.label_208
.label_208:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_211
	call	write_output
.label_211:
	jmp	.label_223
.label_223:
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_228
.label_200:
	jmp	.label_194
.label_194:
	cmp	qword ptr [word ptr [col]],  0
	je	.label_231
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_231
	jmp	.label_238
.label_238:
	mov	al,  byte ptr [byte ptr [newline_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_240
	call	write_output
.label_240:
	jmp	.label_252
.label_252:
	jmp	.label_231
.label_231:
	cmp	qword ptr [word ptr [oc]],  0
	je	.label_189
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx,  qword ptr [word ptr [oc]]
	call	iwrite
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_258
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_258:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax,  qword ptr [word ptr [oc]]
	je	.label_261
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.109
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_187
.label_261:
	jmp	.label_189
.label_189:
	test	byte ptr [byte ptr [final_op_was_seek]],  1
	je	.label_192
	mov	edi, 1
	lea	rsi, [rbp - 0x110]
	call	__fstat
	cmp	eax, 0
	je	.label_195
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_187
.label_195:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_219
	mov	eax, dword ptr [rbp - 0xf8]
	sub	eax, dword ptr [rbp - 0xf8]
	cmp	eax, 0
	je	.label_222
.label_219:
	mov	eax, 1
	xor	ecx, ecx
	mov	esi, ecx
	mov	edi, eax
	mov	edx, eax
	call	lseek
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x118], rax
	cmp	rsi, qword ptr [rbp - 0x118]
	jg	.label_234
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x118]
	jge	.label_234
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x118]
	call	iftruncate
	cmp	eax, 0
	je	.label_245
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.110
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x198], rax
	mov	qword ptr [rbp - 0x1a0], rcx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_187
.label_245:
	jmp	.label_234
.label_234:
	jmp	.label_222
.label_222:
	jmp	.label_192
.label_192:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x4000
	cmp	eax, 0
	je	.label_172
	mov	edi, 1
	call	fdatasync
	cmp	eax, 0
	je	.label_172
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_175
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_175
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.111
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x24], 1
.label_175:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_172:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x8000
	cmp	eax, 0
	je	.label_197
	jmp	.label_202
.label_202:
	mov	edi, 1
	call	fsync
	cmp	eax, 0
	je	.label_209
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_213
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.112
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_187
.label_213:
	jmp	.label_202
.label_209:
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_187:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d50

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0xffffffff
	cmp	dword ptr [rbp - 8], 0
	jne	.label_270
	mov	al,  byte ptr [byte ptr [i_nocache_eof]]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_275
.label_270:
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
.label_275:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cache_round
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_274
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_274
	mov	byte ptr [rbp - 1], 1
	jmp	.label_263
.label_274:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_265
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_265
	test	byte ptr [rbp - 0x21], 1
	jne	.label_265
	mov	byte ptr [rbp - 1], 1
	jmp	.label_263
.label_265:
	jmp	.label_278
.label_278:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_280
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	call	cache_round
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_267
.label_280:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 8], 0
	jne	.label_273
	test	byte ptr [byte ptr [input_seekable]],  1
	je	.label_279
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_264
.label_279:
	mov	qword ptr [rbp - 0x20], -1
	call	__errno_location
	mov	dword ptr [rax], 0x1d
.label_264:
	jmp	.label_276
.label_273:
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  -1
	je	.label_268
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  0
	jge	.label_269
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 8]
	call	lseek
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
	jmp	.label_266
.label_269:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_277
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	add	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
.label_277:
	jmp	.label_266
.label_266:
	jmp	.label_268
.label_268:
	mov	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [rbp - 0x20], rax
.label_276:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_272
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_262
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_262
	test	byte ptr [rbp - 0x21], 1
	je	.label_262
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_262:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_271
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [page_size]]
	mov	rsi, qword ptr [rbp - 0x20]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x20], rsi
.label_271:
	mov	ecx, 4
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x14], eax
.label_272:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x14], -1
	cmovne	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_263:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fa0

	.globl finish_up
	.type finish_up, @function
finish_up:
	push	rbp
	mov	rbp, rsp
	call	cleanup
	call	print_stats
	call	process_signals
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	add	edi, 1
	mov	dword ptr [dword ptr [info_signal_count]],  edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fe0

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [interrupt_signal]],  edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405000

	.globl operand_is
	.type operand_is, @function
operand_is:
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
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405030

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
.label_282:
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_294:
	mov	edx, 0x2c
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	operand_matches
	xor	edx, edx
	mov	cl, dl
	test	al, 1
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_293
	jmp	.label_285
.label_293:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xc], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_285:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_281
	jmp	.label_288
.label_281:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_289
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_292
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_284
.label_292:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
.label_284:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_n_style_mem
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	edi, esi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_289:
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_294
.label_288:
	test	byte ptr [rbp - 0x11], 1
	je	.label_286
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_287
.label_286:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], ecx
.label_287:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_290
	jmp	.label_283
.label_290:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_282
.label_283:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051a0

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:.str.85
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	parse_integer
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_297
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_297
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	qword ptr [rbp - 8], 0
	jmp	.label_298
.label_297:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_300
	movabs	rsi, OFFSET FLAT:.str.86
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_300
	movabs	rdi, OFFSET FLAT:.str.87
	call	gettext
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:.str.86
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:.str.88
	mov	qword ptr [rbp - 0x48], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x4c], edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_300:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_299
.label_295:
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_296
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_298
.label_296:
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_298:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405320

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_305:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_301
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	iread
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_304
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_303
.label_304:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_302
	jmp	.label_301
.label_302:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_305
.label_301:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_303:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053d0

	.globl iread
	.type iread, @function
iread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_307:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_309
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_309
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_309
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_309
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	je	.label_309
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
.label_309:
	jmp	.label_312
.label_312:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_313
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_313:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_307
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_310
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_310
	call	process_signals
.label_310:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_306
	test	byte ptr [byte ptr [warn_partial_read]],  1
	je	.label_306
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_311
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_311
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_308
	mov	rdi, qword ptr [rbp - 0x28]
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.89
	movabs	rsi, OFFSET FLAT:.str.90
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	nl_error
.label_308:
	mov	byte ptr [byte ptr [warn_partial_read]],  0
.label_311:
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [iread.prev_nread]],  rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	and	edi, eax
	cmp	edi, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
.label_315:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_314
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax]
	cmp	edx, esi
	je	.label_318
	mov	byte ptr [rbp - 1], 0
	jmp	.label_317
.label_318:
	jmp	.label_315
.label_314:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rcx], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_316
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	sete	sil
	mov	byte ptr [rbp - 0x1a], sil
.label_316:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_317:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405630

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
.label_320:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_324
	mov	eax,  dword ptr [dword ptr [info_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_324:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_319
	jmp	.label_322
.label_319:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdx, [rbp - 0x88]
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x90], eax
	je	.label_321
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	dword ptr [dword ptr [info_signal_count]],  eax
.label_321:
	mov	edi, 2
	lea	rsi, [rbp - 0x88]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	cmp	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_323
	call	cleanup
.label_323:
	call	print_stats
	cmp	dword ptr [rbp - 4], 0
	je	.label_325
	mov	edi, dword ptr [rbp - 4]
	call	raise
	mov	dword ptr [rbp - 0x98], eax
.label_325:
	jmp	.label_320
.label_322:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405720

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_326
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_327
.label_326:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_327:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_329
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.91
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_329:
	mov	edi, 1
	call	close
	cmp	eax, 0
	jge	.label_328
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.92
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_328:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405830

	.globl print_stats
	.type print_stats, @function
print_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	cmp	dword ptr [dword ptr [status_level]],  1
	jne	.label_334
	jmp	.label_332
.label_334:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_333
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	dword ptr [rbp - 4], eax
.label_333:
	movabs	rdi, OFFSET FLAT:.str.93
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [r_partial]]
	mov	r8,  qword ptr [word ptr [w_full]]
	mov	r9,  qword ptr [word ptr [w_partial]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	cmp	qword ptr [word ptr [r_truncate]],  0
	mov	dword ptr [rbp - 0x14], eax
	je	.label_330
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [r_truncate]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rsi, OFFSET FLAT:.str.95
	mov	rdx, rax
	call	ngettext
	mov	rdx,  qword ptr [word ptr [r_truncate]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x24], eax
.label_330:
	cmp	dword ptr [dword ptr [status_level]],  2
	jne	.label_331
	jmp	.label_332
.label_331:
	xor	eax, eax
	mov	edi, eax
	call	print_xfer_stats
.label_332:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x8b0
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_344
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_347
.label_344:
	call	gethrxtime
	mov	qword ptr [rbp - 0x830], rax
.label_347:
	mov	rax, qword ptr [rbp - 0x830]
	mov	edx, 0x1d1
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [rbp - 0x838], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x838]
	mov	qword ptr [rbp - 0x840], rsi
	mov	rsi, rax
	mov	rcx, qword ptr [rbp - 0x840]
	mov	r8, qword ptr [rbp - 0x840]
	call	human_readable
	mov	edx, 0x1f1
	mov	r9d, 1
	mov	ecx, r9d
	lea	rsi, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	add	rsi, 0x28e
	mov	qword ptr [rbp - 0x848], rcx
	mov	r8, qword ptr [rbp - 0x848]
	call	human_readable
	lea	rcx, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x7e0], rax
	add	rcx, 0x51c
	mov	qword ptr [rbp - 0x7e8], rcx
	mov	dword ptr [rbp - 0x7ec], 0x28e
	mov	rax,  qword ptr [word ptr [start_time]]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_342
	mov	edx, 0x1d1
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movabs	rsi, 0x41cdcd6500000000
	mov	qword ptr [rbp - 0x7f8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x800], rsi
	mov	rdi,  qword ptr [word ptr [rip + start_time]]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x800], rsi
	movq	xmm0, rsi
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_338]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_339]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm1, qword ptr [rbp - 0x7f8]
	movsd	qword ptr [rbp - 0x7c8], xmm1
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	mov	rsi, qword ptr [rbp - 0x7e8]
	mov	r8, qword ptr [rbp - 0x800]
	call	human_readable
	movabs	rsi, OFFSET FLAT:print_xfer_stats.slash_s
	mov	qword ptr [rbp - 0x7d0], rax
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	rcx, qword ptr [rbp - 0x7e8]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x7e8]
	mov	rdi, rax
	call	strcat
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_337
.label_342:
	movabs	rdi, OFFSET FLAT:.str.97
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 0x7c8], xmm0
	mov	rax, qword ptr [rbp - 0x7e8]
	movsxd	rsi, dword ptr [rbp - 0x7ec]
	mov	qword ptr [rbp - 0x858], rsi
	mov	qword ptr [rbp - 0x860], rax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str.96
	mov	rdi, qword ptr [rbp - 0x860]
	mov	rsi, qword ptr [rbp - 0x858]
	mov	rcx, rax
	mov	al, 0
	call	snprintf
	mov	rcx, qword ptr [rbp - 0x7e8]
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	dword ptr [rbp - 0x864], eax
.label_337:
	cmp	qword ptr [rbp - 8], 0
	je	.label_335
	mov	edi, 0xd
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x868], eax
.label_335:
	mov	eax, 0x18
	mov	esi, eax
	movabs	rcx, OFFSET FLAT:.str.99
	movabs	rdx, OFFSET FLAT:.str.98
	lea	rdi, [rbp - 0x820]
	cmp	qword ptr [rbp - 8], 0
	cmovne	rcx, rdx
	movsd	xmm0, qword ptr [rbp - 0x7c8]
	mov	rdx, rcx
	mov	al, 1
	call	snprintf
	mov	rdi, qword ptr [rbp - 0x7d8]
	mov	dword ptr [rbp - 0x86c], eax
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_349
	jmp	.label_350
.label_349:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [rbp - 0x878], rdi
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.100
	movabs	rsi, OFFSET FLAT:.str.101
	mov	rdx, rax
	call	ngettext
	lea	rcx, [rbp - 0x820]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	mov	r8, qword ptr [rbp - 0x7d0]
	mov	rdi, qword ptr [rbp - 0x878]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_345
.label_350:
	mov	rdi, qword ptr [rbp - 0x7e0]
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_343
	jmp	.label_346
.label_343:
	movabs	rdi, OFFSET FLAT:.str.102
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x888], rax
	call	gettext
	lea	r8, [rbp - 0x820]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	mov	rcx, qword ptr [rbp - 0x7d8]
	mov	r9, qword ptr [rbp - 0x7d0]
	mov	rdi, qword ptr [rbp - 0x888]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x88c], eax
	jmp	.label_341
.label_346:
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x898], rax
	call	gettext
	lea	r9, [rbp - 0x820]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	mov	rcx, qword ptr [rbp - 0x7d8]
	mov	r8, qword ptr [rbp - 0x7e0]
	mov	rdi, qword ptr [rbp - 0x7d0]
	mov	rsi, qword ptr [rbp - 0x898]
	mov	qword ptr [rbp - 0x8a0], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x8a0]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x88c], eax
.label_341:
	mov	eax, dword ptr [rbp - 0x88c]
	mov	dword ptr [rbp - 0x87c], eax
.label_345:
	mov	eax, dword ptr [rbp - 0x87c]
	mov	dword ptr [rbp - 0x824], eax
	cmp	qword ptr [rbp - 8], 0
	je	.label_340
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x824]
	jg	.label_348
	mov	eax, dword ptr [rbp - 0x824]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_348
	movabs	rsi, OFFSET FLAT:.str.104
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax,  dword ptr [dword ptr [progress_len]]
	sub	eax, dword ptr [rbp - 0x824]
	mov	edx, eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x8a4], eax
.label_348:
	mov	eax, dword ptr [rbp - 0x824]
	mov	dword ptr [dword ptr [progress_len]],  eax
	jmp	.label_336
.label_340:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x8a8], eax
.label_336:
	add	rsp, 0x8b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e00

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	sub	rax, 2
	mov	rdi, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x20
	sete	dl
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e40

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_351:
	cmp	dword ptr [rbp - 0xc], 0x100
	jge	.label_352
	movsxd	rax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	sil, byte ptr [rdx + rax]
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	byte ptr [byte ptr [+ (rax * 1) + trans_table]],  sil
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_351
.label_352:
	mov	byte ptr [byte ptr [translation_needed]],  1
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ea0

	.globl skip
	.type skip, @function
skip:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rcx
	call	__errno_location
	movabs	rcx, 0x7fffffffffffffff
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rcx, rax
	ja	.label_359
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x38]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, rax
	jg	.label_359
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_363
	xor	edi, edi
	lea	rsi, [rbp - 0xc8]
	call	__fstat
	cmp	eax, 0
	je	.label_371
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xec], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xec]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_371:
	lea	rdi, [rbp - 0xc8]
	call	usable_st_size
	test	al, 1
	jne	.label_380
	jmp	.label_364
.label_380:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [input_offset]]
	add	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x98]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_373
.label_364:
	mov	qword ptr [rbp - 0x20], 0
.label_373:
	mov	rdi, qword ptr [rbp - 0x38]
	call	advance_input_offset
	jmp	.label_355
.label_363:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_355:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_362
.label_359:
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0xc]
	call	skip_via_lseek
	cmp	rax, 0
	jl	.label_374
	cmp	dword ptr [rbp - 0xcc], 0
	jne	.label_376
	mov	dword ptr [rbp - 0xcc], 0x4b
.label_376:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_382
	movabs	rdi, OFFSET FLAT:.str.113
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xfc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	jmp	.label_372
.label_382:
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_372:
	mov	edi, 1
	call	quit
.label_374:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_361
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_367
.label_361:
	call	alloc_obuf
	mov	rax,  qword ptr [word ptr [obuf]]
	mov	qword ptr [rbp - 0xd8], rax
.label_367:
	jmp	.label_366
.label_366:
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0xd8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x120], rax
	mov	dword ptr [rbp - 0x124], edi
	mov	qword ptr [rbp - 0x130], rsi
	je	.label_377
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_357
.label_377:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x138], rax
.label_357:
	mov	rax, qword ptr [rbp - 0x138]
	mov	edi, dword ptr [rbp - 0x124]
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	rax, qword ptr [rbp - 0x120]
	call	rax
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	jge	.label_381
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_379
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.108
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x100
	cmp	esi, 0
	je	.label_368
	call	print_stats
.label_368:
	jmp	.label_354
.label_379:
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x14c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_354:
	mov	edi, 1
	call	quit
.label_381:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_365
	jmp	.label_369
.label_365:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_356
	mov	rdi, qword ptr [rbp - 0xe0]
	call	advance_input_offset
.label_356:
	jmp	.label_360
.label_360:
	jmp	.label_370
.label_370:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_375
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_358
.label_375:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_358:
	jmp	.label_353
.label_353:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x159], al
	jne	.label_378
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x159], cl
.label_378:
	mov	al, byte ptr [rbp - 0x159]
	test	al, 1
	jne	.label_366
.label_369:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_362:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406360

	.globl iwrite
	.type iwrite, @function
iwrite:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	edi,  dword ptr [dword ptr [output_flags]]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_388
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jae	.label_388
	mov	edi, 1
	mov	esi, 3
	mov	al, 0
	call	rpl_fcntl
	mov	edi, 1
	mov	esi, 4
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xffffbfff
	mov	edx, eax
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, 0
	je	.label_389
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_389
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.116
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_389:
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	mov	byte ptr [byte ptr [o_nocache_eof]],  1
	call	invalidate_cache
	mov	edi,  dword ptr [dword ptr [conversions_mask]]
	or	edi, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  edi
	mov	byte ptr [rbp - 0x41], al
.label_388:
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_392
	mov	qword ptr [rbp - 0x30], 0
	call	process_signals
	mov	byte ptr [byte ptr [final_op_was_seek]],  0
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_384
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	is_nul
	test	al, 1
	jne	.label_393
	jmp	.label_384
.label_393:
	mov	edx, 1
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	call	lseek
	cmp	rax, 0
	jge	.label_383
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xfffeffff
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_387
.label_383:
	mov	byte ptr [byte ptr [final_op_was_seek]],  1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_387:
	jmp	.label_384
.label_384:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_396
	mov	edi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rdx, rcx
	call	write
	mov	qword ptr [rbp - 0x30], rax
.label_396:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_394
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_395
	jmp	.label_392
.label_395:
	jmp	.label_390
.label_394:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_386
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_392
.label_386:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_390
.label_390:
	jmp	.label_391
.label_392:
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_385
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_385
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x42], al
.label_385:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl quit
	.type quit, @function
quit:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	call	finish_up
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4065d0

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2c0
	cmp	qword ptr [word ptr [ibuf]],  0
	je	.label_397
	jmp	.label_399
.label_397:
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	add	rax, rcx
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_398
	movabs	rdi, OFFSET FLAT:.str.117
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	edi, ecx
	lea	rsi, [rbp - 0x2a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x2a8], rdi
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2b0], rcx
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2b8], rax
	call	human_readable
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_398:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [ibuf]],  rax
.label_399:
	add	rsp, 0x2c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2c0
	cmp	qword ptr [word ptr [obuf]],  0
	je	.label_400
	jmp	.label_402
.label_400:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_403
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	sub	rcx, 1
	add	rax, rcx
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_401
	movabs	rdi, OFFSET FLAT:.str.118
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	edi, ecx
	lea	rsi, [rbp - 0x2a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x2a8], rdi
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2b0], rcx
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2b8], rax
	call	human_readable
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_401:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [obuf]],  rax
	jmp	.label_402
.label_403:
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [word ptr [obuf]],  rax
.label_402:
	add	rsp, 0x2c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406800

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [word ptr [input_offset]],  rdi
	mov	rdi,  qword ptr [word ptr [input_offset]]
	cmp	rdi, qword ptr [rbp - 8]
	jae	.label_404
	mov	byte ptr [byte ptr [input_offset_overflow]],  1
.label_404:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406840

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	test	byte ptr [byte ptr [input_seekable]],  1
	jne	.label_405
	cmp	dword ptr [dword ptr [input_seek_errno]],  0x1d
	jne	.label_411
	mov	byte ptr [rbp - 1], 1
	jmp	.label_408
.label_411:
	mov	eax,  dword ptr [dword ptr [input_seek_errno]]
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	jmp	.label_406
.label_405:
	mov	rdi, qword ptr [rbp - 0x10]
	call	advance_input_offset
	movabs	rdi, 0x7fffffffffffffff
	cmp	rdi,  qword ptr [word ptr [input_offset]]
	setb	al
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [input_offset_overflow]]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [input_offset_overflow]],  al
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	je	.label_414
	movabs	rdi, OFFSET FLAT:.str.119
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x34], edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_408
.label_414:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	lseek
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x18], rax
	cmp	rsi, qword ptr [rbp - 0x18]
	jg	.label_409
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [input_offset]]
	jne	.label_415
	mov	byte ptr [rbp - 1], 1
	jmp	.label_408
.label_415:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [input_offset]]
	sub	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_410
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_407
.label_410:
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_407
	movabs	rdi, OFFSET FLAT:.str.120
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_407:
	xor	esi, esi
	mov	ecx, 1
	mov	rdi,  qword ptr [word ptr [input_file]]
	mov	rdx, qword ptr [rbp - 0x20]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, rax
	jg	.label_413
	mov	byte ptr [rbp - 1], 1
	jmp	.label_408
.label_413:
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_412
	movabs	rdi, OFFSET FLAT:.str.121
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_412:
	jmp	.label_409
.label_409:
	jmp	.label_406
.label_406:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	byte ptr [rbp - 1], 0
.label_408:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a70

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rsi
.label_417:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_416
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + trans_table]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx], al
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_417
.label_416:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ae0

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_418
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	mov	byte ptr [byte ptr [char_is_saved]],  0
.label_418:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	and	rax, 1
	cmp	rax, 0
	je	.label_419
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rax + rcx - 1]
	mov	byte ptr [byte ptr [saved_char]],  sil
	mov	byte ptr [byte ptr [char_is_saved]],  1
.label_419:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_420:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_421
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax - 2]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -2
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_420
.label_421:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406be0

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
.label_439:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_437
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsx	edx,  byte ptr [byte ptr [newline_character]]
	cmp	ecx, edx
	jne	.label_422
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_433
	mov	rax,  qword ptr [word ptr [col]]
	mov	qword ptr [rbp - 0x20], rax
.label_435:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_438
	jmp	.label_426
.label_426:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_429
	call	write_output
.label_429:
	jmp	.label_431
.label_431:
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_435
.label_438:
	jmp	.label_433
.label_433:
	mov	qword ptr [word ptr [col]],  0
	jmp	.label_424
.label_422:
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jne	.label_423
	mov	rax,  qword ptr [word ptr [r_truncate]]
	add	rax, 1
	mov	qword ptr [word ptr [r_truncate]],  rax
	jmp	.label_434
.label_423:
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_436
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	rax,  qword ptr [word ptr [oc]]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rax], cl
	mov	rax,  qword ptr [word ptr [oc]]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jb	.label_428
	call	write_output
.label_428:
	jmp	.label_430
.label_430:
	jmp	.label_436
.label_436:
	jmp	.label_434
.label_434:
	mov	rax,  qword ptr [word ptr [col]]
	add	rax, 1
	mov	qword ptr [word ptr [col]],  rax
.label_424:
	jmp	.label_427
.label_427:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_439
.label_437:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406da0

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_451:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_455
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x19], dl
	mov	rax,  qword ptr [word ptr [col]]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [col]],  rcx
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jb	.label_440
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [col]],  0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	al,  byte ptr [byte ptr [newline_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_456
	call	write_output
.label_456:
	jmp	.label_447
.label_447:
	jmp	.label_448
.label_440:
	movsx	eax, byte ptr [rbp - 0x19]
	movsx	ecx,  byte ptr [byte ptr [space_character]]
	cmp	eax, ecx
	jne	.label_450
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	add	rax, 1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	jmp	.label_452
.label_450:
	jmp	.label_443
.label_443:
	cmp	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	je	.label_446
	jmp	.label_441
.label_441:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_453
	call	write_output
.label_453:
	jmp	.label_454
.label_454:
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	add	rax, -1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	jmp	.label_443
.label_446:
	jmp	.label_444
.label_444:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_445
	call	write_output
.label_445:
	jmp	.label_442
.label_442:
	jmp	.label_452
.label_452:
	jmp	.label_448
.label_448:
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_451
.label_455:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f90

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_460:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	sub	rcx,  qword ptr [word ptr [oc]]
	cmp	rax, rcx
	jae	.label_459
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_458
.label_459:
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	sub	rax,  qword ptr [word ptr [oc]]
	mov	qword ptr [rbp - 0x28], rax
.label_458:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [obuf]]
	add	rax,  qword ptr [word ptr [oc]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x10], rdx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax,  qword ptr [word ptr [oc]]
	mov	qword ptr [word ptr [oc]],  rax
	mov	rax,  qword ptr [word ptr [oc]]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jb	.label_461
	call	write_output
.label_461:
	jmp	.label_457
.label_457:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_460
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407070

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx,  qword ptr [word ptr [output_blocksize]]
	call	iwrite
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	je	.label_462
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.107
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	cmp	qword ptr [rbp - 8], 0
	je	.label_463
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_463:
	mov	edi, 1
	call	quit
.label_462:
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	mov	qword ptr [word ptr [oc]],  0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407150

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	eax, 0x80306d02
	mov	r8d, eax
	lea	r9, [rbp - 0x50]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, r8
	mov	rdx, r9
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	sete	r10b
	and	r10b, 1
	mov	byte ptr [rbp - 0x81], r10b
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	lseek
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x90], rax
	cmp	rsi, qword ptr [rbp - 0x90]
	jg	.label_464
	test	byte ptr [rbp - 0x81], 1
	je	.label_464
	mov	eax, 0x80306d02
	mov	esi, eax
	lea	rdx, [rbp - 0x80]
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jne	.label_464
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_464
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rbp - 0x58]
	jne	.label_464
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x54]
	jne	.label_464
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_465
	movabs	rdi, OFFSET FLAT:.str.115
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, 0
	mov	qword ptr [rbp - 0x98], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	al, 0
	call	nl_error
.label_465:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x90], -1
.label_464:
	mov	rax, qword ptr [rbp - 0x90]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407290

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_466
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_466
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_466
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_466
.label_466:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407310

	.globl is_nul
	.type is_nul, @function
is_nul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_472
	mov	byte ptr [rbp - 1], 1
	jmp	.label_467
.label_472:
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_468
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_475
	mov	byte ptr [rbp - 1], 0
	jmp	.label_467
.label_475:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_469
	mov	byte ptr [rbp - 1], 1
	jmp	.label_467
.label_469:
	jmp	.label_473
.label_468:
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_477
	mov	byte ptr [rbp - 1], 0
	jmp	.label_467
.label_477:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_476
	mov	byte ptr [rbp - 1], 1
	jmp	.label_467
.label_476:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_471
	jmp	.label_474
.label_471:
	jmp	.label_470
.label_474:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_467:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407430

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407480

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
	.align	32
	#Procedure 0x407490

	.globl cache_round
	.type cache_round, @function
cache_round:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:cache_round.o_pending
	movabs	rcx, OFFSET FLAT:cache_round.i_pending
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 4], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_478
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1ffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jbe	.label_479
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_480
.label_479:
	mov	qword ptr [rbp - 0x10], 0
.label_480:
	jmp	.label_481
.label_478:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_481:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407530

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
	jne	.label_482
	test	byte ptr [rbp - 0x13], 1
	je	.label_483
	test	byte ptr [rbp - 0x11], 1
	jne	.label_482
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_483
.label_482:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_484
	call	__errno_location
	mov	dword ptr [rax], 0
.label_484:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_485
.label_483:
	mov	dword ptr [rbp - 4], 0
.label_485:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075e0
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
	.align	32
	#Procedure 0x407600
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
	.align	32
	#Procedure 0x407620

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_489
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_490
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_489
.label_490:
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_487
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
	jmp	.label_488
.label_487:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_488:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_489:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_486
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_486:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407710

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_492
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_491
.label_492:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_493
.label_491:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], esi
.label_493:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077a0

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	edi, 1
	lea	rsi, [rbp - 0x18]
	call	clock_gettime
	cmp	eax, 0
	jne	.label_494
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
	jmp	.label_495
.label_494:
	lea	rdi, [rbp - 0x28]
	call	gettime
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
.label_495:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407800

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
	#Procedure 0x407850

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
	#Procedure 0x407870
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
	#Procedure 0x4078d0
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
	#Procedure 0x4078f0
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
	#Procedure 0x407930

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407960
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407990

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str_0
	movabs	r9, OFFSET FLAT:.str_3
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	mov	qword ptr [rbp - 0x78], 1
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_511
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_511
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_511:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_528
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_528:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_532
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_515
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_546
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_509
.label_546:
	jmp	.label_515
.label_515:
	jmp	.label_517
.label_532:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_500
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_500
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	imul	rdx, rdx, 0xa
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_525
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_548
.label_525:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_548:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_509
.label_500:
	jmp	.label_517
.label_517:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_536]]
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_536]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_536]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_537
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.2_0
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.2_0
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_513
.label_537:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_539:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	fild	qword ptr [rbp - 0x138]
	fld	xword ptr [rbp - 0x100]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	fld	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	fld	xword ptr [rbp - 0xe0]
	xor	eax, eax
	mov	dl, al
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_524
	jmp	.label_535
.label_535:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_524:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_539
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.3_0
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.3_0
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rcx, r9d
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_544
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_505
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_505
.label_544:
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_542]]
	fmul	st(1), st(0)
	mov	rsi, rsp
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
	fdivp	st(2)
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.2_0
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x188]
	mov	al, r8b
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1b4], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
.label_505:
	jmp	.label_513
.label_513:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0xe8]
	add	rdx, rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	sub	rdx, qword ptr [rbp - 0xf0]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_519
.label_509:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_538
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_540
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1c8]
	div	rsi
	imul	rdx, rdx, 0xa
	movsxd	rdi, dword ptr [rbp - 0x3c]
	add	rdx, rdi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rbp - 0x30]
	shl	edx, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sar	ecx, 1
	add	edx, ecx
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rax, r8
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	jae	.label_547
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1cc], eax
	jmp	.label_526
.label_547:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1cc], eax
.label_526:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1cd], cl
	ja	.label_534
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1cd], cl
.label_534:
	mov	al, byte ptr [rbp - 0x1cd]
	test	al, 1
	jne	.label_545
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_499
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_502
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_504
	jmp	.label_510
.label_502:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_510
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_510
.label_504:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_518
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_518:
	jmp	.label_510
.label_510:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_527
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_508
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_527
.label_508:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rsi - 1], dl
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	mov	dword ptr [rbp - 0x3c], 0
.label_527:
	jmp	.label_499
.label_499:
	jmp	.label_540
.label_540:
	jmp	.label_538
.label_538:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_550
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	and	r8b, 1
	movzx	r9d, r8b
	add	ecx, r9d
	cmp	eax, ecx
	jl	.label_501
	jmp	.label_514
.label_550:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_514
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_514
.label_501:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_507
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_507
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_507
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_529
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_529:
	mov	qword ptr [rbp - 0x38], 1
.label_507:
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_549:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	esi, dword ptr [rbp - 0x10c]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_549
	jmp	.label_519
.label_519:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_520
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_520:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_522
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_531
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_543:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_506
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_533
	jmp	.label_506
.label_533:
	jmp	.label_541
.label_541:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_543
.label_506:
	jmp	.label_531
.label_531:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_503
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_503
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_503:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_512
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_516
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_516
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_523
.label_516:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1d4], ecx
.label_523:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_512:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_530
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_521
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_521
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_521:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_530:
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_551
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_552]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_551
	jmp	.label_553
.label_553:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_554]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	fnstcw	word ptr [rbp - 0x4c]
	mov	dx, word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], 0xc7f
	fldcw	word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x30]
	movabs	rdi, 0x8000000000000000
	xor	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	fstp	st(0)
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	jne	.label_555
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_536]]
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	setp	cl
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_555:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	setns	al
	movzx	ecx, al
	mov	edx, ecx
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_536]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_551:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408620

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_556:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_561
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_559
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_560
.label_559:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_560:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_561:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_558
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_558:
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_557
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_557:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	jmp	.label_556
	.section	.text
	.align	32
	#Procedure 0x408770
	.globl human_options
	.type human_options, @function
human_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	humblock
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	jne	.label_562
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_562:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_566
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_566
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_566
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_563
.label_566:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_564
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_564:
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0x24], r9d
	cmp	r8d, r9d
	jg	.label_569
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_570
.label_569:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_571
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_574
.label_571:
	jmp	.label_578
.label_578:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_565
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_565:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_575
	jmp	.label_572
.label_575:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_576
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_577
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_577:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_568
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_567
.label_568:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_567:
	jmp	.label_572
.label_576:
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_578
.label_572:
	jmp	.label_570
.label_570:
	jmp	.label_563
.label_563:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_574:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089e0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a10
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_581
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_581:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_579
	movabs	rdx, OFFSET FLAT:.str_4
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_579
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_585
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_584
	jmp	.label_582
.label_585:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_580
.label_584:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_582:
	jmp	.label_580
.label_580:
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c40

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_586
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_586:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:.str_4
	movabs	r12, OFFSET FLAT:.str_0
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_590
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_587
	jmp	.label_592
.label_592:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_589
	jmp	.label_588
.label_587:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_591
.label_589:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_588:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_591:
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ea0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_593
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_593:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_594
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_596
.label_594:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_596:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_595
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_595
	movabs	rsi, OFFSET FLAT:.str.2_1
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_597
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_597:
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fc0
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
	je	.label_598
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_599
.label_598:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_599
.label_599:
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
	.align	32
	#Procedure 0x409040
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_600
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_601
.label_600:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_601
.label_601:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409080
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
	je	.label_602
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_603
.label_602:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090d0

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
	je	.label_604
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_605
.label_604:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_605
.label_605:
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
	.align	32
	#Procedure 0x409180
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_606
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_606:
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
	.align	32
	#Procedure 0x4091c0

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
	jne	.label_607
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_607:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_609
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_608
.label_609:
	call	abort
.label_608:
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
	.align	32
	#Procedure 0x409230
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
	je	.label_610
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_611
.label_610:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_611
.label_611:
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
	.align	32
	#Procedure 0x409300

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
.label_690:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_808
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_794]]
	jmp	rcx
.label_1191:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1190:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_804
	jmp	.label_807
.label_807:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_809
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_809:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_804
.label_804:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_615
.label_1192:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_615
.label_1193:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_623
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_623:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_637
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_657:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_642
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_647
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_647:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_657
.label_642:
	jmp	.label_637
.label_637:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_615
.label_1188:
	mov	byte ptr [rbp - 0x79], 1
.label_1187:
	mov	byte ptr [rbp - 0x7b], 1
.label_1189:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_671
	mov	byte ptr [rbp - 0x79], 1
.label_671:
	jmp	.label_732
.label_732:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_681
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_677
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_681
.label_681:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_615
.label_1186:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_615
.label_808:
	call	abort
.label_615:
	mov	qword ptr [rbp - 0x58], 0
.label_655:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_673
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_699
.label_673:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_699:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_709
	jmp	.label_777
.label_709:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_718
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_718
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_718
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_725
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_725
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_713
.label_725:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_713:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_718
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_718
	test	byte ptr [rbp - 0x7b], 1
	je	.label_747
	jmp	.label_617
.label_747:
	mov	byte ptr [rbp - 0x81], 1
.label_718:
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
	ja	.label_752
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_759]]
	jmp	rcx
.label_1202:
	test	byte ptr [rbp - 0x79], 1
	je	.label_761
	jmp	.label_765
.label_765:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_766
	jmp	.label_617
.label_766:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_770
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_770
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_775
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_775:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_779
.label_779:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_782
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_782:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_663
.label_663:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_789
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_789:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_770:
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_799:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_806
.label_806:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_612
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_612
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_612
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_612
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_682
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_631
.label_631:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_634
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_634:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_612
.label_612:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_646
.label_761:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_649
	jmp	.label_653
.label_649:
	jmp	.label_646
.label_646:
	jmp	.label_641
.label_1183:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_654
	jmp	.label_661
.label_661:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_662
	jmp	.label_800
.label_654:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_666
	jmp	.label_617
.label_666:
	jmp	.label_670
.label_662:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_672
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_672
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_679
	jmp	.label_688
.label_688:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_679
	jmp	.label_692
.label_692:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_679
	jmp	.label_700
.label_700:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_679
	jmp	.label_704
.label_704:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_705
	jmp	.label_679
.label_679:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_712
	jmp	.label_617
.label_712:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_717
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_724
.label_724:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_728
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_734
.label_734:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_738
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_738:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_741
.label_741:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_750
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_750:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_746
.label_705:
	jmp	.label_746
.label_746:
	jmp	.label_672
.label_672:
	jmp	.label_670
.label_800:
	jmp	.label_670
.label_670:
	jmp	.label_641
.label_1203:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_753
.label_1204:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_753
.label_1208:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_753
.label_1206:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_757
.label_1209:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_757
.label_1205:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_757
.label_1207:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_753
.label_1184:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_763
	test	byte ptr [rbp - 0x7b], 1
	je	.label_768
	jmp	.label_617
.label_768:
	jmp	.label_727
.label_763:
	test	byte ptr [rbp - 0x79], 1
	je	.label_771
	test	byte ptr [rbp - 0x7b], 1
	je	.label_771
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_771
	jmp	.label_727
.label_771:
	jmp	.label_757
.label_757:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_778
	test	byte ptr [rbp - 0x7b], 1
	je	.label_778
	jmp	.label_617
.label_778:
	jmp	.label_753
.label_753:
	test	byte ptr [rbp - 0x79], 1
	je	.label_783
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_767
.label_783:
	jmp	.label_641
.label_1185:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_787
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_790
	jmp	.label_793
.label_787:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_790
.label_793:
	jmp	.label_641
.label_790:
	jmp	.label_796
.label_796:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_798
	jmp	.label_641
.label_798:
	jmp	.label_802
.label_802:
	mov	byte ptr [rbp - 0x83], 1
.label_1180:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_651
	test	byte ptr [rbp - 0x7b], 1
	je	.label_651
	jmp	.label_617
.label_651:
	jmp	.label_641
.label_1182:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_811
	test	byte ptr [rbp - 0x7b], 1
	je	.label_613
	jmp	.label_617
.label_613:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_618
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_618:
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_693
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_693:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_633
.label_633:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_636
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_636:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_644
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_650
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_650:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_811:
	jmp	.label_641
.label_1181:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_641
.label_752:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_665
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
	jmp	.label_669
.label_665:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_680
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_680:
	jmp	.label_689
.label_689:
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
	jne	.label_702
	jmp	.label_710
.label_702:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_708
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_710
.label_708:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_764
	mov	byte ptr [rbp - 0x91], 0
.label_735:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_719
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_719:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_731
	jmp	.label_733
.label_731:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_735
.label_733:
	jmp	.label_710
.label_764:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_740
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_740
	mov	qword ptr [rbp - 0xb8], 1
.label_773:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_742
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
	jb	.label_687
	jmp	.label_754
.label_754:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_687
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_687
	jmp	.label_762
.label_762:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_758
	jmp	.label_687
.label_687:
	jmp	.label_617
.label_758:
	jmp	.label_751
.label_751:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_773
.label_742:
	jmp	.label_740
.label_740:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_780
	mov	byte ptr [rbp - 0x91], 0
.label_780:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_627
.label_627:
	jmp	.label_785
.label_785:
	jmp	.label_786
.label_786:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_689
.label_710:
	jmp	.label_669
.label_669:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_795
	test	byte ptr [rbp - 0x79], 1
	je	.label_760
	test	byte ptr [rbp - 0x91], 1
	jne	.label_760
.label_795:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_745:
	test	byte ptr [rbp - 0x79], 1
	je	.label_812
	test	byte ptr [rbp - 0x91], 1
	jne	.label_812
	jmp	.label_624
.label_624:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_616
	jmp	.label_617
.label_616:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_620
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_620
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_628
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_628:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_632
.label_632:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_635
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_635:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_648
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_648:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_620:
	jmp	.label_656
.label_656:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_658
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_664
.label_664:
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_668
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_678
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_678:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_685
.label_812:
	test	byte ptr [rbp - 0x81], 1
	je	.label_691
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_696
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_696:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_691:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_706
	jmp	.label_711
.label_706:
	jmp	.label_714
.label_714:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_716
	test	byte ptr [rbp - 0x82], 1
	jne	.label_716
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_721
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_723
.label_723:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_726
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_726:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_716:
	jmp	.label_736
.label_736:
	jmp	.label_737
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_739
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_739:
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
	jmp	.label_745
.label_711:
	jmp	.label_727
.label_760:
	jmp	.label_641
.label_641:
	test	byte ptr [rbp - 0x79], 1
	je	.label_748
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_749
.label_748:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_630
.label_749:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_630
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
	jne	.label_659
.label_630:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_659
	jmp	.label_727
.label_659:
	jmp	.label_767
.label_767:
	jmp	.label_769
.label_769:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_743
	jmp	.label_617
.label_743:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_772
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_772
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_791:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_781
.label_781:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_784
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_792
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_792:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_772:
	jmp	.label_801
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_803
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_810
.label_810:
	jmp	.label_727
.label_727:
	jmp	.label_805
.label_805:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_614
	test	byte ptr [rbp - 0x82], 1
	jne	.label_614
	jmp	.label_640
.label_640:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_619
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_619:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_622
.label_622:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_629
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_629:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_614:
	jmp	.label_638
.label_638:
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_755
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_755:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_744
	mov	byte ptr [rbp - 0x7e], 0
.label_744:
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_655
.label_777:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_660
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_660
	test	byte ptr [rbp - 0x7b], 1
	je	.label_660
	jmp	.label_617
.label_660:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_697
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_697
	test	byte ptr [rbp - 0x7d], 1
	je	.label_697
	test	byte ptr [rbp - 0x7e], 1
	je	.label_674
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
	jmp	.label_684
.label_674:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_686
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_686
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_690
.label_686:
	jmp	.label_695
.label_695:
	jmp	.label_697
.label_697:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_698
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_698
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_703
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_707
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_707:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_715
.label_715:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_701
.label_703:
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_684
.label_617:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_729
	test	byte ptr [rbp - 0x79], 1
	je	.label_729
	mov	dword ptr [rbp - 0x34], 4
.label_729:
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
.label_684:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6a0
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
	.align	32
	#Procedure 0x40a6e0

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
	je	.label_813
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_814
.label_813:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_814
.label_814:
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
	je	.label_815
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_815:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a840
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_819:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_817
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_819
.label_817:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_820
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_818]],  rax
.label_820:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_816
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_816:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a920

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
	.align	32
	#Procedure 0x40a960

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
	jge	.label_828
	call	abort
.label_828:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_826
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_824
	call	xalloc_die
.label_824:
	test	byte ptr [rbp - 0x31], 1
	je	.label_825
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_827
.label_825:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_827:
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
	je	.label_823
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_818]]
	mov	qword ptr [rax + 8], rcx
.label_823:
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
.label_826:
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
	ja	.label_821
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_822
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_822:
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
.label_821:
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
	.align	32
	#Procedure 0x40abe0

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
	.align	32
	#Procedure 0x40ac20
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
	.align	32
	#Procedure 0x40ac40
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
	.align	32
	#Procedure 0x40ac70

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
	.align	32
	#Procedure 0x40acb0

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
	jne	.label_829
	call	abort
.label_829:
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
	.align	32
	#Procedure 0x40ad20

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
	.align	32
	#Procedure 0x40ad60

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
	.align	32
	#Procedure 0x40ad90
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
	.align	32
	#Procedure 0x40adc0

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
	.align	32
	#Procedure 0x40ae40

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
	.align	32
	#Procedure 0x40ae70

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
	.align	32
	#Procedure 0x40ae90
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
	.align	32
	#Procedure 0x40aec0

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
	.align	32
	#Procedure 0x40af70

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
	.align	32
	#Procedure 0x40afb0

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
	.align	32
	#Procedure 0x40b030
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
	.align	32
	#Procedure 0x40b060
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
	.align	32
	#Procedure 0x40b0a0

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
	.align	32
	#Procedure 0x40b0e0
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
	.align	32
	#Procedure 0x40b110

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
	.align	32
	#Procedure 0x40b140

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
	.align	32
	#Procedure 0x40b160

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
	je	.label_832
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_830
.label_832:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_831
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_830
.label_831:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_833
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_830
.label_833:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_830:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b260

	.globl verror
	.type verror, @function
verror:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	r8d, eax
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x20], rcx
	mov	ecx, eax
	mov	r8, qword ptr [rbp - 0x20]
	call	verror_at_line
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2b0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xvasprintf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_837
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_835
	movabs	r8, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error_at_line
	jmp	.label_834
.label_835:
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
.label_834:
	jmp	.label_836
.label_837:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_836:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b380

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
	je	.label_838
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_841
.label_838:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_841:
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
	ja	.label_840
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_842]]
	jmp	rcx
.label_1139:
	jmp	.label_839
.label_1140:
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
	jmp	.label_839
.label_1141:
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
	jmp	.label_839
.label_1142:
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
	jmp	.label_839
.label_1143:
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_839
.label_1144:
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
	jmp	.label_839
.label_1145:
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_839
.label_1146:
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
	jmp	.label_839
.label_1147:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_839
.label_1148:
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
	jmp	.label_839
.label_840:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_839:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b940
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
.label_845:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_843
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_845
.label_843:
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
	.align	32
	#Procedure 0x40b9b0

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
.label_846:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_850
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_848
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_847
.label_848:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_847:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_850:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_852
	jmp	.label_851
.label_852:
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_846
.label_851:
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
	.align	32
	#Procedure 0x40bac0
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
	je	.label_853
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
.label_853:
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
	.align	32
	#Procedure 0x40bc30
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
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	.align	32
	#Procedure 0x40bcc0
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
	jae	.label_854
	call	xalloc_die
.label_854:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd10

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
	jne	.label_855
	cmp	qword ptr [rbp - 8], 0
	je	.label_855
	call	xalloc_die
.label_855:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd50
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
	jae	.label_856
	call	xalloc_die
.label_856:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bda0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_857
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_857
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_859
.label_857:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_858
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_858
	call	xalloc_die
.label_858:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_859:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be20

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
	jne	.label_860
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_863
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
.label_863:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_861
	call	xalloc_die
.label_861:
	jmp	.label_862
.label_860:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_864
	call	xalloc_die
.label_864:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_862:
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
	.align	32
	#Procedure 0x40bf10

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
	.align	32
	#Procedure 0x40bf30
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
	.align	32
	#Procedure 0x40bf60
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
	.align	32
	#Procedure 0x40bfa0
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
	jb	.label_865
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_866
.label_865:
	call	xalloc_die
.label_866:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c000

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
	.align	32
	#Procedure 0x40c040
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
	.align	32
	#Procedure 0x40c080

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
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c0c0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_919
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_919
	jmp	.label_932
.label_919:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_932:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_882
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_886
.label_882:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_886
.label_886:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_910:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_907
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_910
.label_907:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_917
	mov	dword ptr [rbp - 4], 4
	jmp	.label_888
.label_917:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_924
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_880
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_880
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_880
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_884
.label_880:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_888
.label_884:
	jmp	.label_893
.label_924:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_894
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_901
	mov	dword ptr [rbp - 4], 4
	jmp	.label_888
.label_901:
	mov	dword ptr [rbp - 0x4c], 1
.label_894:
	jmp	.label_893
.label_893:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_927
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_888
.label_927:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_912
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_922
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_888
.label_922:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_875
	jmp	.label_874
.label_874:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_875
	jmp	.label_883
.label_883:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_875
	jmp	.label_891
.label_891:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_875
	jmp	.label_898
.label_898:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_875
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_875
	jmp	.label_908
.label_908:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_875
	jmp	.label_911
.label_911:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_875
	jmp	.label_906
.label_906:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_875
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_875
	jmp	.label_926
.label_926:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_915
	jmp	.label_875
.label_875:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_873
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_876
	jmp	.label_900
.label_900:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_876
	jmp	.label_896
.label_896:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_899
	jmp	.label_903
.label_903:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_905
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_905:
	jmp	.label_899
.label_876:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_899:
	jmp	.label_873
.label_873:
	jmp	.label_915
.label_915:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_916
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_923
	jmp	.label_928
.label_928:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_913
	jmp	.label_867
.label_867:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_870
	jmp	.label_878
.label_878:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_872
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_904
	jmp	.label_895
.label_895:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_871
	jmp	.label_902
.label_902:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_914
	jmp	.label_881
.label_881:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_909
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_925
	jmp	.label_918
.label_918:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_877
	jmp	.label_931
.label_931:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_913
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_870
	jmp	.label_885
.label_885:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_872
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_871
	jmp	.label_889
.label_889:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_892
	jmp	.label_897
.label_925:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_916:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_877:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_869
.label_923:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_913:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_870:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_872:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_904:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_871:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_892:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_914:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_909:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_869
.label_897:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_888
.label_869:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_890
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_890:
	jmp	.label_912
.label_912:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_888:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7f0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_933
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_934
.label_933:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_934:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c850

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_936:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_935
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_936
.label_935:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c8a0

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_944:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_937
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	jmp	.label_941
.label_937:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	je	.label_939
	jmp	.label_942
.label_939:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_938
	jmp	.label_942
.label_938:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_944
.label_942:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_940
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_943
	call	xalloc_die
.label_943:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_941
.label_940:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_941:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c990

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_951:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_955
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_947
	mov	eax, dword ptr [rbp - 0x7c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_952
.label_947:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_952:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_951
.label_955:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x98], rax
	je	.label_953
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_945
.label_953:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	jmp	.label_948
.label_945:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_950:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_946
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_949
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_954
.label_949:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_954:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_950
.label_946:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_948:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cba0

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
	jge	.label_956
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_959
.label_956:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_957
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_958
.label_957:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_958
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_958:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_960
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_960:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_959:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc70

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_987
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
.label_987:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_975
	jmp	.label_977
.label_977:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_979
	jmp	.label_983
.label_975:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_985
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_966
.label_985:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_966:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_980
.label_979:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_963
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_965
.label_963:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_965:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_980
.label_983:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_964
	jmp	.label_990
.label_990:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_961
	jmp	.label_969
.label_969:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_964
	jmp	.label_972
.label_972:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_961
	jmp	.label_976
.label_976:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_964
	jmp	.label_981
.label_981:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_964
	jmp	.label_991
.label_991:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_961
	jmp	.label_970
.label_970:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_964
	jmp	.label_973
.label_973:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_961
	jmp	.label_978
.label_978:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_964
	jmp	.label_982
.label_982:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_961
	jmp	.label_962
.label_962:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_964
	jmp	.label_971
.label_971:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_964
	jmp	.label_986
.label_986:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_974
	jmp	.label_961
.label_961:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_984
.label_964:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_988
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_967
.label_988:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_967:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_984
.label_974:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_989
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_968
.label_989:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_968:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_984:
	jmp	.label_980
.label_980:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d190

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1c0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_992
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_996
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_993
.label_996:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_997
.label_993:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_999
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_999:
	jmp	.label_997
.label_997:
	jmp	.label_994
.label_992:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_994:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_995
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_995
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1000
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_998
.label_1000:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_998:
	jmp	.label_995
.label_995:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1001
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1002
.label_1001:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1003
.label_1002:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1003:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d350

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
	je	.label_1004
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1004:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d390

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
	jne	.label_1005
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1005
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1005
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1007
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1006
.label_1007:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1006
.label_1005:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1006:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d460

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
	jne	.label_1008
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1008:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1009
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1009
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1009
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1010
.label_1009:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1010:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d510

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40d520

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1021:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1016
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1013
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1018
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1012
.label_1018:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1020
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1011
.label_1020:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1015
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1014
.label_1015:
	mov	byte ptr [rbp - 0x41], 1
.label_1014:
	jmp	.label_1011
.label_1011:
	jmp	.label_1017
.label_1017:
	jmp	.label_1013
.label_1013:
	jmp	.label_1019
.label_1019:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1021
.label_1016:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1022
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1012
.label_1022:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1012:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d670

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1023
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1024
.label_1023:
	movabs	rdi, OFFSET FLAT:.str.1_6
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1024:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d710

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1030:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1029
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1025
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1027
.label_1025:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_2
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1028
.label_1027:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_2
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1028:
	jmp	.label_1026
.label_1026:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1030
.label_1029:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d860
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1032
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1031
.label_1032:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1031:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8f0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1035:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1033
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1036
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1037
.label_1036:
	jmp	.label_1034
.label_1034:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1035
.label_1033:
	mov	qword ptr [rbp - 8], 0
.label_1037:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d990

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
	jne	.label_1038
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1042
.label_1038:
	jmp	.label_1039
.label_1039:
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
	jne	.label_1041
	jmp	.label_1040
.label_1041:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1039
.label_1040:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1042:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da50

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
	je	.label_1043
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_9
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1045
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_7
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1044
.label_1045:
	mov	byte ptr [rbp - 5], 0
.label_1044:
	jmp	.label_1043
.label_1043:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dad0

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
	jne	.label_1046
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_1046:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1047
	movabs	rax, OFFSET FLAT:.str.1_8
	mov	qword ptr [rbp - 8], rax
.label_1047:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db30

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	jb	.label_1048
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1049
.label_1048:
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1049
.label_1049:
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db80
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbc0
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc10
	.globl xmax
	.type xmax, @function
xmax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	jb	.label_1050
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1051
.label_1050:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1051:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc50

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
	ja	.label_1052
	jmp	.label_1054
.label_1054:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1053
.label_1052:
	jmp	.label_1053
.label_1053:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dca0
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
	jmp	.label_1058
.label_1058:
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
	ja	.label_1057
	jmp	.label_1055
.label_1055:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1059
.label_1057:
	mov	byte ptr [rbp - 1], 0
.label_1059:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd10
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
	#Procedure 0x40dd60
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
	#Procedure 0x40dd90
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
	#Procedure 0x40ddc0
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
	#Procedure 0x40de10
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
	#Procedure 0x40de50
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
	#Procedure 0x40de90
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
	#Procedure 0x40ded0
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
	#Procedure 0x40df10
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
	#Procedure 0x40df90
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
	jmp	.label_1093
.label_1093:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1091
	jmp	.label_1090
.label_1090:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1092
.label_1091:
	mov	byte ptr [rbp - 1], 0
.label_1092:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dfe0
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
	#Procedure 0x40e020
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
	jmp	.label_1099
.label_1099:
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
	ja	.label_1100
	jmp	.label_1097
.label_1097:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1101
.label_1100:
	mov	byte ptr [rbp - 1], 0
.label_1101:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e090

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
	#Procedure 0x40e0d0
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
	#Procedure 0x40e1c0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat