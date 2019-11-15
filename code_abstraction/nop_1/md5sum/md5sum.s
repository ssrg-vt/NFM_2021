	.section	.text
	.align	16
	#Procedure 0x4016d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	ecx, OFFSET FLAT:.str.2
	mov	r8d, 0x80
	xor	eax, eax
	call	__printf_chk
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.37
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.13
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.13
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.13
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.51
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r12d, edi
	lea	rdi, [rsp + 0x40]
	call	ptr_align
	mov	rbx, rax
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	mov	esi, OFFSET FLAT:.str.16
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	r15d, r15d
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	ecx, 0xffffffff
	xor	r13d, r13d
	jmp	.label_14
.label_44:
	mov	byte ptr [byte ptr [rip + quiet]],  0
	mov	ecx, ebp
	nop	word ptr cs:[rax + rax]
.label_14:
	mov	ebp, ecx
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_31
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0x10
	ja	.label_35
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_36]]
.label_456:
	xor	ecx, ecx
	jmp	.label_14
.label_35:
	cmp	eax, 0x62
	mov	ecx, 1
	je	.label_14
	cmp	eax, 0x63
	jne	.label_16
	mov	r13b, 1
	mov	ecx, ebp
	jmp	.label_14
.label_457:
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	byte ptr [byte ptr [rip + warn]],  1
	jmp	.label_44
.label_458:
	mov	byte ptr [byte ptr [rip + delim]],  1
	mov	ecx, ebp
	jmp	.label_14
.label_459:
	mov	byte ptr [byte ptr [rip + ignore_missing]],  1
	mov	ecx, ebp
	jmp	.label_14
.label_460:
	mov	byte ptr [byte ptr [rip + status_only]],  1
	mov	byte ptr [byte ptr [rip + warn]],  0
	jmp	.label_44
.label_461:
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	byte ptr [byte ptr [rip + warn]],  0
	mov	byte ptr [byte ptr [rip + quiet]],  1
	mov	ecx, ebp
	jmp	.label_14
.label_462:
	mov	byte ptr [byte ptr [rip + strict]],  1
	mov	ecx, ebp
	jmp	.label_14
.label_463:
	mov	r15b, 1
	mov	ecx, 1
	jmp	.label_14
.label_31:
	cmp	eax, -1
	jne	.label_18
	mov	byte ptr [byte ptr [rip + min_digest_line_length]],  1
	mov	byte ptr [byte ptr [rip + digest_hex_bytes]],  1
	test	r15b, r15b
	sete	al
	test	ebp, ebp
	jne	.label_20
	test	al, al
	je	.label_50
.label_20:
	test	r13b, r13b
	je	.label_24
	mov	cl,  byte ptr [byte ptr [rip + delim]]
	xor	cl, 1
	test	cl, 1
	je	.label_25
.label_24:
	test	r13b, r13b
	sete	cl
	or	cl, al
	je	.label_39
	test	ebp, ebp
	js	.label_29
	test	r13b, r13b
	jne	.label_30
.label_29:
	test	r13b, r13b
	jne	.label_32
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	jne	.label_34
.label_32:
	test	r13b, r13b
	jne	.label_37
	test	byte ptr [byte ptr [rip + status_only]],  1
	jne	.label_47
.label_37:
	test	r13b, r13b
	jne	.label_41
	test	byte ptr [byte ptr [rip + warn]],  1
	jne	.label_43
.label_41:
	test	r13b, r13b
	jne	.label_45
	test	byte ptr [byte ptr [rip + quiet]],  1
	jne	.label_46
.label_45:
	mov	qword ptr [rsp + 0x30], rbx
	movzx	eax,  byte ptr [byte ptr [rip + strict]]
	and	eax, 1
	movzx	ecx, r13b
	xor	ecx, 1
	test	eax, ecx
	jne	.label_48
	movsxd	rax, r12d
	lea	rbx, [r14 + rax*8]
	cmp	dword ptr [dword ptr [rip + optind]],  r12d
	jne	.label_40
	mov	qword ptr [word ptr [rbx]], OFFSET FLAT:.str.31
	add	rbx, 8
.label_40:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	r12, [r14 + rax*8]
	mov	r14b, 1
	cmp	r12, rbx
	jae	.label_11
	test	ebp, ebp
	mov	ecx, 0x2a
	mov	eax, 0x20
	cmovle	ecx, eax
	mov	dword ptr [rsp + 0x18], ecx
	mov	r14b, 1
	jmp	.label_17
.label_38:
	xor	r13d, r13d
	jmp	.label_26
.label_17:
	test	r13b, r13b
	mov	rbp, qword ptr [r12]
	je	.label_22
	mov	rdi, rbp
	call	digest_check
	and	r14b, al
	jmp	.label_13
	nop	dword ptr [rax]
