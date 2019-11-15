	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_11
	jmp	.label_18
.label_18:
	movabs	rdi, OFFSET FLAT:label_19
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_30
.label_11:
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_26
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_27
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_31
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_36
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_34
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_35
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_23
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_29
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_37
	mov	dword ptr [rbp - 0x70], eax
	call	emit_ancillary_info
.label_30:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4021a0

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
.label_40:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_39
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_39:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_47
	jmp	.label_52
.label_47:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_40
.label_52:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_42
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_42:
	movabs	rdi, OFFSET FLAT:label_46
	call	gettext
	movabs	rsi, OFFSET FLAT:label_48
	movabs	rdx, OFFSET FLAT:label_41
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
	je	.label_43
	movabs	rsi, OFFSET FLAT:label_51
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_43
	movabs	rdi, OFFSET FLAT:label_44
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_43:
	movabs	rdi, OFFSET FLAT:label_38
	call	gettext
	movabs	rsi, OFFSET FLAT:label_41
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_45
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_49
	movabs	rsi, OFFSET FLAT:label_50
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
	#Procedure 0x402340

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
	movabs	rsi, OFFSET FLAT:label_49
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_59
	movabs	rsi, OFFSET FLAT:label_72
	mov	qword ptr [rbp - 0xf8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_59
	mov	qword ptr [rbp - 0x100], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:maybe_close_stdout
	mov	qword ptr [rbp - 0x108], rax
	call	atexit
	mov	dword ptr [rbp - 0x10c], eax
	call	getpagesize
	movabs	rdx, OFFSET FLAT:label_37
	movabs	rcx, OFFSET FLAT:label_59
	mov	r9d, 1
	movabs	rsi, OFFSET FLAT:usage
	movabs	rdi, OFFSET FLAT:label_60
	movabs	r8, OFFSET FLAT:label_61
	movabs	r10, OFFSET FLAT:label_62
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
.label_79:
	cmp	dword ptr [rbp - 0x34], 0x100
	jge	.label_75
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x34]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_79
.label_75:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	scanargs
	call	apply_translations
	cmp	qword ptr [word ptr [input_file]],  0
	jne	.label_88
	movabs	rdi, OFFSET FLAT:label_80
	call	gettext
	xor	edi, edi
	mov	qword ptr [word ptr [input_file]],  rax
	mov	esi,  dword ptr [dword ptr [input_flags]]
	mov	rdx,  qword ptr [word ptr [input_file]]
	call	set_fd_flags
	jmp	.label_74
.label_88:
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	or	ecx, 0
	mov	edi, eax
	mov	edx, ecx
	mov	ecx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_65
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_66
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
.label_65:
	jmp	.label_74
.label_74:
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
	jle	.label_78
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_86
.label_78:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x148], rax
.label_86:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [word ptr [input_offset]],  rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [dword ptr [input_seek_errno]],  ecx
	cmp	qword ptr [word ptr [output_file]],  0
	jne	.label_54
	movabs	rdi, OFFSET FLAT:label_58
	call	gettext
	mov	edi, 1
	mov	qword ptr [word ptr [output_file]],  rax
	mov	esi,  dword ptr [dword ptr [output_flags]]
	mov	rdx,  qword ptr [word ptr [output_file]]
	call	set_fd_flags
	jmp	.label_71
.label_54:
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
	jne	.label_67
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x14d], cl
.label_67:
	mov	al, byte ptr [rbp - 0x14d]
	mov	ecx, 0x200
	xor	edx, edx
	test	al, 1
	cmovne	ecx, edx
	mov	edx, dword ptr [rbp - 0x14c]
	or	edx, ecx
	mov	dword ptr [rbp - 0x48], edx
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_84
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, 2
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_57
.label_84:
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, 1
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_57
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_66
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
.label_57:
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_69
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	jne	.label_69
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
	jae	.label_81
	movabs	rdi, OFFSET FLAT:label_55
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [seek_records]]
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_81:
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x50]
	call	iftruncate
	cmp	eax, 0
	je	.label_64
	call	__errno_location
	mov	edi, 1
	lea	rsi, [rbp - 0xf0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	fstat
	cmp	eax, 0
	je	.label_70
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_77
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
.label_70:
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_83
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_83
	mov	eax, dword ptr [rbp - 0xd8]
	sub	eax, dword ptr [rbp - 0xd8]
	cmp	eax, 0
	je	.label_90
.label_83:
	movabs	rdi, OFFSET FLAT:label_53
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
.label_90:
	jmp	.label_64
.label_64:
	jmp	.label_69
.label_69:
	jmp	.label_71
.label_71:
	call	gethrxtime
	mov	qword ptr [word ptr [start_time]],  rax
	mov	rax,  qword ptr [word ptr [start_time]]
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [next_time]],  rax
	call	dd_copy
	mov	dword ptr [rbp - 0x38], eax
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_73
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_73
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_85
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_85
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_68
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
.label_85:
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_63
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_63
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_68
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
.label_63:
	jmp	.label_56
.label_73:
	test	byte ptr [byte ptr [i_nocache]],  1
	jne	.label_76
	test	byte ptr [byte ptr [i_nocache_eof]],  1
	je	.label_82
.label_76:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	mov	byte ptr [rbp - 0x1a9], al
.label_82:
	test	byte ptr [byte ptr [o_nocache]],  1
	jne	.label_87
	test	byte ptr [byte ptr [o_nocache_eof]],  1
	je	.label_89
.label_87:
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	mov	byte ptr [rbp - 0x1aa], al
.label_89:
	jmp	.label_56
.label_56:
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
	.align	16
	#Procedure 0x402b30

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	movabs	rdi, OFFSET FLAT:label_94
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
	je	.label_93
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
	mov	dword ptr [rbp - 0xa8], eax
.label_93:
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	call	sigaction
	mov	edi, 1
	mov	edx, edi
	cmp	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0xac], eax
	je	.label_92
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
	mov	dword ptr [rbp - 0xb0], eax
.label_92:
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
	je	.label_91
	mov	edi, 0xa
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:siginfo_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0x18], 0
	call	sigaction
	mov	dword ptr [rbp - 0xc4], eax
.label_91:
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	cmp	eax, 0
	je	.label_95
	mov	edi, 2
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:interrupt_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0x18], 0xc0000000
	call	sigaction
	mov	dword ptr [rbp - 0xc8], eax
.label_95:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cc0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [close_stdout_required]],  1
	je	.label_96
	call	close_stdout
	jmp	.label_97
.label_96:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_98
	mov	edi, 1
	call	_exit
.label_98:
	jmp	.label_97
.label_97:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d10

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
.label_168:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_182
	mov	esi, 0x3d
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_186
	movabs	rdi, OFFSET FLAT:label_112
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
.label_186:
	movabs	rsi, OFFSET FLAT:label_204
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_211
	jmp	.label_131
.label_211:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [input_file]],  rax
	jmp	.label_184
.label_131:
	movabs	rsi, OFFSET FLAT:label_215
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_105
	jmp	.label_108
.label_105:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [output_file]],  rax
	jmp	.label_111
.label_108:
	movabs	rsi, OFFSET FLAT:label_115
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_118
	jmp	.label_120
.label_118:
	movabs	rsi, OFFSET FLAT:conversions
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_122
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_132
.label_120:
	movabs	rsi, OFFSET FLAT:label_136
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_139
	jmp	.label_142
.label_139:
	movabs	rsi, OFFSET FLAT:flags
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_145
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [input_flags]]
	mov	dword ptr [dword ptr [input_flags]],  eax
	jmp	.label_153
.label_142:
	movabs	rsi, OFFSET FLAT:label_157
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_160
	jmp	.label_194
.label_160:
	movabs	rsi, OFFSET FLAT:flags
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_171
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [output_flags]]
	mov	dword ptr [dword ptr [output_flags]],  eax
	jmp	.label_129
.label_194:
	movabs	rsi, OFFSET FLAT:label_177
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_179
	jmp	.label_180
.label_179:
	movabs	rsi, OFFSET FLAT:statuses
	mov	edx, 1
	movabs	rcx, OFFSET FLAT:label_181
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	mov	dword ptr [dword ptr [status_level]],  eax
	jmp	.label_183
.label_180:
	lea	rsi, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_integer
	movabs	rsi, OFFSET FLAT:label_193
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_198
	jmp	.label_200
.label_198:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	shl	rdx, 1
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_202
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_134
.label_202:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_134
.label_134:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_114
.label_200:
	movabs	rsi, OFFSET FLAT:label_119
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_125
	jmp	.label_128
.label_125:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_130
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_150
.label_130:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	jmp	.label_149
.label_128:
	movabs	rsi, OFFSET FLAT:label_159
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_164
	jmp	.label_167
.label_164:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	shl	rdx, 1
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_169
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_126
.label_169:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_126
.label_126:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_188
.label_167:
	movabs	rsi, OFFSET FLAT:label_196
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_197
	jmp	.label_199
.label_197:
	mov	qword ptr [rbp - 0x60], 1
	mov	qword ptr [rbp - 0x68], -1
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [conversion_blocksize]],  rax
	jmp	.label_146
.label_199:
	movabs	rsi, OFFSET FLAT:label_208
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_212
	jmp	.label_214
.label_212:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_203
.label_214:
	movabs	rsi, OFFSET FLAT:label_99
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_106
	jmp	.label_110