.label_22:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdx, [rsp + 0x3f]
	call	digest_file
	test	al, al
	je	.label_28
	mov	qword ptr [rsp + 0x20], r13
	mov	esi, 0x5c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_33
	mov	esi, 0xa
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_38
.label_33:
	mov	r13b,  byte ptr [byte ptr [rip + delim]]
	xor	r13b, 1
.label_26:
	test	r15b, r15b
	je	.label_23
	test	r13b, 1
	je	.label_42
	mov	edi, 0x5c
	call	putchar_unlocked
.label_42:
	mov	dword ptr [rsp + 0x1c], r14d
	mov	qword ptr [rsp + 0x28], r15
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.2
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.32
	call	fputs_unlocked
	mov	al, r13b
	and	al, 1
	movzx	esi, al
	mov	rdi, rbp
	call	print_filename
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.33
	call	fputs_unlocked
	jmp	.label_12
.label_28:
	xor	r14d, r14d
	jmp	.label_13
.label_23:
	mov	dword ptr [rsp + 0x1c], r14d
	mov	qword ptr [rsp + 0x28], r15
	test	r13b, 1
	je	.label_12
	mov	edi, 0x5c
	call	putchar_unlocked
.label_12:
	mov	al,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	al, 1
	mov	r15d, 0
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_19
	nop	dword ptr [rax]
.label_27:
	movzx	edx, byte ptr [r14 + r15]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__printf_chk
	inc	r15
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	shl	rax, 4
	cmp	r15, rax
	jb	.label_27
.label_19:
	mov	r15, qword ptr [rsp + 0x28]
	test	r15b, r15b
	jne	.label_51
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi, dword ptr [rsp + 0x18]
	call	putchar_unlocked
	and	r13b, 1
	movzx	esi, r13b
	mov	rdi, rbp
	call	print_filename
.label_51:
	mov	al,  byte ptr [byte ptr [rip + delim]]
	and	al, 1
	mov	edi, 0xa
	mov	eax, 0
	cmovne	edi, eax
	call	putchar_unlocked
	mov	r13, qword ptr [rsp + 0x20]
	mov	r14d, dword ptr [rsp + 0x1c]
	nop	dword ptr [rax]
.label_13:
	add	r12, 8
	cmp	r12, rbx
	jb	.label_17
.label_11:
	mov	al,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	al, 1
	je	.label_49
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_52
.label_49:
	not	r14b
	and	r14b, 1
	movzx	eax, r14b
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_18:
	cmp	eax, 0xffffff7d
	je	.label_15
	cmp	eax, 0xffffff7e
	jne	.label_16
	xor	edi, edi
	call	usage
.label_15:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_16:
	mov	edi, 1
	call	usage
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	jmp	.label_21
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_21
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_21
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_21
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_21
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	jmp	.label_21
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	jmp	.label_21
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	jmp	.label_21
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
.label_21:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_52:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	add	rdi, 3
	mov	eax, edi
	and	eax, 3
	sub	rdi, rax
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl digest_check
	.type digest_check, @function
digest_check:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbp, rdi
	lea	rdi, [rsp + 0x80]
	call	ptr_align
	mov	qword ptr [rsp + 0x48], rax
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_67
	cmp	byte ptr [rbp + 1], 0
	je	.label_63
.label_67:
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, rbp
	call	fopen_safer
	mov	r14, rax
	test	r14, r14
	je	.label_72
	mov	qword ptr [rsp + 0x30], rbp
	mov	dword ptr [rsp + 0x44], 0
	jmp	.label_66
.label_72:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_60
.label_63:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x44], eax
	mov	r14,  qword ptr [word ptr [rip + stdin]]
.label_66:
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x78], 0
	mov	qword ptr [rsp + 0x70], 0
	lea	rbp, [rsp + 0x78]
	lea	rbx, [rsp + 0x70]
	mov	r12d, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	rcx, qword ptr [rsp + 0x78]
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x23
	je	.label_57
	movzx	edx, byte ptr [rcx + rax - 1]
	cmp	edx, 0xa
	jne	.label_86
	dec	rax
	mov	byte ptr [rcx + rax], 0
.label_86:
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, rax
	lea	rdx, [rsp + 0x58]
	lea	rcx, [rsp + 0x64]
	lea	r8, [rsp + 0x68]
	call	split_3
	test	al, al
	je	.label_74
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	je	.label_64
	mov	rax, qword ptr [rsp + 0x68]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_64
	cmp	byte ptr [rax + 1], 0
	je	.label_74
	nop	dword ptr [rax]