.label_106:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_113
.label_110:
	movabs	rsi, OFFSET FLAT:label_172
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_191
	jmp	.label_100
.label_191:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_144
.label_100:
	movabs	rdi, OFFSET FLAT:label_112
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
.label_144:
	jmp	.label_113
.label_113:
	jmp	.label_203
.label_203:
	jmp	.label_146
.label_146:
	jmp	.label_188
.label_188:
	jmp	.label_149
.label_149:
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_151
	mov	dword ptr [rbp - 0x4c], 4
	jmp	.label_154
.label_151:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_158
	mov	dword ptr [rbp - 0x4c], 1
.label_158:
	jmp	.label_154
.label_154:
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_161
	movabs	rdi, OFFSET FLAT:label_165
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
	movabs	rdx, OFFSET FLAT:label_133
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_161:
	jmp	.label_183
.label_183:
	jmp	.label_129
.label_129:
	jmp	.label_153
.label_153:
	jmp	.label_132
.label_132:
	jmp	.label_111
.label_111:
	jmp	.label_184
.label_184:
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_168
.label_182:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_190
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_195
.label_190:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x800
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_195:
	cmp	qword ptr [word ptr [input_blocksize]],  0
	jne	.label_201
	mov	qword ptr [word ptr [input_blocksize]],  0x200
.label_201:
	cmp	qword ptr [word ptr [output_blocksize]],  0
	jne	.label_207
	mov	qword ptr [word ptr [output_blocksize]],  0x200
.label_207:
	cmp	qword ptr [word ptr [conversion_blocksize]],  0
	jne	.label_213
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xffffffe7
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_213:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x101000
	cmp	eax, 0
	je	.label_104
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax, 0x101000
	mov	dword ptr [dword ptr [input_flags]],  eax
.label_104:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 1
	cmp	eax, 0
	je	.label_116
	movabs	rdi, OFFSET FLAT:label_171
	call	gettext
	movabs	rdi, OFFSET FLAT:label_102
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_133
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_116:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_141
	movabs	rdi, OFFSET FLAT:label_145
	call	gettext
	movabs	rdi, OFFSET FLAT:label_152
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_133
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_141:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0xc
	cmp	eax, 0
	je	.label_166
	movabs	rdi, OFFSET FLAT:label_171
	call	gettext
	movabs	rdi, OFFSET FLAT:label_175
	movabs	rcx, OFFSET FLAT:label_176
	mov	edx,  dword ptr [dword ptr [output_flags]]
	and	edx, 4
	cmp	edx, 0
	cmovne	rdi, rcx
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_133
	mov	edi, edx
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_166:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 8
	cmp	eax, 0
	je	.label_189
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_189
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
	jmp	.label_147
.label_189:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_206
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [skip_records]],  rax
.label_206:
	jmp	.label_147
.label_147:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 4
	cmp	eax, 0
	je	.label_192
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_192
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
	jmp	.label_101
.label_192:
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_117
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [max_records]],  rax
.label_117:
	jmp	.label_101
.label_101:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_127
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_127
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
	jmp	.label_135
.label_127:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_148
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [seek_records]],  rax
.label_148:
	jmp	.label_135
.label_135:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_155
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_155
	mov	al, 1
	cmp	qword ptr [word ptr [skip_records]],  0
	mov	byte ptr [rbp - 0xba], al
	jne	.label_170
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [max_records]]
	jae	.label_174
	mov	al, 1
	cmp	qword ptr [word ptr [max_records]],  -1
	mov	byte ptr [rbp - 0xba], al
	jb	.label_170
.label_174:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xba], cl
.label_170:
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_155:
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
	jne	.label_205
	jmp	.label_209
.label_205:
	movabs	rdi, OFFSET FLAT:label_210
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_209:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x18
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_103
	jmp	.label_107
.label_103:
	movabs	rdi, OFFSET FLAT:label_109
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_107:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x60
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_121
	jmp	.label_123
.label_121:
	movabs	rdi, OFFSET FLAT:label_124
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
	jne	.label_137
	jmp	.label_138
.label_137:
	movabs	rdi, OFFSET FLAT:label_140
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_138:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_156
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_156
	jmp	.label_162
.label_156:
	movabs	rdi, OFFSET FLAT:label_163
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_162:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_173
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [i_nocache]],  1
	cmp	qword ptr [word ptr [max_records]],  0
	mov	byte ptr [rbp - 0xbb], cl
	jne	.label_178
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbb], al
.label_178:
	mov	al, byte ptr [rbp - 0xbb]
	and	al, 1
	mov	byte ptr [byte ptr [i_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [input_flags]],  ecx
.label_173:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_187
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [o_nocache]],  1
	cmp	qword ptr [word ptr [max_records]],  0
	mov	byte ptr [rbp - 0xbc], cl
	jne	.label_143
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbc], al
.label_143:
	mov	al, byte ptr [rbp - 0xbc]
	and	al, 1
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [output_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [output_flags]],  ecx
.label_187:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 1
	cmp	eax, 0
	je	.label_223
	movabs	rdi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_223:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_219
	mov	dword ptr [rbp - 4], 0
.label_216:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_225
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_216
.label_225:
	mov	byte ptr [byte ptr [translation_needed]],  1
	jmp	.label_218
.label_219:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_226
	mov	dword ptr [rbp - 4], 0
.label_224:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_217
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	tolower
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_224
.label_217:
	mov	byte ptr [byte ptr [translation_needed]],  1
.label_226:
	jmp	.label_218
.label_218:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 2
	cmp	eax, 0
	je	.label_222
	movabs	rdi, OFFSET FLAT:ascii_to_ebcdic
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_229]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	al,  byte ptr [byte ptr [label_230]]
	mov	byte ptr [byte ptr [space_character]],  al
	jmp	.label_220
.label_222:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 4
	cmp	eax, 0
	je	.label_221
	movabs	rdi, OFFSET FLAT:ascii_to_ibm
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_227]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	al,  byte ptr [byte ptr [label_228]]
	mov	byte ptr [byte ptr [space_character]],  al
.label_221:
	jmp	.label_220
.label_220:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b70

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
	je	.label_239
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
	jge	.label_242
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_232
.label_242:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_231
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_238
	lea	rsi, [rbp - 0xb0]
	mov	edi, dword ptr [rbp - 4]
	call	fstat
	cmp	eax, 0
	je	.label_241
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_234
.label_241:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_235
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_235
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_240
.label_235:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0
	cmp	eax, 0
	je	.label_233
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_233
	call	__errno_location
	mov	dword ptr [rax], 0x1f
	mov	byte ptr [rbp - 0x19], 0
.label_233:
	jmp	.label_240
.label_240:
	jmp	.label_234
.label_234:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xfffeffff
	mov	dword ptr [rbp - 0x18], eax
.label_238:
	test	byte ptr [rbp - 0x19], 1
	je	.label_237
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_237
	mov	esi, 4
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_237
	mov	byte ptr [rbp - 0x19], 0
.label_237:
	jmp	.label_231
.label_231:
	jmp	.label_232
.label_232:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_236
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_243
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
.label_236:
	jmp	.label_239
.label_239:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d40

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
.label_245:
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
	jge	.label_244
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x1d], cl
.label_244:
	mov	al, byte ptr [rbp - 0x1d]
	test	al, 1
	jne	.label_245
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403db0

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
	je	.label_246
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
.label_246:
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
	jge	.label_247
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	dword ptr [rbp - 0x190], eax
.label_247:
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
	.align	16
	#Procedure 0x403f40

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
.label_249:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ftruncate
	mov	dword ptr [rbp - 0x14], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], cl
	jge	.label_248
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x15], cl
.label_248:
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_249
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [word ptr [skip_records]],  0
	jne	.label_332
	cmp	qword ptr [word ptr [skip_bytes]],  0
	je	.label_287
.label_332:
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
	jne	.label_299
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	jne	.label_272
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_272
.label_299:
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_272
	movabs	rdi, OFFSET FLAT:label_278
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
.label_272:
	jmp	.label_287
.label_287:
	cmp	qword ptr [word ptr [seek_records]],  0
	jne	.label_268
	cmp	qword ptr [word ptr [seek_bytes]],  0
	je	.label_279
.label_268:
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
	jne	.label_311
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_296
.label_311:
	mov	rdi,  qword ptr [word ptr [obuf]]
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x128], rdi
	je	.label_313
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_315
.label_313:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x130], rax
.label_315:
	mov	rax, qword ptr [rbp - 0x130]
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rdx, rax
	call	memset
.label_274:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_318
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_321
.label_318:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x138], rax
.label_321:
	mov	rax, qword ptr [rbp - 0x138]
	mov	edi, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x58]
	call	iwrite
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_336
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_339
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
.label_336:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_258
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_260
.label_258:
	mov	qword ptr [rbp - 0x48], 0
.label_260:
	jmp	.label_266
.label_266:
	mov	al, 1
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x149], al
	jne	.label_269
	cmp	qword ptr [rbp - 0x48], 0
	setne	al
	mov	byte ptr [rbp - 0x149], al
.label_269:
	mov	al, byte ptr [rbp - 0x149]
	test	al, 1
	jne	.label_274
	jmp	.label_296
.label_296:
	jmp	.label_279
.label_279:
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_281
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_281
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_284
.label_281:
	call	alloc_ibuf
	call	alloc_obuf
.label_316:
	cmp	dword ptr [dword ptr [status_level]],  4
	jne	.label_288
	call	gethrxtime
	mov	qword ptr [rbp - 0x60], rax
	mov	rax,  qword ptr [word ptr [next_time]]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_297
	mov	rdi, qword ptr [rbp - 0x60]
	call	print_xfer_stats
	mov	rdi,  qword ptr [word ptr [next_time]]
	add	rdi, 0x3b9aca00
	mov	qword ptr [word ptr [next_time]],  rdi
.label_297:
	jmp	.label_288
.label_288:
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
	jb	.label_310
	jmp	.label_285
.label_310:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_286
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_286
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
.label_286:
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	cmp	rax,  qword ptr [word ptr [max_records]]
	jb	.label_333
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [max_bytes]]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_342
.label_333:
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
.label_342:
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_251
	mov	rdi, qword ptr [rbp - 0x18]
	call	advance_input_offset
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_256
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x14a], al
.label_256:
	jmp	.label_262
.label_251:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_265
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
	je	.label_270
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x14b], cl
.label_270:
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
	jmp	.label_285
.label_265:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_306
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_302
.label_306:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_308
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
.label_302:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_331
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
	jne	.label_324
	mov	dword ptr [rbp - 0x24], 1
	mov	byte ptr [byte ptr [input_seekable]],  0
	mov	dword ptr [dword ptr [input_seek_errno]],  0x1d
.label_324:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_329
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_329
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_294
.label_329:
	jmp	.label_316
.label_294:
	jmp	.label_343
.label_331:
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_285
.label_343:
	jmp	.label_346
.label_346:
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jae	.label_347
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [r_partial]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx,  dword ptr [dword ptr [conversions_mask]]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_254
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	jne	.label_267
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
.label_267:
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x30], rax
.label_254:
	jmp	.label_263
.label_347:
	mov	rax,  qword ptr [word ptr [r_full]]
	add	rax, 1
	mov	qword ptr [word ptr [r_full]],  rax
	mov	qword ptr [rbp - 0x20], 0
.label_263:
	mov	rax,  qword ptr [word ptr [ibuf]]
	cmp	rax,  qword ptr [word ptr [obuf]]
	jne	.label_309
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
	je	.label_252
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_300
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
	jmp	.label_284
.label_252:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jne	.label_322
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	jmp	.label_328
.label_322:
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_328:
	jmp	.label_295
.label_295:
	jmp	.label_316
.label_309:
	test	byte ptr [byte ptr [translation_needed]],  1
	je	.label_338
	mov	rdi,  qword ptr [word ptr [ibuf]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	translate_buffer
.label_338:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_345
	lea	rsi, [rbp - 0x30]
	mov	rdi,  qword ptr [word ptr [ibuf]]
	call	swab_buffer
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_253
.label_345:
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0x10], rax
.label_253:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_259
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_with_block
	jmp	.label_301
.label_259:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_271
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_with_unblock
	jmp	.label_275
.label_271:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_simple
.label_275:
	jmp	.label_301
.label_301:
	jmp	.label_316
.label_285:
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_282
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_319
	movabs	rdi, OFFSET FLAT:saved_char
	mov	eax, 1
	mov	esi, eax
	call	copy_with_block
	jmp	.label_291
.label_319:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_293
	movabs	rdi, OFFSET FLAT:saved_char
	mov	eax, 1
	mov	esi, eax
	call	copy_with_unblock
	jmp	.label_303
.label_293:
	jmp	.label_305
.label_305:
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_335
	call	write_output
.label_335:
	jmp	.label_314
.label_314:
	jmp	.label_303
.label_303:
	jmp	.label_291
.label_291:
	jmp	.label_282
.label_282:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_264
	cmp	qword ptr [word ptr [col]],  0
	jbe	.label_264
	mov	rax,  qword ptr [word ptr [col]]
	mov	qword ptr [rbp - 0x78], rax
.label_344:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_320
	jmp	.label_325
.label_325:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_327
	call	write_output
.label_327:
	jmp	.label_340
.label_340:
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_344
.label_320:
	jmp	.label_264
.label_264:
	cmp	qword ptr [word ptr [col]],  0
	je	.label_250
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_250
	jmp	.label_255
.label_255:
	mov	al,  byte ptr [byte ptr [newline_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_257
	call	write_output
.label_257:
	jmp	.label_273
.label_273:
	jmp	.label_250
.label_250:
	cmp	qword ptr [word ptr [oc]],  0
	je	.label_276
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx,  qword ptr [word ptr [oc]]
	call	iwrite
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_283
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_283:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax,  qword ptr [word ptr [oc]]
	je	.label_298
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_300
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
	jmp	.label_284
.label_298:
	jmp	.label_276
.label_276:
	test	byte ptr [byte ptr [final_op_was_seek]],  1
	je	.label_290
	mov	edi, 1
	lea	rsi, [rbp - 0x110]
	call	fstat
	cmp	eax, 0
	je	.label_317
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_77
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
	jmp	.label_284
.label_317:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_337
	mov	eax, dword ptr [rbp - 0xf8]
	sub	eax, dword ptr [rbp - 0xf8]
	cmp	eax, 0
	je	.label_289
.label_337:
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
	jg	.label_277
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x118]
	jge	.label_277
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x118]
	call	iftruncate
	cmp	eax, 0
	je	.label_261
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_280
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
	jmp	.label_284
.label_261:
	jmp	.label_277
.label_277:
	jmp	.label_289
.label_289:
	jmp	.label_290
.label_290:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x4000
	cmp	eax, 0
	je	.label_292
	mov	edi, 1
	call	fdatasync
	cmp	eax, 0
	je	.label_292
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_323
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_323
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
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
.label_323:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_292:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x8000
	cmp	eax, 0
	je	.label_304
	jmp	.label_307
.label_307:
	mov	edi, 1
	call	fsync
	cmp	eax, 0
	je	.label_326
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_330
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_334
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
	jmp	.label_284
.label_330:
	jmp	.label_307
.label_326:
	jmp	.label_304
.label_304:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_284:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e20

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
	jne	.label_359
	mov	al,  byte ptr [byte ptr [i_nocache_eof]]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_348
.label_359:
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
.label_348:
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
	je	.label_353
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_353
	mov	byte ptr [rbp - 1], 1
	jmp	.label_350
.label_353:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_360
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_360
	test	byte ptr [rbp - 0x21], 1
	jne	.label_360
	mov	byte ptr [rbp - 1], 1
	jmp	.label_350
.label_360:
	jmp	.label_352
.label_352:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_355
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	call	cache_round
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_362
.label_355:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 8], 0
	jne	.label_366
	test	byte ptr [byte ptr [input_seekable]],  1
	je	.label_354
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_357
.label_354:
	mov	qword ptr [rbp - 0x20], -1
	call	__errno_location
	mov	dword ptr [rax], 0x1d
.label_357:
	jmp	.label_361
.label_366:
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  -1
	je	.label_349
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  0
	jge	.label_365
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 8]
	call	lseek
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
	jmp	.label_356
.label_365:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_363
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	add	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
.label_363:
	jmp	.label_356
.label_356:
	jmp	.label_349
.label_349:
	mov	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [rbp - 0x20], rax
.label_361:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_358
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_351
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_351
	test	byte ptr [rbp - 0x21], 1
	je	.label_351
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_351:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_364
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [page_size]]
	mov	rsi, qword ptr [rbp - 0x20]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x20], rsi
.label_364:
	mov	ecx, 4
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x14], eax
.label_358:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x14], -1
	cmovne	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_350:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405070

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
	.align	16
	#Procedure 0x405090

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
	.align	16
	#Procedure 0x4050b0

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
	.align	16
	#Procedure 0x4050d0

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
	.align	16
	#Procedure 0x405100

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
.label_373:
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_371:
	mov	edx, 0x2c
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	operand_matches
	xor	edx, edx
	mov	cl, dl
	test	al, 1
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_370
	jmp	.label_376
.label_370:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xc], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_376:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_378
	jmp	.label_380
.label_378:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_367
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_375
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_374
.label_375:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
.label_374:
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
	movabs	rdx, OFFSET FLAT:label_133
	mov	edi, esi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_367:
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_371
.label_380:
	test	byte ptr [rbp - 0x11], 1
	je	.label_377
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_379
.label_377:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], ecx
.label_379:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_368
	jmp	.label_372
.label_368:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_373
.label_372:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:label_385
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_381
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_381
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	parse_integer
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_387
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_387
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	qword ptr [rbp - 8], 0
	jmp	.label_388
.label_387:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_390
	movabs	rsi, OFFSET FLAT:label_386
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_390
	movabs	rdi, OFFSET FLAT:label_389
	call	gettext
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:label_386
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:label_382
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
.label_390:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_384
.label_381:
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_383
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_388
.label_383:
	jmp	.label_384
.label_384:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_388:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
.label_394:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_391
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	iread
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_392
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_393
.label_392:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_395
	jmp	.label_391
.label_395:
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
	jmp	.label_394
.label_391:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_393:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054a0

	.globl iread
	.type iread, @function
iread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_401:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_398
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_398
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_398
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_398
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	je	.label_398
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
.label_398:
	jmp	.label_403
.label_403:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_405
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_405:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_401
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_402
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_402
	call	process_signals
.label_402:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_396
	test	byte ptr [byte ptr [warn_partial_read]],  1
	je	.label_396
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_404
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_404
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_397
	mov	rdi, qword ptr [rbp - 0x28]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_399
	movabs	rsi, OFFSET FLAT:label_400
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
.label_397:
	mov	byte ptr [byte ptr [warn_partial_read]],  0