.label_64:
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	and	al, 1
	je	.label_78
	xor	r15d, r15d
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_74:
	movzx	eax,  byte ptr [byte ptr [rip + warn]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_82
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r14, r13
	mov	r13, r15
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	rdx, r15
	mov	r15, r13
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	r8, r12
	call	error
.label_82:
	inc	qword ptr [rsp + 0x38]
	inc	r13
	jmp	.label_57
.label_78:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	esi, 0xa
	call	strchr
	test	rax, rax
	setne	r15b
.label_55:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rdx, [rsp + 0x57]
	call	digest_file
	test	al, al
	je	.label_68
	cmp	byte ptr [rsp + 0x57], 0
	je	.label_70
	mov	al,  byte ptr [byte ptr [rip + ignore_missing]]
	xor	al, 1
	test	al, 1
	je	.label_56
.label_70:
	mov	qword ptr [rsp + 8], r13
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 1
	mov	r13d, 0
	jne	.label_73
	mov	rbp, qword ptr [rsp + 0x58]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_87:
	movzx	edx, byte ptr [rbp + r13*2]
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	ecx, byte ptr [rcx + r13]
	mov	rsi, rcx
	shr	rsi, 4
	movsx	esi,  byte ptr [byte ptr [rsi + digest_check.bin2hex]]
	cmp	dword ptr [rax + rdx*4], esi
	jne	.label_73
	movzx	edx, byte ptr [rbp + r13*2 + 1]
	and	ecx, 0xf
	movsx	ecx,  byte ptr [byte ptr [rcx + digest_check.bin2hex]]
	cmp	dword ptr [rax + rdx*4], ecx
	jne	.label_73
	inc	r13
	cmp	r13, rbx
	jb	.label_87
.label_73:
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rbp, [rcx + 1]
	cmp	r13, rbx
	mov	rax, qword ptr [rsp + 0x18]
	jne	.label_89
	mov	al, 1
.label_89:
	cmovne	rcx, rbp
	mov	dl,  byte ptr [byte ptr [rip + status_only]]
	and	dl, 1
	je	.label_54
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_56
.label_68:
	inc	qword ptr [rsp + 0x20]
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	and	al, 1
	jne	.label_56
	test	r15b, r15b
	je	.label_61
	mov	edi, 0x5c
	call	putchar_unlocked
.label_61:
	mov	rdi, qword ptr [rsp + 0x68]
	movzx	esi, r15b
	call	print_filename
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.68
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_56:
	lea	rbp, [rsp + 0x78]
	lea	rbx, [rsp + 0x70]
.label_59:
	mov	r15b, 1
.label_57:
	mov	rdi, r14
	call	feof_unlocked
	test	eax, eax
	jne	.label_77
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_84
	jmp	.label_77
.label_54:
	cmp	r13, rbx
	jne	.label_80
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	and	al, 1
	je	.label_80
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_56
.label_80:
	test	r15b, r15b
	je	.label_83
	mov	edi, 0x5c
	call	putchar_unlocked
.label_83:
	mov	rdi, qword ptr [rsp + 0x68]
	movzx	esi, r15b
	call	print_filename
	cmp	r13, rbx
	je	.label_88
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.68
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_56
.label_88:
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	and	al, 1
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, qword ptr [rsp + 8]
	lea	rbp, [rsp + 0x78]
	lea	rbx, [rsp + 0x70]
	jne	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.68
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_84:
	inc	r12
	je	.label_75
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r14
	call	getline
	test	rax, rax
	jg	.label_76
.label_77:
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_81
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_60
.label_81:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	jne	.label_53
	mov	rdi, r14
	call	rpl_fclose
	test	eax, eax
	je	.label_53
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_60
.label_53:
	and	r15b, 1
	je	.label_62
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	and	al, 1
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_65
	mov	r14, r15
	mov	r15, rcx
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_69
	mov	rdi, rbx
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, OFFSET FLAT:.str.75
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
.label_69:
	test	rbp, rbp
	je	.label_79
	mov	rdi, rbp
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, OFFSET FLAT:.str.77
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_79:
	mov	rcx, r15
	test	rcx, rcx
	je	.label_85
	mov	rbx, rcx
	mov	rdi, rbx
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, OFFSET FLAT:.str.79
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	rcx, rbx
.label_85:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_58
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	je	.label_58
	mov	r15, rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rcx, r15
.label_58:
	test	r14b, r14b
	je	.label_71
.label_65:
	xor	ebx, ebx
	or	rbp, rcx
	jne	.label_60
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 1
	je	.label_60
	mov	bl,  byte ptr [byte ptr [rip + strict]]
	test	r13, r13
	sete	al
	xor	bl, 1
	or	bl, al
	jmp	.label_60
.label_62:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_60
.label_71:
	xor	ebx, ebx
.label_60:
	and	bl, 1
	mov	al, bl
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2d
	jne	.label_95
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	jne	.label_91
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	bl, 1
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_92
.label_95:
	mov	byte ptr [rbx], 0
.label_91:
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, r15
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_96
	xor	ebx, ebx
.label_92:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_93
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	cmp	rbp,  qword ptr [word ptr [rip + stdin]]
	je	.label_90
	mov	rdi, rbp
	call	rpl_fclose
	xor	r14d, r14d
	jmp	.label_90
.label_96:
	movzx	eax,  byte ptr [byte ptr [rip + ignore_missing]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_94
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_94
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	jmp	.label_90
.label_93:
	mov	r14b, 1
	test	bl, bl
	jne	.label_90
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_90
.label_94:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_90:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750

	.globl print_filename
	.type print_filename, @function
print_filename:
	push	rbx
	mov	rbx, rdi
	test	sil, sil
	je	.label_99
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_102
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_100:
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_98
	cmp	edi, 0xa
	jne	.label_101
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.81
	call	fputs_unlocked
	jmp	.label_97
.label_98:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_101:
	call	putchar_unlocked
.label_97:
	mov	al, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_100
.label_102:
	pop	rbx
	ret	
.label_99:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	pop	rbx
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4027d0

	.globl split_3
	.type split_3, @function
split_3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rbx, rdi
	xor	r12d, r12d
	jmp	.label_109
	nop	word ptr cs:[rax + rax]
.label_104:
	inc	r12
.label_109:
	movzx	eax, byte ptr [rbx + r12]
	cmp	eax, 0x20
	je	.label_104
	movzx	r14d, al
	cmp	r14d, 9
	je	.label_104
	mov	qword ptr [rsp + 8], r8
	cmp	r14d, 0x5c
	sete	al
	movzx	r15d, al
	add	r15, rbx
	lea	rbp, [r15 + r12]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 3
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_115
	cmp	r14d, 0x5c
	sete	dil
	mov	dl,  byte ptr [byte ptr [rip + min_digest_line_length]]
	xor	eax, eax
	and	dl, 1
	mov	edx, 0x22
	cmove	rdx, rax
	movzx	esi, byte ptr [r15 + r12]
	cmp	esi, 0x5c
	sete	cl
	movzx	ecx, cl
	or	rcx, rdx
	movzx	edx, dil
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, rdx
	sub	rsi, r12
	cmp	rsi, rcx
	jb	.label_105
	cmp	r14d, 0x5c
	sete	al
	mov	qword ptr [r13], rbp
	movzx	ebp,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	ebp, 1
	shl	rbp, 5
	movzx	eax, al
	or	rax, rbp
	add	rax, rbx
	movzx	ecx, byte ptr [r12 + rax]
	cmp	ecx, 0x20
	je	.label_108
	movzx	ecx, cl
	cmp	ecx, 9
	jne	.label_116
.label_108:
	cmp	r14d, 0x5c
	sete	cl
	movzx	r15d, cl
	mov	byte ptr [rax + r12], 0
	mov	rdi, qword ptr [r13]
	call	hex_digits
	test	al, al
	je	.label_112
	add	r15, rbp
	lea	rcx, [r12 + r15 + 1]
	cmp	r14d, 0x5c
	sete	al
	movzx	eax, al
	add	rax, rbp
	mov	edx, 2
	sub	rdx, qword ptr [rsp + 0x10]
	add	rdx, rax
	add	rdx, r12
	je	.label_106
	cmp	r14d, 0x5c
	sete	al
	movzx	eax, al
	add	rax, rbp
	add	rax, rbx
	movzx	edx, byte ptr [r12 + rax + 1]
	cmp	edx, 0x20
	je	.label_110
	movzx	edx, dl
	cmp	edx, 0x2a
	jne	.label_106
.label_110:
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rdx, qword ptr [rsp + 8]
	je	.label_107
	cmp	r14d, 0x5c
	sete	cl
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  0
	movzx	eax, byte ptr [rax + r12 + 1]
	cmp	eax, 0x2a
	sete	al
	movzx	eax, al
	mov	rsi, qword ptr [rsp]
	mov	dword ptr [rsi], eax
	movzx	eax, cl
	add	rbp, rax
	lea	rcx, [r12 + rbp + 2]
	jmp	.label_107
.label_115:
	cmp	r14d, 0x5c
	sete	al
	movzx	eax, al
	lea	rcx, [rbx + rax]
	movzx	ecx, byte ptr [r12 + rcx + 3]
	cmp	ecx, 0x20
	jne	.label_103
	lea	rax, [rax + r12 + 4]
	jmp	.label_111
.label_103:
	lea	rax, [rax + r12 + 3]
.label_111:
	movzx	ecx, byte ptr [rbx + rax]
	cmp	ecx, 0x28
	jne	.label_113
	cmp	r14d, 0x5c
	sete	cl
	mov	rdx, qword ptr [rsp]
	mov	dword ptr [rdx], 0
	lea	rdi, [rbx + rax + 1]
	inc	rax
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, rax
	movzx	r8d, cl
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	call	bsd_split_3
	jmp	.label_105
.label_113:
	xor	eax, eax
	jmp	.label_105
.label_116:
	xor	eax, eax
	jmp	.label_105
.label_112:
	xor	eax, eax
	jmp	.label_105
.label_106:
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  0
	je	.label_114
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rdx, qword ptr [rsp + 8]
.label_107:
	add	rbx, rcx
	mov	qword ptr [rdx], rbx
	mov	al, 1
	cmp	r14d, 0x5c
	jne	.label_105
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, rcx
	mov	rdi, rbx
	call	filename_unescape
	test	rax, rax
	setne	al
	jmp	.label_105
.label_114:
	xor	eax, eax
.label_105:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50

	.globl bsd_split_3
	.type bsd_split_3, @function
bsd_split_3:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	test	rsi, rsi
	je	.label_120
	lea	r15, [rdi + rsi]
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_127:
	mov	rbx, rax
	lea	rax, [rsi + rbx]
	cmp	rax, 1
	je	.label_126
	lea	rax, [rbx - 1]
	movzx	edx, byte ptr [r15 + rbx - 1]
	cmp	edx, 0x29
	jne	.label_127
.label_126:
	movzx	eax, byte ptr [rbx + r15 - 1]
	cmp	eax, 0x29
	jne	.label_119
	mov	qword ptr [rcx], rdi
	test	r8b, r8b
	je	.label_121
	lea	rsi, [rsi + rbx - 1]
	call	filename_unescape
	test	rax, rax
	je	.label_124
.label_121:
	lea	rdi, [rbx + r15 + 1]
	mov	byte ptr [r15 + rbx - 1], 0
	xor	eax, eax
	jmp	.label_125
	nop	dword ptr [rax]
.label_117:
	inc	rdi
.label_125:
	movzx	ecx, byte ptr [rdi - 1]
	cmp	ecx, 9
	je	.label_117
	movzx	ecx, cl
	cmp	ecx, 0x20
	je	.label_117
	cmp	ecx, 0x3d
	jne	.label_118
	jmp	.label_122
	nop	dword ptr [rax + rax]
.label_123:
	inc	rdi
.label_122:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x20
	je	.label_123
	movzx	eax, al
	cmp	eax, 9
	je	.label_123
	mov	qword ptr [r14], rdi
	call	hex_digits
	jmp	.label_118
.label_120:
	xor	eax, eax
	jmp	.label_118
.label_119:
	xor	eax, eax
.label_118:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_124:
	xor	eax, eax
	jmp	.label_118
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl hex_digits
	.type hex_digits, @function
hex_digits:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_128
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	ecx,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	ecx, 1
	shl	rcx, 5
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_131:
	movzx	esi, bl
	test	byte ptr [rax + rsi*2 + 1], 0x10
	je	.label_129
	mov	esi, edx
	cmp	rsi, rcx
	mov	bl, byte ptr [r14 + rdx]
	lea	rdx, [rdx + 1]
	jb	.label_131
.label_128:
	test	bl, bl
	sete	al
	jmp	.label_130
.label_129:
	xor	eax, eax
.label_130:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl filename_unescape
	.type filename_unescape, @function
filename_unescape:
	test	rsi, rsi
	mov	rcx, rdi
	je	.label_132
	lea	r8, [rsi - 1]
	xor	edx, edx
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	r9b, byte ptr [rdi + rdx]
	movsx	eax, r9b
	cmp	eax, 0x5c
	je	.label_133
	test	eax, eax
	mov	eax, 0
	je	.label_134
	mov	byte ptr [rcx], r9b
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_133:
	cmp	rdx, r8
	mov	eax, 0
	je	.label_134
	movsx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	cmp	eax, 0x5c
	je	.label_136
	cmp	eax, 0x6e
	mov	eax, 0
	jne	.label_134
	mov	byte ptr [rcx], 0xa
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_136:
	mov	byte ptr [rcx], 0x5c
.label_135:
	inc	rcx
	inc	rdx
	cmp	rdx, rsi
	jb	.label_137
.label_132:
	add	rsi, rdi
	cmp	rcx, rsi
	jae	.label_138
	mov	byte ptr [rcx], 0
.label_138:
	mov	rax, rdi
.label_134:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_139
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_141
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_141
.label_139:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_140
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_142
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_140:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_142:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	mov	dword ptr [rdi], 0x67452301
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	esi, dword ptr [r14]
	mov	rdi, rbx
	call	set_uint32
	lea	rdi, [rbx + 4]
	mov	esi, dword ptr [r14 + 4]
	call	set_uint32
	lea	rdi, [rbx + 8]
	mov	esi, dword ptr [r14 + 8]
	call	set_uint32
	lea	rdi, [rbx + 0xc]
	mov	esi, dword ptr [r14 + 0xc]
	call	set_uint32
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	mov	dword ptr [rdi], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_143
	inc	dword ptr [rbx + 0x14]
.label_143:
	mov	ecx, dword ptr [rbx + 0x10]
	shl	ecx, 3
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], ecx
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	md5_read_ctx
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e30

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp - 0x80], rdx
	mov	rax, rsi
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	mov	qword ptr [rsp - 0x78], rax
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	r8, rsi
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	r8d, 0
	add	dword ptr [rdx + 0x14], r8d
	cmp	rdi, rax
	jae	.label_145
	nop	
.label_144:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp - 0x40], r9
	mov	qword ptr [rsp - 0x38], rbp
	mov	dword ptr [rsp - 0x2c], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	qword ptr [rsp - 0x50], rcx
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 8], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rax, qword ptr [rsp + 8]
	add	edx, eax
	mov	rax, qword ptr [rsp + 8]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x18], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	qword ptr [rsp - 0x68], rsi
	mov	rcx, qword ptr [rsp + 8]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x20], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x28], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	mov	dword ptr [rsp - 0x44], esi
	add	ebx, esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x1c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x24], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp + 4], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	mov	dword ptr [rsp - 0x5c], edx
	add	ebx, edx
	mov	r13d, edx
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0xc], edx
	add	r9d, edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x54], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x58], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	mov	dword ptr [rsp - 0x6c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	mov	dword ptr [rsp - 0x48], ebp
	add	r11d, ebp
	mov	r15d, ebp
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 8]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x28]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x20]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp + 4]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x24]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x18]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x1c]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x54]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0xc]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 8]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x5c]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x50]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x68]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x44]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp + 4]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x48]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x18]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x1c]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x6c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x28]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp + 8]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 8]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x24]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x58]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x78]
	mov	r10d, dword ptr [rsp - 0x2c]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x20]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0xc]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp + 4]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x40]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x38]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_144
	jmp	.label_146