.label_404:
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [iread.prev_nread]],  rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405640

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
	.align	16
	#Procedure 0x405660

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
.label_407:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_406
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
	je	.label_410
	mov	byte ptr [rbp - 1], 0
	jmp	.label_409
.label_410:
	jmp	.label_407
.label_406:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rcx], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_408
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	sete	sil
	mov	byte ptr [rbp - 0x1a], sil
.label_408:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_409:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405700

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
.label_417:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_415
	mov	eax,  dword ptr [dword ptr [info_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_415:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_416
	jmp	.label_413
.label_416:
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
	je	.label_411
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	dword ptr [dword ptr [info_signal_count]],  eax
.label_411:
	mov	edi, 2
	lea	rsi, [rbp - 0x88]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	cmp	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_414
	call	cleanup
.label_414:
	call	print_stats
	cmp	dword ptr [rbp - 4], 0
	je	.label_412
	mov	edi, dword ptr [rbp - 4]
	call	raise
	mov	dword ptr [rbp - 0x98], eax
.label_412:
	jmp	.label_417
.label_413:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057f0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_418
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_419
.label_418:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_419:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405840

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_422
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_421
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
.label_422:
	mov	edi, 1
	call	close
	cmp	eax, 0
	jge	.label_420
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_423
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
.label_420:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405900

	.globl print_stats
	.type print_stats, @function
print_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	cmp	dword ptr [dword ptr [status_level]],  1
	jne	.label_424
	jmp	.label_427
.label_424:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_430
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	dword ptr [rbp - 4], eax
.label_430:
	movabs	rdi, OFFSET FLAT:label_431
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
	je	.label_429
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [r_truncate]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_425
	movabs	rsi, OFFSET FLAT:label_426
	mov	rdx, rax
	call	ngettext
	mov	rdx,  qword ptr [word ptr [r_truncate]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x24], eax
.label_429:
	cmp	dword ptr [dword ptr [status_level]],  2
	jne	.label_428
	jmp	.label_427
.label_428:
	xor	eax, eax
	mov	edi, eax
	call	print_xfer_stats
.label_427:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a20

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x8b0
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_442
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_455
.label_442:
	call	gethrxtime
	mov	qword ptr [rbp - 0x830], rax
.label_455:
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
	jge	.label_446
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_432]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_433]]
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
	jmp	.label_440
.label_446:
	movabs	rdi, OFFSET FLAT:label_445
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 0x7c8], xmm0
	mov	rax, qword ptr [rbp - 0x7e8]
	movsxd	rsi, dword ptr [rbp - 0x7ec]
	mov	qword ptr [rbp - 0x858], rsi
	mov	qword ptr [rbp - 0x860], rax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_441
	mov	rdi, qword ptr [rbp - 0x860]
	mov	rsi, qword ptr [rbp - 0x858]
	mov	rcx, rax
	mov	al, 0
	call	snprintf
	mov	rcx, qword ptr [rbp - 0x7e8]
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	dword ptr [rbp - 0x864], eax
.label_440:
	cmp	qword ptr [rbp - 8], 0
	je	.label_437
	mov	edi, 0xd
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x868], eax
.label_437:
	mov	eax, 0x18
	mov	esi, eax
	movabs	rcx, OFFSET FLAT:label_452
	movabs	rdx, OFFSET FLAT:label_453
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
	jne	.label_434
	jmp	.label_435
.label_434:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [rbp - 0x878], rdi
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_449
	movabs	rsi, OFFSET FLAT:label_450
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
	jmp	.label_444
.label_435:
	mov	rdi, qword ptr [rbp - 0x7e0]
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_456
	jmp	.label_447
.label_456:
	movabs	rdi, OFFSET FLAT:label_438
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
	jmp	.label_443
.label_447:
	movabs	rdi, OFFSET FLAT:label_448
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
.label_443:
	mov	eax, dword ptr [rbp - 0x88c]
	mov	dword ptr [rbp - 0x87c], eax
.label_444:
	mov	eax, dword ptr [rbp - 0x87c]
	mov	dword ptr [rbp - 0x824], eax
	cmp	qword ptr [rbp - 8], 0
	je	.label_451
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x824]
	jg	.label_436
	mov	eax, dword ptr [rbp - 0x824]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_436
	movabs	rsi, OFFSET FLAT:label_454
	movabs	rcx, OFFSET FLAT:label_49
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax,  dword ptr [dword ptr [progress_len]]
	sub	eax, dword ptr [rbp - 0x824]
	mov	edx, eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x8a4], eax
.label_436:
	mov	eax, dword ptr [rbp - 0x824]
	mov	dword ptr [dword ptr [progress_len]],  eax
	jmp	.label_439
.label_451:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x8a8], eax
.label_439:
	add	rsp, 0x8b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ed0

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
	.align	16
	#Procedure 0x405f10

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_457:
	cmp	dword ptr [rbp - 0xc], 0x100
	jge	.label_458
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
	jmp	.label_457
.label_458:
	mov	byte ptr [byte ptr [translation_needed]],  1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f70

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
	ja	.label_470
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x38]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, rax
	jg	.label_470
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_490
	xor	edi, edi
	lea	rsi, [rbp - 0xc8]
	call	fstat
	cmp	eax, 0
	je	.label_466
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_77
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
.label_466:
	lea	rdi, [rbp - 0xc8]
	call	usable_st_size
	test	al, 1
	jne	.label_488
	jmp	.label_459
.label_488:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [input_offset]]
	add	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	jae	.label_459
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x98]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_468
.label_459:
	mov	qword ptr [rbp - 0x20], 0
.label_468:
	mov	rdi, qword ptr [rbp - 0x38]
	call	advance_input_offset
	jmp	.label_485
.label_490:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_485:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_489
.label_470:
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
	jl	.label_472
	cmp	dword ptr [rbp - 0xcc], 0
	jne	.label_475
	mov	dword ptr [rbp - 0xcc], 0x4b
.label_475:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_478
	movabs	rdi, OFFSET FLAT:label_481
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
	jmp	.label_467
.label_478:
	movabs	rdi, OFFSET FLAT:label_469
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
.label_467:
	mov	edi, 1
	call	quit
.label_472:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_482
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_462
.label_482:
	call	alloc_obuf
	mov	rax,  qword ptr [word ptr [obuf]]
	mov	qword ptr [rbp - 0xd8], rax
.label_462:
	jmp	.label_461
.label_461:
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0xd8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x120], rax
	mov	dword ptr [rbp - 0x124], edi
	mov	qword ptr [rbp - 0x130], rsi
	je	.label_476
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_486
.label_476:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x138], rax
.label_486:
	mov	rax, qword ptr [rbp - 0x138]
	mov	edi, dword ptr [rbp - 0x124]
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	rax, qword ptr [rbp - 0x120]
	call	rax
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	jge	.label_480
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_477
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_308
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
	je	.label_463
	call	print_stats
.label_463:
	jmp	.label_471
.label_477:
	movabs	rdi, OFFSET FLAT:label_469
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
.label_471:
	mov	edi, 1
	call	quit
.label_480:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_460
	jmp	.label_464
.label_460:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_465
	mov	rdi, qword ptr [rbp - 0xe0]
	call	advance_input_offset
.label_465:
	jmp	.label_473
.label_473:
	jmp	.label_487
.label_487:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_474
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_479
.label_474:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_479:
	jmp	.label_483
.label_483:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x159], al
	jne	.label_484
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x159], cl
.label_484:
	mov	al, byte ptr [rbp - 0x159]
	test	al, 1
	jne	.label_461
.label_464:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_489:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406430

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
	je	.label_500
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jae	.label_500
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
	je	.label_501
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_501
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_505
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
.label_501:
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	mov	byte ptr [byte ptr [o_nocache_eof]],  1
	call	invalidate_cache
	mov	edi,  dword ptr [dword ptr [conversions_mask]]
	or	edi, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  edi
	mov	byte ptr [rbp - 0x41], al
.label_500:
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_498
	mov	qword ptr [rbp - 0x30], 0
	call	process_signals
	mov	byte ptr [byte ptr [final_op_was_seek]],  0
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_499
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	is_nul
	test	al, 1
	jne	.label_503
	jmp	.label_499
.label_503:
	mov	edx, 1
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	call	lseek
	cmp	rax, 0
	jge	.label_496
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xfffeffff
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_502
.label_496:
	mov	byte ptr [byte ptr [final_op_was_seek]],  1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_502:
	jmp	.label_499
.label_499:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_493
	mov	edi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rdx, rcx
	call	write
	mov	qword ptr [rbp - 0x30], rax
.label_493:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_504
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_492
	jmp	.label_498
.label_492:
	jmp	.label_495
.label_504:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_497
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_498
.label_497:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_495
.label_495:
	jmp	.label_491
.label_498:
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_494
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_494
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x42], al
.label_494:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406680

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
	.align	16
	#Procedure 0x4066a0

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2c0
	cmp	qword ptr [word ptr [ibuf]],  0
	je	.label_506
	jmp	.label_509
.label_506:
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
	jne	.label_508
	movabs	rdi, OFFSET FLAT:label_507
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
.label_508:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [ibuf]],  rax
.label_509:
	add	rsp, 0x2c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067b0

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2c0
	cmp	qword ptr [word ptr [obuf]],  0
	je	.label_513
	jmp	.label_511