.label_145:
	mov	eax, r9d
	mov	edx, ebp
.label_146:
	mov	rcx, qword ptr [rsp - 0x80]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403640

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	r13, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r12, rax
	mov	r15d, 1
	test	r12, r12
	je	.label_148
	lea	rdi, [rsp + 8]
	call	md5_init_ctx
	mov	rdi, r13
	call	feof_unlocked
	xor	r15d, r15d
	test	eax, eax
	jne	.label_149
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_151:
	lea	rdi, [r12 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r13
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_153
	mov	esi, 0x8000
	mov	rdi, r12
	mov	rdx, rbp
	call	md5_process_block
	xor	ebx, ebx
	jmp	.label_150
	nop	dword ptr [rax]
.label_153:
	test	rax, rax
	je	.label_147
.label_150:
	mov	rdi, r13
	call	feof_unlocked
	test	eax, eax
	je	.label_151
.label_152:
	test	rbx, rbx
	je	.label_149
	lea	rdx, [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_bytes
.label_149:
	lea	rdi, [rsp + 8]
	mov	rsi, r14
	call	md5_finish_ctx
	mov	rdi, r12
	call	free
.label_148:
	mov	eax, r15d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_147:
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	je	.label_152
	mov	rdi, r12
	call	free
	mov	r15d, 1
	jmp	.label_148
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	r13d, dword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_156
	mov	ebx, 0x80
	sub	rbx, r13
	cmp	rbx, r12
	cmova	rbx, r12
	lea	rdi, [r14 + r13 + 0x1c]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	esi, dword ptr [r14 + 0x18]
	add	rsi, rbx
	mov	dword ptr [r14 + 0x18], esi
	cmp	esi, 0x41
	jb	.label_155
	lea	rbp, [r14 + 0x1c]
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	add	r13, rbx
	and	r13, 0xffffffffffffffc0
	add	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	call	memcpy
.label_155:
	add	r15, rbx
	sub	r12, rbx
.label_156:
	cmp	r12, 0x40
	jb	.label_157
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_157:
	test	r12, r12
	je	.label_158
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_154
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_154:
	mov	dword ptr [r14 + 0x18], ebx
.label_158:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rsp + 8]
	mov	rdi, r12
	call	md5_init_ctx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	md5_process_bytes
	mov	rdi, r12
	mov	rsi, r14
	call	md5_finish_ctx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_159
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_159:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_160
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_164
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_161
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_162
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_160
.label_162:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_163
.label_164:
	mov	rax, rbx
	jmp	.label_160
.label_161:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_163:
	xor	eax, eax
.label_160:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_167
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_166
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_166
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_165
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_165:
	mov	rbx, r14
.label_166:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_167:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a70
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_168
	test	rdx, rdx
	je	.label_168
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_168:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_288:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_263
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_194]]
.label_472:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_473:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_203
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_203
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_245:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_234:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_245
.label_203:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_186
.label_465:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_186
.label_468:
	mov	al, 1
.label_466:
	mov	r15b, 1
.label_469:
	test	r15b, 1
	mov	cl, 1
	je	.label_271
	mov	cl, al
.label_271:
	mov	al, cl
.label_467:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_173
	test	r10, r10
	je	.label_192
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_275
.label_173:
	xor	ecx, ecx
	jmp	.label_275
.label_470:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_280
	test	r10, r10
	je	.label_285
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_204
.label_471:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_186
.label_192:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_186
.label_280:
	xor	eax, eax
	jmp	.label_204
.label_285:
	mov	eax, 1
.label_204:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_186:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_216
	nop	dword ptr [rax + rax]
.label_172:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_216:
	cmp	rbp, -1
	je	.label_257
	cmp	rsi, rbp
	jne	.label_259
	jmp	.label_195
	nop	dword ptr [rax]
.label_257:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_195
.label_259:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_264
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_265
	cmp	rbp, -1
	jne	.label_265
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_265:
	cmp	rbx, rbp
	jbe	.label_283
.label_264:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_207:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_287
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_169]]
.label_502:
	test	rsi, rsi
	jne	.label_176
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_283:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_201
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_207
	jmp	.label_217
.label_201:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_207
.label_506:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_226
	test	rsi, rsi
	jne	.label_230
	cmp	rbp, 1
	je	.label_180
	xor	r15d, r15d
	jmp	.label_170