.label_513:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_512
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	sub	rcx, 1
	add	rax, rcx
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_510
	movabs	rdi, OFFSET FLAT:label_514
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
.label_510:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [obuf]],  rax
	jmp	.label_511
.label_512:
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [word ptr [obuf]],  rax
.label_511:
	add	rsp, 0x2c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068d0

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
	jae	.label_515
	mov	byte ptr [byte ptr [input_offset_overflow]],  1
.label_515:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406910

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	test	byte ptr [byte ptr [input_seekable]],  1
	jne	.label_521
	cmp	dword ptr [dword ptr [input_seek_errno]],  0x1d
	jne	.label_526
	mov	byte ptr [rbp - 1], 1
	jmp	.label_519
.label_526:
	mov	eax,  dword ptr [dword ptr [input_seek_errno]]
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	jmp	.label_518
.label_521:
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
	je	.label_522
	movabs	rdi, OFFSET FLAT:label_524
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
	jmp	.label_519
.label_522:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	lseek
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x18], rax
	cmp	rsi, qword ptr [rbp - 0x18]
	jg	.label_523
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [input_offset]]
	jne	.label_517
	mov	byte ptr [rbp - 1], 1
	jmp	.label_519
.label_517:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [input_offset]]
	sub	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_525
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_516
.label_525:
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_516
	movabs	rdi, OFFSET FLAT:label_527
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_516:
	xor	esi, esi
	mov	ecx, 1
	mov	rdi,  qword ptr [word ptr [input_file]]
	mov	rdx, qword ptr [rbp - 0x20]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, rax
	jg	.label_520
	mov	byte ptr [rbp - 1], 1
	jmp	.label_519
.label_520:
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_528
	movabs	rdi, OFFSET FLAT:label_529
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_528:
	jmp	.label_523
.label_523:
	jmp	.label_518
.label_518:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_469
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
.label_519:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b40

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
.label_531:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_530
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
	jmp	.label_531
.label_530:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bb0

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
	je	.label_532
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
.label_532:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	and	rax, 1
	cmp	rax, 0
	je	.label_533
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rax + rcx - 1]
	mov	byte ptr [byte ptr [saved_char]],  sil
	mov	byte ptr [byte ptr [char_is_saved]],  1
.label_533:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_534:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_535
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
	jmp	.label_534
.label_535:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cb0

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
.label_541:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_553
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsx	edx,  byte ptr [byte ptr [newline_character]]
	cmp	ecx, edx
	jne	.label_542
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_536
	mov	rax,  qword ptr [word ptr [col]]
	mov	qword ptr [rbp - 0x20], rax
.label_548:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_540
	jmp	.label_545
.label_545:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_547
	call	write_output
.label_547:
	jmp	.label_550
.label_550:
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_548
.label_540:
	jmp	.label_536
.label_536:
	mov	qword ptr [word ptr [col]],  0
	jmp	.label_537
.label_542:
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jne	.label_543
	mov	rax,  qword ptr [word ptr [r_truncate]]
	add	rax, 1
	mov	qword ptr [word ptr [r_truncate]],  rax
	jmp	.label_552
.label_543:
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_539
	jmp	.label_544
.label_544:
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
	jb	.label_546
	call	write_output
.label_546:
	jmp	.label_549
.label_549:
	jmp	.label_539
.label_539:
	jmp	.label_552
.label_552:
	mov	rax,  qword ptr [word ptr [col]]
	add	rax, 1
	mov	qword ptr [word ptr [col]],  rax
.label_537:
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_541
.label_553:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e70

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_570:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_556
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x19], dl
	mov	rax,  qword ptr [word ptr [col]]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [col]],  rcx
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jb	.label_560
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
	jb	.label_557
	call	write_output
.label_557:
	jmp	.label_564
.label_564:
	jmp	.label_565
.label_560:
	movsx	eax, byte ptr [rbp - 0x19]
	movsx	ecx,  byte ptr [byte ptr [space_character]]
	cmp	eax, ecx
	jne	.label_569
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	add	rax, 1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	jmp	.label_559
.label_569:
	jmp	.label_558
.label_558:
	cmp	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	je	.label_563
	jmp	.label_562
.label_562:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_554
	call	write_output
.label_554:
	jmp	.label_555
.label_555:
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	add	rax, -1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	jmp	.label_558
.label_563:
	jmp	.label_561
.label_561:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_566
	call	write_output
.label_566:
	jmp	.label_568
.label_568:
	jmp	.label_559
.label_559:
	jmp	.label_565
.label_565:
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_570
.label_556:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407060

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
.label_574:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	sub	rcx,  qword ptr [word ptr [oc]]
	cmp	rax, rcx
	jae	.label_573
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_572
.label_573:
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	sub	rax,  qword ptr [word ptr [oc]]
	mov	qword ptr [rbp - 0x28], rax
.label_572:
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
	jb	.label_575
	call	write_output
.label_575:
	jmp	.label_571
.label_571:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_574
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407140

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
	je	.label_576
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_339
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
	je	.label_577
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_577:
	mov	edi, 1
	call	quit
.label_576:
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	mov	qword ptr [word ptr [oc]],  0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407220

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
	jg	.label_578
	test	byte ptr [rbp - 0x81], 1
	je	.label_578
	mov	eax, 0x80306d02
	mov	esi, eax
	lea	rdx, [rbp - 0x80]
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jne	.label_578
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_578
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rbp - 0x58]
	jne	.label_578
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x54]
	jne	.label_578
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_580
	movabs	rdi, OFFSET FLAT:label_579
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
.label_580:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x90], -1
.label_578:
	mov	rax, qword ptr [rbp - 0x90]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407360

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
	je	.label_581
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_581
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_581
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_581
.label_581:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073e0

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
	jne	.label_582
	mov	byte ptr [rbp - 1], 1
	jmp	.label_583
.label_582:
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_589
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_590
	mov	byte ptr [rbp - 1], 0
	jmp	.label_583
.label_590:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_592
	mov	byte ptr [rbp - 1], 1
	jmp	.label_583
.label_592:
	jmp	.label_584
.label_589:
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_588
	mov	byte ptr [rbp - 1], 0
	jmp	.label_583
.label_588:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_587
	mov	byte ptr [rbp - 1], 1
	jmp	.label_583
.label_587:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_591
	jmp	.label_585
.label_591:
	jmp	.label_586
.label_585:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_583:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407500

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
	.align	16
	#Procedure 0x407550

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
	#Procedure 0x407560

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
	je	.label_593
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
	jbe	.label_594
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_595
.label_594:
	mov	qword ptr [rbp - 0x10], 0
.label_595:
	jmp	.label_596
.label_593:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_596:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407600

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
	jne	.label_597
	test	byte ptr [rbp - 0x13], 1
	je	.label_599
	test	byte ptr [rbp - 0x11], 1
	jne	.label_597
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_599
.label_597:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_600
	call	__errno_location
	mov	dword ptr [rax], 0
.label_600:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_598
.label_599:
	mov	dword ptr [rbp - 4], 0
.label_598:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076b0
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
	#Procedure 0x4076d0
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
	#Procedure 0x4076f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_602
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_605
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_602
.label_605:
	movabs	rdi, OFFSET FLAT:label_604
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_606
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_133
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_601
.label_606:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_607
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_601:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_602:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_603
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_603:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077e0

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
	je	.label_609
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_608
.label_609:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_610
.label_608:
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
.label_610:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407870

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
	jne	.label_611
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
	jmp	.label_612
.label_611:
	lea	rdi, [rbp - 0x28]
	call	gettime
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
.label_612:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078d0

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
	.align	16
	#Procedure 0x407920

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
	.align	16
	#Procedure 0x407940
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jge	.label_613
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
	jmp	.label_614
.label_613:
	mov	rdi, qword ptr [rbp - 8]
	call	xtime_nonnegative_sec
	mov	qword ptr [rbp - 0x10], rax
.label_614:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079a0
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
	.align	16
	#Procedure 0x4079c0
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
	jge	.label_615
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x10], rax
.label_615:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a00

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
	.align	16
	#Procedure 0x407a30
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
	.align	16
	#Procedure 0x407a60

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:label_49
	movabs	r9, OFFSET FLAT:label_636
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
	jae	.label_617
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_617
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_617:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_641
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_641:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_647
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_619
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
	jne	.label_658
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_633
.label_658:
	jmp	.label_619
.label_619:
	jmp	.label_621
.label_647:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_622
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_622
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
	jae	.label_642
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_661
.label_642:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_661:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_633
.label_622:
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_623]]
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
	fld	dword ptr [dword ptr [+ (rax * 4) + label_623]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_623]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_624
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_651
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_651
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
	jmp	.label_634
.label_624:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_654:
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
	jb	.label_630
	jmp	.label_649
.label_649:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_630:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_654
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
	movabs	rcx, OFFSET FLAT:label_667
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_667
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
	jb	.label_626
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_616
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_616
.label_626:
	movabs	rax, OFFSET FLAT:label_651
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_652]]
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
	mov	ecx, OFFSET FLAT:label_651
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
.label_616:
	jmp	.label_634
.label_634:
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
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_627
.label_633:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_663
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_655
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1d0]
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
	jae	.label_662
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_637
.label_662:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1d4], eax
.label_637:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1d5], cl
	ja	.label_650
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1d5], cl
.label_650:
	mov	al, byte ptr [rbp - 0x1d5]
	test	al, 1
	jne	.label_660
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_625
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_668
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_669
	jmp	.label_618