.label_495:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_274
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_217
	cmp	edi, 2
	jne	.label_240
	mov	al, r11b
	and	al, 1
	jne	.label_244
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_247
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_267
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_267:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_258
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_183
.label_496:
	mov	bl, 0x62
	jmp	.label_227
.label_497:
	mov	cl, 0x74
	jmp	.label_269
.label_498:
	mov	bl, 0x76
	jmp	.label_227
.label_499:
	mov	bl, 0x66
	jmp	.label_227
.label_500:
	mov	cl, 0x72
	jmp	.label_269
.label_503:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_273
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_211
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_282
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_282:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_181
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_181:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_187
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_187:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_198
.label_504:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_206
	cmp	r14d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_211
.label_209:
	mov	rdi, r14
	jmp	.label_176
.label_505:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_215
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_211
	mov	rdi, r14
	jmp	.label_219
.label_287:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_221
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_246:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_236
	test	dl, dl
	je	.label_236
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_170
.label_226:
	test	rsi, rsi
	jne	.label_255
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_255
.label_180:
	mov	dl, 1
.label_501:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_217
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_170
.label_274:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_176
	mov	r14, rdi
	inc	rsi
	jmp	.label_216
.label_273:
	mov	rdi, r14
.label_198:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_170
.label_215:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_269
.label_219:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_208
.label_269:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_217
.label_227:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_170
	jmp	.label_222
.label_221:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_284
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_284:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_238:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_193
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_200
	cmp	rbp, -2
	je	.label_213
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_214
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_228:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_210
	bt	rsi, rdx
	jb	.label_224
.label_210:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_228
.label_214:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_225
	xor	r15d, r15d
.label_225:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_238
	jmp	.label_246
.label_255:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_170
.label_206:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_176
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_176
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_176
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_189
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_218
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_217
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_277
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_277:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_281
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_281:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_178:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_170
.label_176:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_170:
	test	r12b, r12b
	je	.label_231
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_184
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_231:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_191
.label_184:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_196
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_208
	jmp	.label_222
	nop	word ptr cs:[rax + rax]
.label_191:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_222
	jmp	.label_208
.label_196:
	mov	bl, r13b
	mov	rsi, r14
.label_222:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_217
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_223
	mov	al, r11b
	and	al, 1
	jne	.label_223
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_229
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_229:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_276:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_241
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_223:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_250:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_256
.label_230:
	xor	r15d, r15d
	jmp	.label_170
.label_236:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_199:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_261:
	test	dl, dl
	je	.label_266
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_270
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_177:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_270
	nop	word ptr [rax + rax]
.label_266:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_211
	cmp	r14d, 2
	jne	.label_171
	mov	al, r11b
	and	al, 1
	jne	.label_171
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_174
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_174:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_182
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_188
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_188:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_171:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_289
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_289:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_254
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_254:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_220
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_220:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_270:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_208
	test	r11b, 1
	je	.label_237
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_239
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_243
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_243:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_175
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_175:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	r14, rdi
.label_239:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_199
.label_208:
	test	r11b, 1
	je	.label_272
	and	al, 1
	jne	.label_272
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_290
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_290:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_279
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_279:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_256
	nop	dword ptr [rax + rax]
.label_272:
	mov	bl, r13b
	mov	r14, rdi
.label_256:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_172
.label_240:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_183
.label_244:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_183:
	cmp	rcx, r10
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_185:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_190
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_202
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_251
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_233:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_278
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_278:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_170
.label_190:
	xor	r15d, r15d
	jmp	.label_170
.label_202:
	xor	r15d, r15d
	jmp	.label_170
.label_251:
	xor	r15d, r15d
	jmp	.label_170
.label_193:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_232
.label_200:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_235
.label_213:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_242
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_252:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_248
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_252
	xor	r15d, r15d
	jmp	.label_232
.label_242:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_235:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_232:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_246
.label_248:
	xor	r15d, r15d
	jmp	.label_232
.label_189:
	xor	r15d, r15d
	jmp	.label_170
.label_218:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_170
	nop	dword ptr [rax + rax]
.label_195:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_260
	or	dl, al
	je	.label_211
.label_260:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_262
	or	dl, al
	jne	.label_262
	test	r8b, 1
	jne	.label_249
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_262
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_288
.label_262:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_179
	test	cl, cl
	jne	.label_179
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_179
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_197:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_286
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_286:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_197
.label_179:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_205
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_205
.label_217:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_212:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_253:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_205:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_224:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_212
.label_211:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_212
.label_249:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_253
.label_263:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_291
	mov	qword ptr [rax], rbx
.label_291:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_292
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_294:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_294
.label_292:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_296
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_295]], OFFSET FLAT:slot0
.label_296:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_293
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_293:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_297
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_300
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_303
.label_300:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_299
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_298
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_298:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_303:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_301
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_302
	mov	rdi, rbx
	call	free
.label_302:
	mov	rdi, r14
	call	xcharalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_301:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_297:
	call	abort
.label_299:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405150
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	16
	#Procedure 0x405160

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_304
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_304:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405280

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_305]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_306]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_307]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_305]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_306]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_307]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405410
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405440
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405460
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405470

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_309
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_308
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_309
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_309
.label_308:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_310
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_309
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_309
.label_310:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_309:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405550

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_313
	jmp	.label_311
.label_312:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_311
.label_313:
	mov	eax, 1
	test	bpl, bpl
	je	.label_311
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_311:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055e0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_316
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_314
	jmp	.label_315
.label_316:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_315
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_315:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_317
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_319
	jmp	.label_318
.label_317:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_318
.label_319:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_318:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056f0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_322
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_322:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_320
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_320
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_320:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405760

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_324
.label_325:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_324
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_324
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_324:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_326:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_327
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_327:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_331
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_331:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_329
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_329
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_329:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405870

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_334
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_333
	jmp	.label_332
.label_334:
	mov	eax, 1
	test	cl, cl
	je	.label_332
.label_333:
	xor	eax, eax
.label_332:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058a0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058b0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_341
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_340
.label_341:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_340:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_336
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_337]]
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_336:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_335
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_342
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_344
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_339
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_339:
	mov	qword ptr [rsp + 0x10], rdi
.label_344:
	mov	qword ptr [rsp + 8], rsi
.label_342:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_343
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_335:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_338
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_338:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_343:
	call	__fprintf_chk
.label_430:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ba0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_345:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_345
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_347:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_346
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_348
	nop	dword ptr [rax]
.label_346:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_349
	inc	r9
	cmp	r9, 0xa
	jb	.label_347
.label_349:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_350
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_350:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_351
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_351:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_352
	test	rax, rax
	je	.label_353
.label_352:
	pop	rbx
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_354
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_354:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_355
	test	rbx, rbx
	jne	.label_355
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_355:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	je	.label_356
.label_357:
	pop	rbx
	ret	
.label_356:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_358
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_361
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_359
.label_358:
	test	rcx, rcx
	jne	.label_362
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_362:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_360
.label_359:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_361:
	call	xalloc_die
.label_360:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_363
	call	rpl_calloc
	test	rax, rax
	je	.label_363
	pop	rcx
	ret	
.label_363:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f20
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405f70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_364
	test	rsi, rsi
	mov	ecx, 1
	je	.label_365
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_365
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_364:
	mov	ecx, 1
.label_365:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_366
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_368
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_366
.label_368:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_366
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_367
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_367:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_366:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_369
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_369:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_375
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_371
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_374
	test	esi, esi
	jne	.label_375
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_377
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_379
.label_375:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_372
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_374
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_378
.label_371:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_374:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_381
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_370
.label_381:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_370:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_378:
	cmp	eax, 6
	jne	.label_372
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_373
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_376
.label_372:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_380
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_382
.label_377:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_379:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_373:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_376:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_380:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_382:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406260

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_383
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_385
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_385
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_386
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_387
.label_385:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_387
.label_383:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_387:
	test	ebx, ebx
	js	.label_386
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_386
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_384
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_386
.label_384:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_386:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406330

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_388
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_388
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_388:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_389
	ret	
.label_389:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_390
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_390
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_391
.label_390:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_391:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_392
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_392:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063f0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_393
	cmp	r15, -2
	jb	.label_393
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_393
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_393:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406450
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_394
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_394
.label_395:
	ret	
.label_394:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_395
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406480
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_396
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_396:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4064a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4064c0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_397
.label_398:
	ret	
.label_397:
	cmp	edi, 0x7f
	je	.label_398
	xor	eax, eax
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406510
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_399
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_399
.label_400:
	ret	
.label_399:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_400
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406550
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_401
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_401:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_402
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_402:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065a0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065b0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_403
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_404
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_404
.label_403:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_404
	test	cl, cl
	jne	.label_404
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_404:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_406
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_407
	cmp	byte ptr [rax + 1], 0
	je	.label_405
.label_407:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_406
.label_405:
	xor	ebx, ebx
.label_406:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_408
	mov	rax, rcx
.label_408:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4066a0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