.label_668:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_618
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_618
.label_669:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_659
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_659:
	jmp	.label_618
.label_618:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_638
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_632
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_638
.label_632:
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
.label_638:
	jmp	.label_625
.label_625:
	jmp	.label_655
.label_655:
	jmp	.label_663
.label_663:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_664
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
	jl	.label_666
	jmp	.label_620
.label_664:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_620
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_620
.label_666:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_631
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_631
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_631
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_643
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
.label_643:
	mov	qword ptr [rbp - 0x38], 1
.label_631:
	jmp	.label_620
.label_620:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_670:
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
	jne	.label_670
	jmp	.label_627
.label_627:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_629
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_629:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_640
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_646
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_657:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_639
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_653
	jmp	.label_639
.label_653:
	jmp	.label_656
.label_656:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_657
.label_639:
	jmp	.label_646
.label_646:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_665
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_665
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_665:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_644
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_628
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_628
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_635
.label_628:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1dc], ecx
.label_635:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_644:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_645
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_648
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_648
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_648:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_645:
	jmp	.label_640
.label_640:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085e0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_671
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_672]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_671
	jmp	.label_673
.label_673:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_674]]
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
	jne	.label_675
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_623]]
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
.label_675:
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
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_623]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_671:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408700

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
.label_676:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_678
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_680
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_681
.label_680:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_681:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_678:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_679
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_679:
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
	jne	.label_677
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_677:
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
	jmp	.label_676
	.section	.text
	.align	16
	#Procedure 0x408850
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
	jne	.label_682
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_682:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088b0

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
	jne	.label_685
	movabs	rdi, OFFSET FLAT:label_691
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_685
	movabs	rdi, OFFSET FLAT:label_698
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_685
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_690
.label_685:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_693
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_693:
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
	jg	.label_696
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_686
.label_696:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_699
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_700
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_688
.label_700:
	jmp	.label_692
.label_692:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_694
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_694:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_689
	jmp	.label_683
.label_689:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_684
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_697
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_697:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_701
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_695
.label_701:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_695:
	jmp	.label_683
.label_684:
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_692
.label_683:
	jmp	.label_686
.label_686:
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_688:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ac0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_94
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408af0
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
	je	.label_705
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
.label_705:
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
	jne	.label_702
	movabs	rdx, OFFSET FLAT:label_704
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_702
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_709
	jmp	.label_706
.label_706:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_708
	jmp	.label_707
.label_709:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_703
.label_708:
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
.label_707:
	jmp	.label_703
.label_703:
	jmp	.label_702
.label_702:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d20

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
	je	.label_710
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
.label_710:
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
	movabs	r15, OFFSET FLAT:label_704
	movabs	r12, OFFSET FLAT:label_49
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
	je	.label_712
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_711
	jmp	.label_715
.label_715:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_713
	jmp	.label_714
.label_711:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_716
.label_713:
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
.label_714:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_716:
	jmp	.label_712
.label_712:
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
	.align	16
	#Procedure 0x408f80

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_717
	movabs	rdi, OFFSET FLAT:label_724
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_717:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_719
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_722
.label_719:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_722:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_720
	movabs	rsi, OFFSET FLAT:label_721
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_720
	movabs	rsi, OFFSET FLAT:label_718
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_723
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_723:
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090a0
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
	je	.label_725
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_726
.label_725:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_726
.label_726:
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
	#Procedure 0x409120
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_727
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_728
.label_727:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409160
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
	je	.label_729
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_730
.label_729:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091b0

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
	je	.label_731
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_732
.label_731:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_732
.label_732:
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
	#Procedure 0x409260
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_733
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_733:
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
	#Procedure 0x4092a0

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
	jne	.label_734
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_734:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_736
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_735
.label_736:
	call	abort
.label_735:
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
	#Procedure 0x409310
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
	je	.label_737
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_738
.label_737:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_738
.label_738:
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
	#Procedure 0x4093e0

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
.label_870:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_768
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_773]]
	jmp	rcx
.label_1286:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1285:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_780
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_785
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_785:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_780
.label_780:
	movabs	rax, OFFSET FLAT:label_795
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_796
.label_1287:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_796
.label_1288:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_805
	movabs	rdi, OFFSET FLAT:label_897
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_813
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_805:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_820
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_843:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_824
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_830
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_830:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_838
.label_838:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_843
.label_824:
	jmp	.label_820
.label_820:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_796
.label_1283:
	mov	byte ptr [rbp - 0x79], 1
.label_1282:
	mov	byte ptr [rbp - 0x7b], 1
.label_1284:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_856
	mov	byte ptr [rbp - 0x79], 1
.label_856:
	jmp	.label_857
.label_857:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_858
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_861
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_861:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_858
.label_858:
	movabs	rax, OFFSET FLAT:label_813
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_796
.label_1281:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_796
.label_768:
	call	abort
.label_796:
	mov	qword ptr [rbp - 0x58], 0
.label_841:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_874
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_876
.label_874:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_876:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_891
	jmp	.label_899
.label_891:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_900
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_900
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_900
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_908
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_908
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_913
.label_908:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_913:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_900
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_900
	test	byte ptr [rbp - 0x7b], 1
	je	.label_925
	jmp	.label_751
.label_925:
	mov	byte ptr [rbp - 0x81], 1
.label_900:
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
	ja	.label_929
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_935]]
	jmp	rcx
.label_1253:
	test	byte ptr [rbp - 0x79], 1
	je	.label_937
	jmp	.label_921
.label_921:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_941
	jmp	.label_751
.label_941:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_740
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_740
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_934
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_934:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_835
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_835:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_765
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_765:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_740:
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_776
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_776:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_782
.label_782:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_787
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_787
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_787
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_787
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_817
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_817:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_811
.label_811:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_816
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_816:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_787
.label_787:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_829
.label_937:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_764
	jmp	.label_839
.label_764:
	jmp	.label_829
.label_829:
	jmp	.label_759
.label_1264:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_840
	jmp	.label_846
.label_846:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_848
	jmp	.label_890
.label_840:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_888
	jmp	.label_751
.label_888:
	jmp	.label_855
.label_848:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_799
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_863
	jmp	.label_869
.label_869:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_863
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_863
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_863
	jmp	.label_882
.label_882:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_883
	jmp	.label_863
.label_863:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_893
	jmp	.label_751
.label_893:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_898
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_898:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_910
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_910:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_915
.label_915:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_919
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_919:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_922
.label_922:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_812
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_812:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_924
.label_883:
	jmp	.label_924
.label_924:
	jmp	.label_799
.label_799:
	jmp	.label_855
.label_890:
	jmp	.label_855
.label_855:
	jmp	.label_759
.label_1254:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_754
.label_1255:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_754
.label_1259:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_754
.label_1257:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_746
.label_1260:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_746
.label_1256:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_746
.label_1258:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_754
.label_1265:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_939
	test	byte ptr [rbp - 0x7b], 1
	je	.label_942
	jmp	.label_751
.label_942:
	jmp	.label_783
.label_939:
	test	byte ptr [rbp - 0x79], 1
	je	.label_742
	test	byte ptr [rbp - 0x7b], 1
	je	.label_742
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_742
	jmp	.label_783
.label_742:
	jmp	.label_746
.label_746:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_747
	test	byte ptr [rbp - 0x7b], 1
	je	.label_747
	jmp	.label_751
.label_747:
	jmp	.label_754
.label_754:
	test	byte ptr [rbp - 0x79], 1
	je	.label_755
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_757
.label_755:
	jmp	.label_759
.label_1266:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_762
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_766
	jmp	.label_770
.label_762:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_766
.label_770:
	jmp	.label_759
.label_766:
	jmp	.label_772
.label_772:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_775
	jmp	.label_759
.label_775:
	jmp	.label_778
.label_778:
	mov	byte ptr [rbp - 0x83], 1
.label_1261:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_781
	test	byte ptr [rbp - 0x7b], 1
	je	.label_781
	jmp	.label_751
.label_781:
	jmp	.label_759
.label_1263:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_789
	test	byte ptr [rbp - 0x7b], 1
	je	.label_794
	jmp	.label_751
.label_794:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_798
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_798
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_798:
	jmp	.label_807
.label_807:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_809
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_809:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_815
.label_815:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_819
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_819:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_827
.label_827:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_833
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_833:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_789:
	jmp	.label_759
.label_1262:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_759
.label_929:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_847
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
	jmp	.label_854
.label_847:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_865
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_865:
	jmp	.label_767
.label_767:
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
	jne	.label_879
	jmp	.label_886
.label_879:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_887
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_886
.label_887:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_895
	mov	byte ptr [rbp - 0x91], 0
.label_916:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_901
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_901:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_912
	jmp	.label_914
.label_912:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_916
.label_914:
	jmp	.label_886
.label_895:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_745
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_745
	mov	qword ptr [rbp - 0xb8], 1
.label_741:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_923
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
	jb	.label_889
	jmp	.label_931
.label_931:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_889
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_889
	jmp	.label_938
.label_938:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_940
	jmp	.label_889
.label_889:
	jmp	.label_751
.label_940:
	jmp	.label_788
.label_788:
	jmp	.label_825
.label_825:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_741
.label_923:
	jmp	.label_745
.label_745:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_749
	mov	byte ptr [rbp - 0x91], 0
.label_749:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_753
.label_753:
	jmp	.label_864
.label_864:
	jmp	.label_760
.label_760:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_767
.label_886:
	jmp	.label_854
.label_854:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_771
	test	byte ptr [rbp - 0x79], 1
	je	.label_750
	test	byte ptr [rbp - 0x91], 1
	jne	.label_750
.label_771:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_936:
	test	byte ptr [rbp - 0x79], 1
	je	.label_790
	test	byte ptr [rbp - 0x91], 1
	jne	.label_790
	jmp	.label_834
.label_834:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_797
	jmp	.label_751
.label_797:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_801
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_801
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_808
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_808:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_814
.label_814:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_818
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_818:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_826
.label_826:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_831
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_831:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_801:
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_844
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_844:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_850
.label_850:
	jmp	.label_852
.label_852:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_853
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_853:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_859
.label_859:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_862
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_862:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_867
.label_790:
	test	byte ptr [rbp - 0x81], 1
	je	.label_871
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_875:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_871:
	jmp	.label_867
.label_867:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_885
	jmp	.label_892
.label_885:
	jmp	.label_894
.label_894:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_896
	test	byte ptr [rbp - 0x82], 1
	jne	.label_896
	jmp	.label_902
.label_902:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_903
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_903:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_906
.label_906:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_909
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_909:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_896:
	jmp	.label_917
.label_917:
	jmp	.label_918
.label_918:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_920
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_920:
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
	jmp	.label_936
.label_892:
	jmp	.label_783
.label_750:
	jmp	.label_759
.label_759:
	test	byte ptr [rbp - 0x79], 1
	je	.label_926
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_928
.label_926:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_837
.label_928:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_837
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
	jne	.label_932
.label_837:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_932
	jmp	.label_783
.label_932:
	jmp	.label_757
.label_757:
	jmp	.label_930
.label_930:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_933
	jmp	.label_751
.label_933:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_739
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_739
	jmp	.label_744
.label_744:
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
	jmp	.label_752
.label_752:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_756
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_756:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_763
.label_763:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_904
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_904:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_739:
	jmp	.label_777
.label_777:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_779
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_779:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_786
.label_786:
	jmp	.label_783
.label_783:
	jmp	.label_792
.label_792:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_793
	test	byte ptr [rbp - 0x82], 1
	jne	.label_793
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_800
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_804
.label_804:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_810
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_810:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_793:
	jmp	.label_821
.label_821:
	jmp	.label_822
.label_822:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_823
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_823:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_832
	mov	byte ptr [rbp - 0x7e], 0
.label_832:
	jmp	.label_839
.label_839:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_841
.label_899:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_845
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_845
	test	byte ptr [rbp - 0x7b], 1
	je	.label_845
	jmp	.label_751
.label_845:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_851
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_851
	test	byte ptr [rbp - 0x7d], 1
	je	.label_851
	test	byte ptr [rbp - 0x7e], 1
	je	.label_880
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
	jmp	.label_866
.label_880:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_868
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_868
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_870
.label_868:
	jmp	.label_769
.label_769:
	jmp	.label_851
.label_851:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_802
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_802
	jmp	.label_878
.label_878:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_881
	jmp	.label_884
.label_884:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_927
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_927:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_761
.label_761:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_878
.label_881:
	jmp	.label_802
.label_802:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_905:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_866
.label_751:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_911
	test	byte ptr [rbp - 0x79], 1
	je	.label_911
	mov	dword ptr [rbp - 0x34], 4
.label_911:
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
.label_866:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a780
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
	#Procedure 0x40a7c0

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
	je	.label_943
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_944
.label_943:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_944
.label_944:
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
	je	.label_945
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_945:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a920
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_947:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_948
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_947
.label_948:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_950
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_949]],  rax
.label_950:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_946
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_946:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa00

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
	#Procedure 0x40aa40

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
	jge	.label_953
	call	abort
.label_953:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_958
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_952
	call	xalloc_die
.label_952:
	test	byte ptr [rbp - 0x31], 1
	je	.label_957
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_951
.label_957:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_951:
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
	je	.label_956
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_949]]
	mov	qword ptr [rax + 8], rcx
.label_956:
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
.label_958:
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
	ja	.label_954
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_955
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_955:
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
.label_954:
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
	#Procedure 0x40acc0

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
	#Procedure 0x40ad00
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
	#Procedure 0x40ad20
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
	#Procedure 0x40ad50

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
	#Procedure 0x40ad90

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
	jne	.label_959
	call	abort
.label_959:
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
	#Procedure 0x40ae00

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
	#Procedure 0x40ae40

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
	#Procedure 0x40ae70
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
	#Procedure 0x40aea0

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
	#Procedure 0x40af20

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
	#Procedure 0x40af50

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
	#Procedure 0x40af70
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
	#Procedure 0x40afa0

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
	#Procedure 0x40b050

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
	#Procedure 0x40b090

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
	#Procedure 0x40b110
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
	#Procedure 0x40b140
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
	#Procedure 0x40b180

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
	#Procedure 0x40b1c0
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
	#Procedure 0x40b1f0

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
	#Procedure 0x40b220

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
	#Procedure 0x40b240

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
	je	.label_966
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_966:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_964
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_965
	movabs	rax, OFFSET FLAT:label_968
	movabs	rcx, OFFSET FLAT:label_969
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_965:
	movabs	rsi, OFFSET FLAT:label_963
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_967
	movabs	rax, OFFSET FLAT:label_960
	movabs	rcx, OFFSET FLAT:label_961
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_967:
	movabs	rax, OFFSET FLAT:label_813
	movabs	rcx, OFFSET FLAT:label_795
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_962:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b340

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
	.align	16
	#Procedure 0x40b390

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
	je	.label_974
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_972
	movabs	r8, OFFSET FLAT:label_607
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error_at_line
	jmp	.label_971
.label_972:
	movabs	rdx, OFFSET FLAT:label_607
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
.label_971:
	jmp	.label_973
.label_974:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_970
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_973:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b460

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
	je	.label_983
	movabs	rsi, OFFSET FLAT:label_988
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_992
.label_983:
	movabs	rsi, OFFSET FLAT:label_993
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_992:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_981
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
	mov	ecx, OFFSET FLAT:label_980
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
	ja	.label_989
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_976]]
	jmp	rcx
.label_1348:
	jmp	.label_975
.label_1349:
	movabs	rdi, OFFSET FLAT:label_982
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
	jmp	.label_975
.label_1350:
	movabs	rdi, OFFSET FLAT:label_979
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
	jmp	.label_975
.label_1351:
	movabs	rdi, OFFSET FLAT:label_978
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
	jmp	.label_975
.label_1352:
	movabs	rdi, OFFSET FLAT:label_986
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
	jmp	.label_975
.label_1353:
	movabs	rdi, OFFSET FLAT:label_991
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
	jmp	.label_975
.label_1354:
	movabs	rdi, OFFSET FLAT:label_985
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
	jmp	.label_975
.label_1355:
	movabs	rdi, OFFSET FLAT:label_990
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
	jmp	.label_975
.label_1356:
	movabs	rdi, OFFSET FLAT:label_977
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
	jmp	.label_975
.label_1357:
	movabs	rdi, OFFSET FLAT:label_984
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
	jmp	.label_975
.label_989:
	movabs	rdi, OFFSET FLAT:label_987
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
.label_975:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba20
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
.label_996:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_994
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_996
.label_994:
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
	#Procedure 0x40ba90

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
.label_997:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1002
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1000
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_998
.label_1000:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_998:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1002:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_999
	jmp	.label_1003
.label_999:
	jmp	.label_1001
.label_1001:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_997
.label_1003:
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
	#Procedure 0x40bba0
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
	je	.label_1004
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
.label_1004:
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
	#Procedure 0x40bd10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1005
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1007
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1008
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_48
	movabs	rdx, OFFSET FLAT:label_41
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1006
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
	#Procedure 0x40bda0
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
	jae	.label_1009
	call	xalloc_die
.label_1009:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdf0

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
	jne	.label_1010
	cmp	qword ptr [rbp - 8], 0
	je	.label_1010
	call	xalloc_die
.label_1010:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be30
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
	jae	.label_1011
	call	xalloc_die
.label_1011:
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
	#Procedure 0x40be80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1012
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1012
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1014
.label_1012:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1013
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1013
	call	xalloc_die
.label_1013:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1014:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf00

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
	jne	.label_1015
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1018
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
.label_1018:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1016
	call	xalloc_die
.label_1016:
	jmp	.label_1017
.label_1015:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1019
	call	xalloc_die
.label_1019:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1017:
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
	#Procedure 0x40bff0

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
	#Procedure 0x40c010
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
	#Procedure 0x40c040
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
	#Procedure 0x40c080
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
	jb	.label_1020
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1021
.label_1020:
	call	xalloc_die
.label_1021:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0e0

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
	#Procedure 0x40c120
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
	#Procedure 0x40c160

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1022
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_607
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c1a0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1052
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1052
	jmp	.label_1058
.label_1052:
	movabs	rdi, OFFSET FLAT:label_1059
	movabs	rsi, OFFSET FLAT:label_1060
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1061
	call	__assert_fail
.label_1058:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1024
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1029
.label_1024:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1029
.label_1029:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1044:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1043
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1044
.label_1043:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1049
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1030
.label_1049:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1055
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1023
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1023
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1023
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1026
.label_1023:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1030
.label_1026:
	jmp	.label_1032
.label_1055:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1035
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1039
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1030
.label_1039:
	mov	dword ptr [rbp - 0x4c], 1
.label_1035:
	jmp	.label_1032
.label_1032:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1042
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1030
.label_1042:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1034
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1053
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1030
.label_1053:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1027
	jmp	.label_1063
.label_1063:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1027
	jmp	.label_1025
.label_1025:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1027
	jmp	.label_1031
.label_1031:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1027
	jmp	.label_1037
.label_1037:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1027
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1027
	jmp	.label_1065
.label_1065:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1027
	jmp	.label_1045
.label_1045:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1027
	jmp	.label_1050
.label_1050:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1027
	jmp	.label_1028
.label_1028:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1027
	jmp	.label_1056
.label_1056:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1047
	jmp	.label_1027
.label_1027:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1046
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1054
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1054
	jmp	.label_1036
.label_1036:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1038
	jmp	.label_1041
.label_1041:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1062
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1062:
	jmp	.label_1038
.label_1054:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1038:
	jmp	.label_1046
.label_1046:
	jmp	.label_1047
.label_1047:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1048
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1040]]
	jmp	rcx
.label_1374:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1365:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1375:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1033
.label_1366:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1367:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1368:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1369:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1370:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1371:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1376:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1372:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1373:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1033
.label_1048:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1030
.label_1033:
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
	je	.label_1064
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1064:
	jmp	.label_1034
.label_1034:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1030:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c750

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
	jae	.label_1066
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1067
.label_1066:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1067:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7b0

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
.label_1069:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1068
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1069
.label_1068:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c800

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
.label_1076:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1070
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1077
.label_1070:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	je	.label_1072
	jmp	.label_1074
.label_1072:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_1071
	jmp	.label_1074
.label_1071:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1076
.label_1074:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_1073
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1075
	call	xalloc_die
.label_1075:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1077
.label_1073:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1077:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c8f0

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
.label_1081:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_1087
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_1085
	mov	eax, dword ptr [rbp - 0x7c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1079
.label_1085:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_1079:
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
	jmp	.label_1081
.label_1087:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x98], rax
	je	.label_1080
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_1083
.label_1080:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1086
.label_1083:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_1078:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_1084
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_1088
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1082
.label_1088:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_1082:
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
	jmp	.label_1078
.label_1084:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1086:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb00

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
	jge	.label_1089
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1092
.label_1089:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1090
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1091
.label_1090:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1091
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1091:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1093
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1093:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1092:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbd0

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
	je	.label_1114
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
.label_1114:
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
	je	.label_1101
	jmp	.label_1095
.label_1095:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1105
	jmp	.label_1111
.label_1101:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1113
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1120
.label_1113:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1120:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1098
.label_1105:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1112
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1119
.label_1112:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1119:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1098
.label_1111:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1094
	jmp	.label_1117
.label_1117:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1107
	jmp	.label_1122
.label_1122:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1094
	jmp	.label_1096
.label_1096:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1107
	jmp	.label_1102
.label_1102:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1094
	jmp	.label_1109
.label_1109:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1094
	jmp	.label_1103
.label_1103:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1107
	jmp	.label_1123
.label_1123:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1094
	jmp	.label_1097
.label_1097:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1107
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1094
	jmp	.label_1110
.label_1110:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1107
	jmp	.label_1118
.label_1118:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1094
	jmp	.label_1124
.label_1124:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1094
	jmp	.label_1099
.label_1099:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1100
	jmp	.label_1107
.label_1107:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1108
.label_1094:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1115
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1121
.label_1115:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1121:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1108
.label_1100:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1116
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1106
.label_1116:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1106:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1108:
	jmp	.label_1098
.label_1098:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d0f0

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
	.align	16
	#Procedure 0x40d120

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
	jg	.label_1130
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1128
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1131
.label_1128:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1129
.label_1131:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1127
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1127:
	jmp	.label_1129
.label_1129:
	jmp	.label_1132
.label_1130:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1132:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1125
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1125
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1133
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1126
.label_1133:
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
.label_1126:
	jmp	.label_1125
.label_1125:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d250

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1134
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1135
.label_1134:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1136
.label_1135:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1136:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2b0

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
	je	.label_1137
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1137:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2f0

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
	jne	.label_1138
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1138
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1138
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1140
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1139
.label_1140:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1139
.label_1138:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1139:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d3c0

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
	jne	.label_1141
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1141:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1142
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1142
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1142
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1143
.label_1142:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1143:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d470

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40d480

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
.label_1145:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1153
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1151
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1155
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1150
.label_1155:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1147
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1149
.label_1147:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1146
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
	je	.label_1152
.label_1146:
	mov	byte ptr [rbp - 0x41], 1
.label_1152:
	jmp	.label_1149
.label_1149:
	jmp	.label_1154
.label_1154:
	jmp	.label_1151
.label_1151:
	jmp	.label_1144
.label_1144:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1145
.label_1153:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1148
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1150
.label_1148:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1150:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5d0

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
	jne	.label_1156
	movabs	rdi, OFFSET FLAT:label_1159
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1158
.label_1156:
	movabs	rdi, OFFSET FLAT:label_1157
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1158:
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
	.align	16
	#Procedure 0x40d670

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1164
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
.label_1168:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1167
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1162
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1161
.label_1162:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1160
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
	jmp	.label_1166
.label_1161:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1165
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1166:
	jmp	.label_1163
.label_1163:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1168
.label_1167:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d7c0
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
	jl	.label_1170
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1169
.label_1170:
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
.label_1169:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d850
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
.label_1173:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1171
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1172
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1175
.label_1172:
	jmp	.label_1174
.label_1174:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1173
.label_1171:
	mov	qword ptr [rbp - 8], 0
.label_1175:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8f0

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
	jne	.label_1176
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1180
.label_1176:
	jmp	.label_1177
.label_1177:
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
	jne	.label_1179
	jmp	.label_1178
.label_1179:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1177
.label_1178:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1180:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9b0

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
	je	.label_1181
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1185
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1184
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1182
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1183
.label_1184:
	mov	byte ptr [rbp - 5], 0
.label_1183:
	jmp	.label_1181
.label_1181:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da30

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
	jne	.label_1186
	movabs	rax, OFFSET FLAT:label_49
	mov	qword ptr [rbp - 8], rax
.label_1186:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1187
	movabs	rax, OFFSET FLAT:label_1188
	mov	qword ptr [rbp - 8], rax
.label_1187:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da90

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
	jb	.label_1189
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1190
.label_1189:
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1190
.label_1190:
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dae0
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
	.align	16
	#Procedure 0x40db20
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
	.align	16
	#Procedure 0x40db70
	.globl xmax
	.type xmax, @function
xmax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	jb	.label_1191
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1192
.label_1191:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1192:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbb0

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
	ja	.label_1193
	jmp	.label_1195
.label_1195:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1194
.label_1193:
	jmp	.label_1194
.label_1194:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc00
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
	jb	.label_1196
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1196
	jmp	.label_1197
.label_1197:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1199
	jmp	.label_1196
.label_1196:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1200
.label_1199:
	mov	byte ptr [rbp - 1], 0
.label_1200:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc70
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
	jb	.label_1201
	jmp	.label_1204
.label_1204:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1202
	jmp	.label_1201
.label_1201:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1203
.label_1202:
	mov	byte ptr [rbp - 1], 0
.label_1203:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcc0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1205
	jmp	.label_1206
.label_1206:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1207
.label_1205:
	mov	byte ptr [rbp - 1], 0
.label_1207:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcf0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1208
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1208:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd20
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
	jb	.label_1209
	jmp	.label_1211
.label_1211:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1212
	jmp	.label_1209
.label_1209:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1210
.label_1212:
	mov	byte ptr [rbp - 1], 0
.label_1210:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd70
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1213
	jmp	.label_1215
.label_1215:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1214
.label_1213:
	mov	byte ptr [rbp - 1], 0
.label_1214:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddb0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1216
	jmp	.label_1218
.label_1218:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1217
.label_1216:
	mov	byte ptr [rbp - 1], 0
.label_1217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddf0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1219
	jmp	.label_1221
.label_1221:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1220
.label_1219:
	mov	byte ptr [rbp - 1], 0
.label_1220:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de30
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1222
	jmp	.label_1224
.label_1224:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1223
.label_1222:
	mov	byte ptr [rbp - 1], 0
.label_1223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de70
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1225
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1227]]
	jmp	rcx
.label_1380:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1226
.label_1225:
	mov	byte ptr [rbp - 1], 0
.label_1226:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dec0
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
	jb	.label_1228
	jmp	.label_1230
.label_1230:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1231
	jmp	.label_1228
.label_1228:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1229
.label_1231:
	mov	byte ptr [rbp - 1], 0
.label_1229:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df10
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1232
	jmp	.label_1234
.label_1234:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1233
.label_1232:
	mov	byte ptr [rbp - 1], 0
.label_1233:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df50
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
	jb	.label_1235
	jmp	.label_1238
.label_1238:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1235
	jmp	.label_1236
.label_1236:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1237
	jmp	.label_1235
.label_1235:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1239
.label_1237:
	mov	byte ptr [rbp - 1], 0
.label_1239:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfc0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1240
	jmp	.label_1242
.label_1242:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1241
.label_1240:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1241:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e000
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1243
	jmp	.label_1245
.label_1245:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1244
.label_1243:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1244:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0f0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
