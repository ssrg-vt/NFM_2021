	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
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
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:.str.40
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
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
	#Procedure 0x401ce0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
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
	lea	rdi, [rsp + 0xa0]
	call	chopt_init
	mov	r12d, 0xffffffff
	mov	r15d, 0x10
.label_1006:
	xor	r13d, r13d
	jmp	.label_16
.label_12:
	mov	dword ptr [rsp + 0xa0], 1
	nop	dword ptr [rax]
.label_16:
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_23
	cmp	eax, 0x7f
	jle	.label_25
	add	eax, -0x80
	cmp	eax, 3
	ja	.label_15
	jmp	qword ptr [word ptr [+ (rax * 8) + label_17]]
.label_1005:
	mov	r12d, 1
	jmp	.label_16
	nop	dword ptr [rax]
.label_23:
	cmp	eax, 0x4f
	jg	.label_28
	cmp	eax, 0x47
	jle	.label_29
	mov	r15d, 0x11
	cmp	eax, 0x48
	je	.label_16
	cmp	eax, 0x4c
	jne	.label_15
	mov	r15d, 2
	jmp	.label_16
	nop	word ptr [rax + rax]
.label_25:
	cmp	eax, 0x66
	je	.label_33
	cmp	eax, 0x68
	je	.label_34
	cmp	eax, 0x76
	jne	.label_15
	mov	dword ptr [rsp + 0xa0], 0
	jmp	.label_16
	nop	word ptr cs:[rax + rax]
.label_28:
	cmp	eax, 0x50
	je	.label_10
	cmp	eax, 0x52
	je	.label_11
	cmp	eax, 0x63
	je	.label_12
	jmp	.label_15
.label_1007:
	mov	r13b, 1
	jmp	.label_16
.label_1008:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	jmp	.label_16
.label_33:
	mov	byte ptr [rsp + 0xb1], 1
	jmp	.label_16
.label_34:
	xor	r12d, r12d
	jmp	.label_16
.label_10:
	mov	r15d, 0x10
	jmp	.label_16
.label_11:
	mov	byte ptr [rsp + 0xa4], 1
	jmp	.label_16
.label_29:
	cmp	eax, -1
	jne	.label_19
	mov	r14d, 0x10
	cmp	byte ptr [rsp + 0xa4], 0
	je	.label_21
	cmp	r15d, 0x10
	jne	.label_24
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_24:
	mov	r14d, r15d
.label_21:
	test	r12d, r12d
	setne	byte ptr [rsp + 0xb0]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	cmp	rsi, 1
	mov	edx, 1
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_31
	test	rsi, rsi
	je	.label_36
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_37
	mov	ebp, dword ptr [rsp + 0x30]
	mov	edi, ebp
	call	gid_to_name
	mov	qword ptr [rsp + 0xc0], rax
	jmp	.label_13
.label_36:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	r12, qword ptr [rbx + rax*8]
	xor	eax, eax
	cmp	byte ptr [r12], 0
	je	.label_26
	mov	rdi, r12
	call	xstrdup
.label_26:
	mov	qword ptr [rsp + 0xc0], rax
	mov	ebp, 0xffffffff
	cmp	byte ptr [r12], 0
	je	.label_13
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_35
	mov	ebp, dword ptr [rax + 0x10]
	jmp	.label_18
.label_35:
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_22
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rax, rbp
	shr	rax, 0x20
	jne	.label_22
.label_18:
	call	endgrent
.label_13:
	test	r13b, r13b
	je	.label_27
	mov	al, byte ptr [rsp + 0xa4]
	test	al, al
	je	.label_27
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	je	.label_30
.label_27:
	or	r14d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rbx + rax*8]
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp], rax
	mov	edx, 0xffffffff
	mov	r8d, 0xffffffff
	mov	r9d, 0xffffffff
	mov	esi, r14d
	mov	ecx, ebp
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_19:
	cmp	eax, 0xffffff7d
	je	.label_14
	cmp	eax, 0xffffff7e
	jne	.label_15
	xor	edi, edi
	call	usage
.label_14:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_15:
	mov	edi, 1
	call	usage
.label_31:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_20
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_37:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_32
.label_30:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
.label_32:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_20:
	mov	esi, OFFSET FLAT:.str.22
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
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402170

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	mov	dword ptr [rdi], 2
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	byte ptr [rdi + 0x11], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a0
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_39
	mov	rdi, qword ptr [rax]
	jmp	.label_38
.label_39:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_38:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4021f0
	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:

	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_41
	mov	rdi, qword ptr [rax]
	jmp	.label_40
.label_41:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_40:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402220

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [rsp + 0x18], r9d
	mov	dword ptr [rsp + 0x10], ecx
	mov	dword ptr [rsp + 0x14], edx
	mov	r15, qword ptr [rsp + 0x1b0]
	and	r9d, r8d
	mov	dword ptr [rsp + 0x1c], r9d
	xor	eax, eax
	cmp	r9d, -1
	je	.label_45
	mov	dword ptr [rsp + 0x34], r8d
	jmp	.label_56
.label_45:
	mov	dword ptr [rsp + 0x34], r8d
	cmp	byte ptr [r15 + 0x10], 0
	jne	.label_56
	xor	eax, eax
	cmp	dword ptr [r15], 2
	jne	.label_56
	mov	eax, 8
.label_56:
	or	eax, esi
	xor	edx, edx
	mov	esi, eax
	call	xfts_open
	mov	r14, rax
	mov	qword ptr [rsp + 0x38], r14
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, rax
	mov	r12b, 1
	test	r13, r13
	je	.label_67
	mov	bl, 1
	jmp	.label_69
.label_96:
	mov	esi, OFFSET FLAT:.str.19_0
.label_87:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	r14, qword ptr [rsp + 8]
	xor	ebp, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	jmp	.label_72
.label_97:
	mov	qword ptr [rsp + 0x40], rbp
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	setne	al
	movzx	eax, al
	lea	eax, [rax*4 + 2]
	jmp	.label_82
	nop	dword ptr [rax]
.label_69:
	mov	r10, qword ptr [r13 + 0x30]
	mov	rbp, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	dec	eax
	cmp	eax, 9
	ja	.label_88
	jmp	qword ptr [word ptr [+ (rax * 8) + label_93]]
.label_967:
	cmp	byte ptr [r15 + 4], 0
	je	.label_88
	mov	rax, qword ptr [r15 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_43
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_43
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_43
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_103
	cmp	byte ptr [rbp + 1], 0
	je	.label_105
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbp
	mov	rbp, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	mov	rcx, r12
	call	error
	jmp	.label_115
.label_968:
	mov	rdi, r14
	mov	rsi, r13
	mov	r12, rbp
	mov	rbp, r10
	call	cycle_warning_required
	mov	r10, rbp
	mov	rbp, r12
	test	al, al
	je	.label_88
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	mov	r13, rbp
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	call	error
	jmp	.label_43
.label_969:
	mov	qword ptr [rsp + 0x40], rbp
	mov	byte ptr [rsp + 0x4f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_44
	mov	r12d, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	jmp	.label_48
.label_970:
	mov	r12b, 1
	cmp	byte ptr [r15 + 4], 0
	je	.label_43
.label_88:
	cmp	dword ptr [rsp + 0x1c], -1
	jne	.label_54
	cmp	dword ptr [r15], 2
	jne	.label_54
	cmp	qword ptr [r15 + 8], 0
	je	.label_57
	nop	word ptr cs:[rax + rax]
.label_54:
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	r14d, dword ptr [rsp + 0x34]
	jne	.label_60
	jmp	.label_64
.label_971:
	mov	qword ptr [rsp + 0x40], rbp
	mov	byte ptr [rsp + 0x4f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_44
	mov	ebp, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_74
.label_972:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_79
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_81
.label_79:
	mov	qword ptr [rsp + 0x40], rbp
	mov	byte ptr [rsp + 0x4f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_84
.label_44:
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_65
.label_84:
	mov	r12d, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
.label_48:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
.label_74:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_65
.label_57:
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	sil, 1
	mov	r14d, dword ptr [rsp + 0x34]
	je	.label_102
	nop	word ptr cs:[rax + rax]
.label_60:
	mov	eax, dword ptr [r13 + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_64
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, r10
	mov	qword ptr [rsp + 0x40], rbp
	lea	rbp, [rsp + 0x50]
	mov	rcx, rbp
	mov	r12, r13
	mov	r13, r10
	call	__fxstatat
	mov	r10, r13
	mov	r13, r12
	test	eax, eax
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x40]
	je	.label_64
	mov	byte ptr [rsp + 0x4f], bl
	mov	dword ptr [rsp + 0x34], r14d
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_116
	xor	ebp, ebp
	jmp	.label_117
.label_64:
	cmp	r14d, -1
	je	.label_118
	mov	eax, dword ptr [rdx + 0x1c]
	cmp	eax, r14d
	sete	sil
	cmp	dword ptr [rsp + 0x18], -1
	je	.label_102
	cmp	eax, r14d
	je	.label_122
	jmp	.label_102
.label_118:
	mov	sil, 1
	cmp	dword ptr [rsp + 0x18], -1
	je	.label_102
.label_122:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	dword ptr [rdx + 0x20], eax
	sete	sil
.label_102:
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 6
	ja	.label_42
	mov	ecx, 0x56
	bt	ecx, eax
	jae	.label_42
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_42
	mov	rcx, qword ptr [rdx + 8]
	cmp	rcx, qword ptr [rax]
	jne	.label_42
	mov	rcx, qword ptr [rdx]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_42
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_52
	cmp	byte ptr [rbp + 1], 0
	je	.label_114
.label_52:
	mov	dword ptr [rsp + 0x34], r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbp
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	rcx, r12
	call	error
	jmp	.label_70
	nop	
.label_42:
	mov	byte ptr [rsp + 0x4f], bl
	test	sil, sil
	je	.label_71
	mov	dword ptr [rsp + 0x34], r14d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r14d, dword ptr [rax + 0x2c]
	cmp	byte ptr [r15 + 0x10], 0
	je	.label_76
	cmp	dword ptr [rsp + 0x1c], -1
	je	.label_83
	mov	eax, dword ptr [rdx + 0x18]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_85
	cmp	eax, 0x4000
	jne	.label_83
	mov	r12d, 0x10900
.label_85:
	mov	byte ptr [rsp + 0x28], sil
	mov	rbx, rdx
	xor	eax, eax
	mov	edi, r14d
	mov	rsi, r10
	mov	qword ptr [rsp + 0x20], r10
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_98
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 0xd
	jne	.label_100
	mov	ecx, dword ptr [rbx + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_100
	or	r12d, 1
	xor	eax, eax
	mov	edi, r14d
	mov	rsi, qword ptr [rsp + 0x20]
	mov	edx, r12d
	call	openat
	test	eax, eax
	js	.label_108
.label_98:
	mov	dword ptr [rsp + 8], eax
	mov	edi, 1
	mov	esi, eax
	lea	rdx, [rsp + 0xe0]
	call	__fxstat
	mov	r15d, 6
	test	eax, eax
	je	.label_111
	mov	r12d, dword ptr [rsp + 0x34]
	jmp	.label_78
.label_71:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x34], r14d
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_65
.label_76:
	mov	byte ptr [rsp + 0x28], sil
	mov	rbx, rdx
	mov	r8d, 0x100
	mov	edi, r14d
	mov	rsi, r10
	mov	edx, dword ptr [rsp + 0x14]
	mov	ecx, dword ptr [rsp + 0x10]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_121
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_123
	mov	al, r12b
.label_123:
	mov	qword ptr [rsp + 0x40], rbp
	mov	r12b, al
	jmp	.label_49
.label_83:
	mov	byte ptr [rsp + 0x28], sil
	mov	rbx, rdx
.label_90:
	mov	qword ptr [rsp + 0x40], rbp
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r10
	mov	edx, dword ptr [rsp + 0x14]
	mov	ecx, dword ptr [rsp + 0x10]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	jmp	.label_49
.label_116:
	mov	r12, r15
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
	mov	r15, r12
.label_117:
	lea	rbx, [rsp + 0x50]
	xor	r12d, r12d
	jmp	.label_65
.label_81:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_43
.label_121:
	mov	qword ptr [rsp + 0x40], rbp
.label_49:
	test	r12b, 1
	jne	.label_73
	jmp	.label_77
.label_111:
	mov	rax, qword ptr [rbx + 8]
	mov	r15d, 4
	cmp	rax, qword ptr [rsp + 0xe8]
	mov	r12d, dword ptr [rsp + 0x34]
	jne	.label_78
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rsp + 0xe0]
	jne	.label_78
	cmp	r12d, -1
	mov	r15d, 2
	je	.label_94
	cmp	dword ptr [rsp + 0xfc], r12d
	jne	.label_78
.label_94:
	cmp	dword ptr [rsp + 0x18], -1
	je	.label_55
	mov	eax, dword ptr [rsp + 0x18]
	cmp	dword ptr [rsp + 0x100], eax
	jne	.label_78
.label_55:
	mov	edi, dword ptr [rsp + 8]
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, dword ptr [rsp + 0x10]
	call	fchown
	test	eax, eax
	mov	r15d, 6
	je	.label_97
.label_78:
	mov	qword ptr [rsp + 0x40], rbp
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	rax, r15
	mov	dword ptr [rbp], r14d
	jmp	.label_82
.label_114:
	mov	dword ptr [rsp + 0x34], r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	r14, qword ptr [rsp + 0x38]
.label_70:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_43
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	mov	r12, rbp
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	call	error
.label_115:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, r14
	call	rpl_fts_read
	jmp	.label_43
.label_108:
	mov	eax, dword ptr [r15]
.label_100:
	mov	qword ptr [rsp + 0x40], rbp
	cmp	eax, 0xd
	setne	al
	movzx	eax, al
	add	eax, 5
	mov	r12d, dword ptr [rsp + 0x34]
.label_82:
	mov	dword ptr [rsp + 0x34], r12d
	add	eax, -2
	cmp	eax, 4
	mov	r15, qword ptr [rsp + 0x1b0]
	ja	.label_58
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	mov	r10, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_59]]
	.section	.text
	.align	16
	#Procedure 0x402e70

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_129
	test	r14, r14
	je	.label_126
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_127
.label_129:
	xor	r15d, r15d
	test	r14, r14
	je	.label_127
	mov	rdi, r14
	jmp	.label_128
.label_127:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_126:
	mov	rdi, rbx
.label_128:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_133
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_132
	cmp	dword ptr [rbp], 0x20
	jne	.label_132
.label_133:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_131
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_130
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_131:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_130:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_134
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_135
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_136
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_136
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_137
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_137:
	mov	rbx, r14
.label_136:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_135:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0
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
	#Procedure 0x403110
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
	#Procedure 0x403120
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
	#Procedure 0x403130
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
	#Procedure 0x403170
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
	#Procedure 0x403190
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_138
	test	rdx, rdx
	je	.label_138
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_138:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403240

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_146:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_205
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_209]]
.label_921:
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_922:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_228
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_228
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_252:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_244:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_252
.label_228:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_157
.label_914:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_157
.label_917:
	mov	al, 1
.label_915:
	mov	r12b, 1
.label_918:
	test	r12b, 1
	mov	cl, 1
	je	.label_164
	mov	cl, al
.label_164:
	mov	al, cl
.label_916:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_167
	test	r10, r10
	je	.label_171
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_172
.label_167:
	xor	ecx, ecx
	jmp	.label_172
.label_919:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_203
	test	r10, r10
	je	.label_184
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_186
.label_920:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_157
.label_171:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_172:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_157
.label_203:
	xor	eax, eax
	jmp	.label_186
.label_184:
	mov	eax, 1
.label_186:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_157:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_219
.label_140:
	inc	rdi
.label_219:
	cmp	rbp, -1
	je	.label_257
	cmp	rdi, rbp
	jne	.label_260
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_139
.label_260:
	test	r12b, r12b
	je	.label_147
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_149
	cmp	rbp, -1
	jne	.label_149
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_149:
	cmp	rbx, rbp
	jbe	.label_177
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_147:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_179
.label_177:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_201
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_179
	jmp	.label_153
.label_201:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_179:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_236
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_223]]
.label_995:
	test	rdi, rdi
	jne	.label_145
	jmp	.label_231
.label_999:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_232
	test	rdi, rdi
	jne	.label_235
	cmp	rbp, 1
	je	.label_231
	xor	r13d, r13d
	jmp	.label_160
.label_988:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_240
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_153
	cmp	r9d, 2
	jne	.label_246
	mov	al, r14b
	and	al, 1
	jne	.label_247
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_250:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_229
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_229:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_206
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_206:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_152
.label_989:
	mov	bl, 0x62
	jmp	.label_161
.label_990:
	mov	cl, 0x74
	jmp	.label_163
.label_991:
	mov	bl, 0x76
	jmp	.label_161
.label_992:
	mov	bl, 0x66
	jmp	.label_161
.label_993:
	mov	cl, 0x72
	jmp	.label_163
.label_996:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_168
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_174
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_200
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_197
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_168:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_160
.label_997:
	cmp	r9d, 5
	je	.label_210
	cmp	r9d, 2
	jne	.label_145
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_145
	jmp	.label_215
.label_998:
	cmp	r9d, 2
	jne	.label_217
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_220
	jmp	.label_224
.label_236:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_226
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_190:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_241
	test	cl, cl
	je	.label_241
	xor	eax, eax
	jmp	.label_160
.label_232:
	test	rdi, rdi
	jne	.label_255
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_255
.label_231:
	mov	dl, 1
.label_994:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_259
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_160
.label_240:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_140
	jmp	.label_145
.label_217:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_163
.label_220:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_151
.label_163:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_154
.label_161:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_160
	jmp	.label_165
.label_226:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_166
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_166:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_230:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_196
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_199
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_204
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_251
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_216:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_242
	bt	rsi, rdx
	jb	.label_213
.label_242:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_216
.label_251:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_237
	xor	r13d, r13d
.label_237:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_230
	jmp	.label_190
.label_255:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_160
.label_210:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_145
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_145
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_145
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_248
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_253
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_225
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_262
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_262:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_169
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_169:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_156
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_156:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_245
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_245:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_160
.label_145:
	xor	eax, eax
	xor	r13d, r13d
.label_160:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_181
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_183
	jmp	.label_187
	nop	word ptr [rax + rax]
.label_181:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_187
.label_183:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_191
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_198
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_198:
	mov	bl, r15b
	je	.label_151
	jmp	.label_165
.label_191:
	mov	bl, r15b
.label_165:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_153
	cmp	r9d, 2
	jne	.label_207
	mov	al, r14b
	and	al, 1
	jne	.label_207
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_144
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_144:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_212:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_222
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_207:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_234:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_233
.label_235:
	xor	r13d, r13d
	jmp	.label_160
.label_241:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_243
	nop	word ptr [rax + rax]
.label_238:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_243:
	test	cl, cl
	je	.label_254
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_159
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_258
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_258:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_159
	nop	word ptr [rax + rax]
.label_254:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_153
	cmp	r9d, 2
	jne	.label_158
	mov	al, r14b
	and	al, 1
	jne	.label_158
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_162
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_162:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_173
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_173:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_178:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_158:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_189
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_194
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_194:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_214
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_214:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_159:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_151
	test	r14b, 1
	je	.label_208
	mov	bl, al
	and	bl, 1
	jne	.label_208
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_142
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_142:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_227
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_227:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_208:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_238
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_238
	nop	dword ptr [rax]
.label_151:
	test	r14b, 1
	je	.label_249
	and	al, 1
	jne	.label_249
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_195
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_195:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_150
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_150:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_249:
	mov	bl, r15b
.label_233:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_148
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_148:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_140
.label_246:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_152
.label_247:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_152:
	cmp	rcx, r10
	jae	.label_170
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_170:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_176
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_182
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_185
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_188
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_188:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_193
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_193:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_160
.label_176:
	xor	r13d, r13d
	jmp	.label_160
.label_182:
	xor	r13d, r13d
	jmp	.label_160
.label_185:
	xor	r13d, r13d
	jmp	.label_160
.label_199:
	xor	r13d, r13d
.label_196:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_190
.label_204:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_211
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_143:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_218
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_143
	xor	r13d, r13d
	jmp	.label_190
.label_211:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_190
.label_218:
	xor	r13d, r13d
	jmp	.label_190
.label_248:
	xor	r13d, r13d
	jmp	.label_160
.label_253:
	xor	r13d, r13d
	jmp	.label_160
	nop	dword ptr [rax]
.label_261:
	mov	r13, rdi
.label_139:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_239
	or	al, dl
	je	.label_192
.label_239:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_141
	or	al, dl
	jne	.label_141
	test	r8b, 1
	jne	.label_263
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_141
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_146
.label_141:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_155
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_155
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_155
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_175:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_256:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_175
.label_155:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_180
.label_259:
	mov	r9d, 2
	jmp	.label_153
.label_213:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_153
.label_192:
	mov	rbp, r13
	jmp	.label_153
.label_154:
	mov	r9d, 2
.label_153:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_221:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_180:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_263:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_221
.label_174:
	mov	r9d, 2
	jmp	.label_153
.label_224:
	mov	r9d, 2
	jmp	.label_153
.label_215:
	mov	r9d, 2
	jmp	.label_153
.label_225:
	mov	r9d, 5
	jmp	.label_153
.label_205:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x4044a0
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
	call	xmalloc
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
	je	.label_264
	mov	qword ptr [rax], rbx
.label_264:
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
	#Procedure 0x4045a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_265
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_267:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_267
.label_265:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_268
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_269]], OFFSET FLAT:slot0
.label_268:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_266
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_266:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404650

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
	js	.label_270
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_275
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_271
.label_275:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_274
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
	jne	.label_273
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_273:
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
.label_271:
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
	ja	.label_276
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_272
	mov	rdi, rbx
	call	free
.label_272:
	mov	rdi, r14
	call	xmalloc
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
.label_276:
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
.label_270:
	call	abort
.label_274:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404820
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404850
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_277
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_277:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4048e0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_278
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_278:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_279
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_279:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_280
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_280:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404aa0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_284
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_284:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_285
	test	rdx, rdx
	je	.label_285
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_285:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404cf0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_286
	test	rdx, rdx
	je	.label_286
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_286:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_287
	test	rsi, rsi
	je	.label_287
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_287:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404dd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_288
	test	rsi, rsi
	je	.label_288
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_288:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_290
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_291
	cmp	ecx, 0x55
	jne	.label_289
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_289
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_289
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_289
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_289
	cmp	byte ptr [rax + 5], 0
	jne	.label_289
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_290
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_290
.label_291:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_289
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_289
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_289
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_289
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_289
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_289
	cmp	byte ptr [rax + 7], 0
	je	.label_292
.label_289:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_290:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_292:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_290
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_290
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_1
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_293:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0

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
	je	.label_300
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_299
.label_300:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_299:
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_295
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_296]]
.label_940:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_295:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_294
.label_941:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_942:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_301
.label_944:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_303
.label_945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_298
.label_946:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_298:
	mov	qword ptr [rsp + 0x10], rdi
.label_303:
	mov	qword ptr [rsp + 8], rsi
.label_301:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_302
.label_948:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_294:
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
	jmp	.label_297
.label_947:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_297:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_302:
	call	__fprintf_chk
.label_939:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_304:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_304
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_307:
	cmp	r10d, 0x28
	ja	.label_305
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_305:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_306:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_308
	inc	r9
	cmp	r9, 0xa
	jb	.label_307
.label_308:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_309
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_309:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	r8d, 0x28
	ja	.label_310
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_312
	nop	
.label_310:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_312:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_311
	inc	r9
	cmp	r9, 0xa
	jb	.label_313
.label_311:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405470
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_2
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x4054f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_314
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_315
	test	rax, rax
	je	.label_314
.label_315:
	pop	rbx
	ret	
.label_314:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_316
	test	rax, rax
	je	.label_317
.label_316:
	pop	rbx
	ret	
.label_317:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_318
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_319
	test	rbx, rbx
	jne	.label_319
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_319:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_318
.label_320:
	pop	rbx
	ret	
.label_318:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_321
	test	rbx, rbx
	jne	.label_321
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_321:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_323
	test	rax, rax
	je	.label_322
.label_323:
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_328
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_329
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_324
.label_328:
	test	rcx, rcx
	jne	.label_330
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_330:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_326
.label_324:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_325
	test	rbx, rbx
	jne	.label_325
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_325:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_329
.label_327:
	pop	rbx
	ret	
.label_329:
	call	xalloc_die
.label_326:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_331
	test	rax, rax
	je	.label_332
.label_331:
	pop	rbx
	ret	
.label_332:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_335
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_337
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_334
	call	free
	xor	eax, eax
	jmp	.label_336
.label_335:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_333
	mov	qword ptr [rsi], rbx
.label_334:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_336
	test	rax, rax
	je	.label_333
.label_336:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
.label_337:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_339
	test	r14, r14
	je	.label_338
.label_339:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_338:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_340
	call	rpl_calloc
	test	rax, rax
	je	.label_340
	pop	rcx
	ret	
.label_340:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_341
	test	r15, r15
	je	.label_342
.label_341:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_342:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_344
	test	r15, r15
	je	.label_343
.label_344:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_343:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405800

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405830

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_346
	pop	rcx
	ret	
.label_346:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_345
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_345:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405870

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_347
	cmp	ecx, 0x11
	jne	.label_348
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_347:
	ret	
.label_348:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_351
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_372:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_372
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_357
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_356
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_359
	cmp	eax, 0x22
	jne	.label_357
	mov	ebx, 1
.label_359:
	test	r14, r14
	jne	.label_373
	jmp	.label_368
.label_356:
	test	r14, r14
	je	.label_357
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_357
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_357
.label_373:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_368
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_354
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_355
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_355
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_355
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_369
	cmp	eax, 0x44
	je	.label_369
	cmp	eax, 0x69
	jne	.label_355
	movzx	eax, byte ptr [r12 + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_349
	mov	r15d, 1
.label_349:
	mov	esi, 0x400
	jmp	.label_355
.label_369:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_355:
	cmp	r13d, 0x59
	jg	.label_360
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_362
	jmp	qword ptr [word ptr [+ (rax * 8) + label_365]]
.label_978:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_366
.label_360:
	cmp	r13d, 0x73
	jg	.label_370
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_371
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_361]]
.label_891:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_366:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_350
.label_362:
	cmp	r13d, 0x54
	je	.label_353
	cmp	r13d, 0x59
	jne	.label_354
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_364
.label_370:
	cmp	r13d, 0x74
	je	.label_353
	cmp	r13d, 0x77
	jne	.label_354
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_350
.label_892:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_358
.label_893:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_363
.label_894:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_358
.label_353:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_358
.label_371:
	cmp	r13d, 0x5a
	jne	.label_354
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_364:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_363
.label_354:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_352
.label_979:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_358:
	and	dl, 1
	movzx	eax, dl
.label_363:
	mov	rbp, rsi
.label_350:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx], rcx
	cmp	byte ptr [r12 + r15], 0
	je	.label_367
	or	eax, 2
.label_367:
	mov	ebx, eax
.label_368:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
.label_352:
	mov	r13d, ebx
.label_357:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_980:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_363
.label_351:
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_374
	test	rsi, rsi
	mov	ecx, 1
	je	.label_375
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_375
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_374:
	mov	ecx, 1
.label_375:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f70

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 0x1000
	jae	.label_381
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_381
	test	r15b, 0x12
	je	.label_381
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_398
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r15d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r15b, 2
	cmove	eax, r15d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_403
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_382:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_382
	inc	rbp
	mov	rbx, r14
.label_403:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_400
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_394
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_401
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_394:
	mov	byte ptr [rsp + 0x17], 1
	test	r13, r13
	je	.label_377
	mov	rax, qword ptr [rsp + 0x18]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x17], al
.label_377:
	xor	ebp, ebp
	test	r15, r15
	je	.label_379
	mov	qword ptr [rsp + 8], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 4], ebx
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_402:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_409
	cmp	rbp, 3
	jb	.label_389
	cmp	rbp, 2
	jb	.label_391
	movzx	eax, byte ptr [rbp + r15 - 1]
	cmp	eax, 0x2f
	jne	.label_392
	mov	qword ptr [rsp + 0x20], r12
.label_383:
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_393
	dec	rbp
	cmp	rbp, 1
	ja	.label_383
	jmp	.label_393
.label_409:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_393
.label_389:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_393
.label_391:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_393
.label_392:
	mov	qword ptr [rsp + 0x20], r12
.label_393:
	mov	rbx, r13
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_399
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	r15, qword ptr [rsp + 0x28]
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0x17]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_407
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_388
	nop	dword ptr [rax + rax]
.label_407:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_388:
	mov	r13, rbx
	test	r13, r13
	je	.label_397
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], r15
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_408
.label_397:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rbp, r12
	je	.label_408
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_408:
	inc	r14
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r15, r15
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_402
	test	r13, r13
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_406
	cmp	r14, 2
	mov	r12, qword ptr [rsp + 8]
	jb	.label_379
	mov	rsi, rbp
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	jmp	.label_379
.label_381:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_398:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_400:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_380
.label_399:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_376
.label_401:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_384
.label_406:
	mov	r12, qword ptr [rsp + 8]
.label_379:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_387
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_390
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_405
	jmp	.label_376
.label_387:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], 0
	jmp	.label_376
.label_390:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_376
	mov	rdi, rax
	call	cycle_check_init
.label_405:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_396
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_378
	mov	edi, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_385
.label_376:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_386
	nop	
.label_395:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_404
	call	closedir
.label_404:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_395
.label_386:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_384:
	mov	rdi, rbp
.label_380:
	call	free
	mov	rdi, rbx
	call	free
	xor	eax, eax
	jmp	.label_398
.label_378:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_385:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_396
	or	byte ptr [rbx + 0x48], 4
.label_396:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_398
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_413
	test	al, 1
	je	.label_413
	mov	dl, 1
.label_413:
	lea	rbx, [r14 + 0x78]
	test	dl, dl
	jne	.label_418
	and	eax, 2
	jne	.label_418
	mov	esi, dword ptr [r15 + 0x2c]
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_414
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_416
.label_418:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_414
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_416
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_415
	mov	eax, dword ptr [r15]
.label_416:
	mov	dword ptr [r14 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_411:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_414:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_411
	cmp	ecx, 0x8000
	je	.label_419
	cmp	ecx, 0x4000
	jne	.label_410
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_417
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_417
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_417:
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	movzx	edx, cl
	cmp	edx, 0x2e
	jne	.label_411
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_412
	movzx	edx, dl
	cmp	edx, 0x2e
	jne	.label_411
	test	ecx, 0xff0000
	jne	.label_411
.label_412:
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_411
	mov	ax, 5
	jmp	.label_411
.label_419:
	mov	ax, 8
	jmp	.label_411
.label_410:
	mov	ax, 3
	jmp	.label_411
.label_415:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_411
	nop	
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_427
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_422
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_422
	mov	qword ptr [r13], rdi
	jmp	.label_421
.label_427:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_421:
	test	rbx, rbx
	je	.label_424
	nop	dword ptr [rax]
.label_426:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_426
	mov	rdi, qword ptr [r13]
.label_424:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_420
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_425
	lea	rdx, [r9 + 8]
	lea	edi, [r14 + 2]
	lea	r8, [r14 - 3]
	test	dil, 3
	je	.label_428
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	dword ptr [rax]
.label_423:
	mov	rsi, qword ptr [rdx]
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	inc	rdi
	jne	.label_423
.label_428:
	cmp	r8, 3
	jb	.label_425
	nop	dword ptr [rax]
.label_430:
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rcx, -4
	jne	.label_430
.label_425:
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_420:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_429
.label_422:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_429:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_448
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_437
	nop	word ptr cs:[rax + rax]
.label_438:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_434
	mov	rbx, qword ptr [rdi + 8]
.label_434:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_438
	jmp	.label_439
.label_437:
	mov	rbx, rdi
.label_439:
	mov	rdi, rbx
	call	free
.label_448:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_442
	nop	word ptr cs:[rax + rax]
.label_446:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_444
	call	closedir
.label_444:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_446
.label_442:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_432
	xor	ebp, ebp
	test	al, 4
	jne	.label_441
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_436
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_436:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_440
	jmp	.label_441
.label_432:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_441
	call	close
.label_440:
	test	eax, eax
	je	.label_441
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_441:
	lea	rbx, [r14 + 0x60]
	jmp	.label_445
	nop	dword ptr [rax + rax]
.label_449:
	mov	edi, eax
	call	close
.label_445:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_447
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_449
	jmp	.label_445
.label_447:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_431
	call	hash_free
.label_431:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_433
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_435
	call	hash_free
	jmp	.label_435
.label_433:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_435:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_443
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_443:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_459
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_459
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_489
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_494
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_497
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_500
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_504
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_506
	mov	edi, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_454
.label_489:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_459
.label_494:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_463
.label_497:
	lea	r13, [r12 + 0x70]
.label_463:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_466
	cmp	edx, 4
	je	.label_452
	test	al, 0x40
	je	.label_471
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_452
.label_471:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_477
	test	ah, 0x10
	jne	.label_481
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_493
	nop	word ptr cs:[rax + rax]
.label_466:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_486
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_501
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_466
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_484
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_458
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_458
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_473
	mov	edi, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_502
.label_476:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_493:
	test	rax, rax
	jne	.label_476
	jmp	.label_478
.label_452:
	test	ecx, 0x20000
	je	.label_480
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_480:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_485
	nop	dword ptr [rax]
.label_496:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_490
	call	closedir
.label_490:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_496
	mov	qword ptr [r14 + 8], 0
.label_485:
	mov	word ptr [r12 + 0x70], 6
.label_503:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_459
.label_486:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_507
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_450
	mov	rdi, r12
	call	free
	jmp	.label_484
.label_500:
	mov	r15, r12
	jmp	.label_456
.label_501:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_461
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_459
.label_504:
	mov	r15, r12
	jmp	.label_456
.label_461:
	test	ax, 0x102
	je	.label_467
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_474
	call	hash_free
	jmp	.label_474
.label_481:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_491:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_479
	call	closedir
.label_479:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_491
	mov	qword ptr [r14 + 8], 0
.label_477:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_499
.label_478:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_484
.label_499:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_459
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_503
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_503
	mov	word ptr [r13], 7
	jmp	.label_503
.label_506:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_454:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_455
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_456
.label_450:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_459
	mov	r15, qword ptr [r12 + 8]
.label_507:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_468
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_472
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_475
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_483
	test	al, 1
	jne	.label_487
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_495
.label_468:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_459
.label_455:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_456
.label_467:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_474:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_457
	cmp	rbx, r12
	jne	.label_460
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_457
.label_460:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_457:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_469
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_456
.label_469:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_456
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_456
.label_475:
	mov	rdi, r14
	call	restore_initial_cwd
.label_495:
	test	eax, eax
	je	.label_487
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_487
.label_483:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_451
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_505
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_451
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_451
.label_473:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_502:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_464
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_458
.label_464:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_458:
	mov	word ptr [r15 + 0x74], 3
.label_484:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_470
	dec	rcx
.label_470:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_456:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_488
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_453
	cmp	rax, 2
	jne	.label_472
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_482
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_482
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_453
	cmp	rax, 0x58465342
	je	.label_453
.label_482:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_488
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_453
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_453
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_453:
	movzx	eax, word ptr [r15 + 0x70]
.label_488:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_459
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_465
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_465:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_459
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_459
.label_505:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_492
	cmp	esi, -0x64
	jne	.label_472
.label_492:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_462
	mov	edi, eax
	call	close
.label_462:
	mov	dword ptr [r14 + 0x2c], ebp
.label_451:
	mov	edi, dword ptr [rbx]
	call	close
.label_487:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_498
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_498
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_498:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_459:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_472:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_509
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_510
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_509:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_508
	cmp	qword ptr [rax + 0x58], 0
	js	.label_508
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_510
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_508
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_508
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_508:
	add	rsp, 0x18
	ret	
.label_510:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407180

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r15, rdi
	test	rbx, rbx
	je	.label_511
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_519
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_519
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_519:
	test	eax, eax
	sete	r14b
	jmp	.label_520
.label_511:
	xor	r14d, r14d
.label_520:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_525
	test	r13d, r13d
	jns	.label_526
	mov	cl, r14b
	xor	cl, 1
	jne	.label_527
	mov	qword ptr [rsp], rsi
	and	eax, 0x200
	je	.label_514
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_514
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	jmp	.label_514
.label_525:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_512
	and	eax, 0x200
	je	.label_512
	mov	edi, r13d
	call	close
	jmp	.label_512
.label_526:
	mov	qword ptr [rsp], rsi
	jmp	.label_514
.label_527:
	mov	qword ptr [rsp], rsi
.label_514:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_521
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_524
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_529
.label_524:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_529:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_512
.label_521:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_517
	test	rbx, rbx
	je	.label_518
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_518
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_518
	cmp	byte ptr [rbx + 2], 0
	jne	.label_518
.label_517:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_522
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_523
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_523
	mov	eax, dword ptr [r15 + 0x48]
.label_518:
	test	ah, 2
	jne	.label_528
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_530
.label_528:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_532
	cmp	esi, -0x64
	jne	.label_513
.label_532:
	test	r14b, r14b
	je	.label_515
	test	al, 4
	jne	.label_516
	test	esi, esi
	js	.label_516
	mov	edi, esi
	jmp	.label_531
.label_523:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_522:
	mov	ebp, 0xffffffff
.label_530:
	test	r13d, r13d
	jns	.label_512
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_512
.label_515:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_516
	mov	edi, eax
.label_531:
	call	close
.label_516:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_512:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_513:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407380

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, esi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x78], r13
	mov	r12, qword ptr [r13]
	mov	qword ptr [rsp + 0x60], r12
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_591
	mov	qword ptr [rsp + 0x48], rdi
	call	dirfd
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	js	.label_601
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_604
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_604:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_553
.label_591:
	mov	qword ptr [rsp + 0x48], rdi
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_534
	mov	edi, dword ptr [r13 + 0x2c]
.label_534:
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_541
	test	al, 1
	je	.label_544
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_541
.label_544:
	mov	edx, 0x20000
.label_541:
	lea	rcx, [rsp + 0xa4]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_549
	lea	rcx, [r13 + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_552
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_560
.label_601:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_549:
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_540
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_540
.label_552:
	test	byte ptr [rcx + 1], 1
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_560
	mov	rdi, r13
	mov	rsi, r12
	call	leave_dir
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	rdi, r13
	mov	rsi, r12
	call	enter_dir
	test	al, al
	je	.label_572
.label_560:
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_573
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_573:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	cmp	r15d, 2
	je	.label_578
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_580
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_580
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_585
	cmp	rax, 0x9fa0
	je	.label_580
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_580
	cmp	rax, 0x5346414f
	je	.label_580
	jmp	.label_578
.label_572:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_540
.label_585:
	test	rax, rax
	je	.label_580
	cmp	rax, 0x6969
	jne	.label_578
.label_580:
	cmp	r15d, 3
	sete	bl
	mov	r14b, 1
	jmp	.label_593
.label_578:
	cmp	r15d, 3
	sete	bl
	mov	r14d, 0
	jne	.label_596
.label_593:
	mov	dword ptr [rsp + 0x24], r15d
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0xa4]
	je	.label_599
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0xa4], ebp
.label_599:
	test	ebp, ebp
	js	.label_607
	xor	ecx, ecx
	mov	rdi, r13
	mov	rsi, r12
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_536
.label_607:
	and	bl, r14b
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_612
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
.label_612:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	test	ah, 2
	je	.label_538
	mov	edi, dword ptr [rsp + 0xa4]
	test	edi, edi
	js	.label_538
	call	close
.label_538:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_548
.label_596:
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_553
.label_536:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
.label_548:
	mov	r15d, dword ptr [rsp + 0x24]
.label_553:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_556
	dec	rdx
.label_556:
	mov	dword ptr [rsp + 0x24], r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_562
	mov	rax, qword ptr [r13 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_562:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rcx, qword ptr [r13 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x70], rcx
	mov	rax, qword ptr [r12 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x10], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	xor	ebp, ebp
	xor	r15d, r15d
.label_609:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_554
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x88], rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	dword ptr [rax]
.label_592:
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_584
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_568
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2e
	jne	.label_568
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	je	.label_558
	test	al, al
	je	.label_589
	jmp	.label_568
	nop	dword ptr [rax]
.label_558:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_568
.label_589:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	jne	.label_592
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
.label_568:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_602
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x38], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x78]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rbx, rax
	jae	.label_608
	mov	rdx, qword ptr [rsp + 0x80]
	jmp	.label_545
	nop	word ptr cs:[rax + rax]
.label_608:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_550
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_557
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_559
	mov	rdx, qword ptr [rsp + 0x80]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x68]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_561
.label_559:
	mov	rdx, qword ptr [rsp + 0x80]
.label_561:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_545:
	add	rbx, rdx
	jb	.label_611
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x80], rdx
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	r13, rbp
	mov	rax, qword ptr [r13]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	jne	.label_566
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_576
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x38]
	call	memmove
.label_576:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_535
	mov	eax, edx
	and	eax, 0x400
	jne	.label_535
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x88]
	jmp	.label_588
	nop	dword ptr [rax]
.label_535:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_569
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_569:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x88]
	ja	.label_595
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_598]]
.label_595:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_588:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rax, r12
	je	.label_581
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_581:
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_539
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_539
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	dword ptr [rsp + 0x20], 0
	cmp	rax, 0x6969
	je	.label_539
	cmp	rax, 0x1021994
	je	.label_539
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_539
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	nop	dword ptr [rax]
.label_539:
	inc	rbp
	cmp	qword ptr [rsp + 0x40], rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_609
	jmp	.label_554
.label_584:
	mov	rax, qword ptr [rsp + 0x98]
	mov	eax, dword ptr [rax]
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x88]
	je	.label_555
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x48]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_555:
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_554
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_554
.label_594:
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x88]
.label_554:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_567
	mov	rcx, qword ptr [r13 + 8]
	mov	rax, qword ptr [r13 + 0x20]
	jmp	.label_575
.label_571:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_575:
	test	rcx, rcx
	je	.label_570
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_571
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_571
.label_570:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_567
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_586:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_565
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_565:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_583
	mov	rdx, qword ptr [rcx + 8]
.label_583:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_586
.label_567:
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_587
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_587:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_574
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_574
	cmp	dword ptr [rsp + 0x24], 1
	je	.label_597
	test	rbp, rbp
	jne	.label_574
.label_597:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_600
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_605
.label_600:
	mov	rdi, r13
	call	restore_initial_cwd
.label_605:
	test	eax, eax
	je	.label_574
	mov	word ptr [r12 + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	xor	ebx, ebx
	test	r15, r15
	je	.label_540
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_537:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_533
	call	closedir
.label_533:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_537
	jmp	.label_540
.label_574:
	test	rbp, rbp
	je	.label_542
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_543
	cmp	rbp, 2
	jb	.label_546
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_547
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	fts_sort
	mov	rbx, rax
	jmp	.label_540
.label_542:
	cmp	dword ptr [rsp + 0x24], 3
	jne	.label_551
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	je	.label_551
	movzx	eax, ax
	cmp	eax, 7
	je	.label_551
	mov	word ptr [r12 + 0x70], 6
.label_551:
	xor	ebx, ebx
	test	r15, r15
	je	.label_540
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_564:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_563
	call	closedir
.label_563:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_564
	jmp	.label_540
.label_543:
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r13
	mov	rsi, r15
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_540
.label_546:
	mov	rbx, r15
	jmp	.label_540
.label_547:
	mov	rbx, r15
	jmp	.label_540
.label_611:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_577
	nop	dword ptr [rax]
.label_582:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_579
	call	closedir
.label_579:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_582
.label_577:
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	jmp	.label_540
.label_550:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	jmp	.label_590
.label_557:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_590:
	mov	qword ptr [rsp + 8], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_602:
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	je	.label_603
	nop	dword ptr [rax]
.label_610:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_606
	call	closedir
.label_606:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_610
.label_603:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_540:
	mov	rax, rbx
	add	rsp, 0xa8
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
	#Procedure 0x407e40

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_613
	test	ah, 2
	jne	.label_617
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_614
.label_613:
	xor	eax, eax
	jmp	.label_614
.label_617:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_618
	mov	edi, eax
	call	close
.label_618:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	xor	eax, eax
.label_614:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_615
	nop	
.label_616:
	mov	edi, eax
	call	close
.label_615:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_619
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_616
	jmp	.label_615
.label_619:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_620
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_621
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_622
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_623
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_624
.label_620:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_622
	mov	qword ptr [r14], r14
.label_624:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_622
.label_621:
	xor	ebp, ebp
	jmp	.label_622
.label_623:
	xor	ebp, ebp
.label_622:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f60

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_625
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_625:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f90
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_639
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_634
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_631
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_634
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_634
.label_639:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_634
.label_631:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_626
	nop	dword ptr [rax]
.label_637:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_635
	call	closedir
.label_635:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_637
.label_626:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_638
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_638:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_630
	mov	rax, qword ptr [r15 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_630
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_630
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_636
	mov	edi, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_628
.label_630:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_634:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_636:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_628:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_640
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_629
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_633
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_634
.label_640:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_634
.label_629:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_642
	cmp	esi, -0x64
	jne	.label_627
.label_642:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_632
	mov	edi, eax
	call	close
.label_632:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_641
.label_633:
	mov	edi, r15d
	call	close
.label_641:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_634
.label_627:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408140

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408150

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_643
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_643:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_644
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_648
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_649
.label_648:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_646
	mov	rax, qword ptr [rax + 8]
	jmp	.label_644
.label_646:
	mov	r12b, 1
	mov	r14, rbp
.label_649:
	xor	eax, eax
	test	r15d, r15d
	js	.label_644
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_644
	test	r12b, r12b
	je	.label_645
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_645
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_647
	cmp	rax, rbp
	je	.label_645
	call	abort
.label_647:
	mov	rdi, rbp
	call	free
.label_645:
	mov	rax, qword ptr [rsp + 0x10]
.label_644:
	add	rsp, 0x88
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
	#Procedure 0x408280

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408290

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082a0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082d0

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
	je	.label_650
	cmp	r15, -2
	jb	.label_650
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_650
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_650:
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
	#Procedure 0x408330

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_652
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_651
	test	cl, cl
	jne	.label_651
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_651
.label_652:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_651
	call	__errno_location
	mov	dword ptr [rax], 0
.label_651:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408390

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_653
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_654
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_654
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_655
.label_654:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_656
	mov	al, 1
	test	rdx, rdx
	je	.label_655
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_656:
	xor	eax, eax
.label_655:
	ret	
.label_653:
	push	rax
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408410

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_657
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_657:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_660
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_659
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_658
.label_659:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_658:
	mov	edx, dword ptr [rax]
.label_660:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_662
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_663
	cmp	byte ptr [rax + 1], 0
	je	.label_661
.label_663:
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_662
.label_661:
	xor	ebx, ebx
.label_662:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408530
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408540
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408550
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408560
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_664
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_669
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_668
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_667:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_667
.label_668:
	add	rcx, 0x10
.label_669:
	test	rsi, rsi
	je	.label_664
	nop	word ptr cs:[rax + rax]
.label_672:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_665
	nop	
.label_670:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_670
	cmp	rsi, rax
	cmova	rax, rsi
.label_665:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_666
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_671:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_671
	cmp	rsi, rax
	cmova	rax, rsi
.label_666:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_672
.label_664:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408610
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_680
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_681
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_673
	mov	esi, 1
	mov	rax, rcx
.label_676:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_676
	jmp	.label_677
.label_681:
	xor	esi, esi
	jmp	.label_678
.label_673:
	xor	esi, esi
.label_677:
	add	rcx, 0x10
.label_678:
	test	r8, r8
	je	.label_680
	nop	dword ptr [rax]
.label_682:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_683
	nop	dword ptr [rax]
.label_674:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_674
	inc	rsi
.label_683:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_675
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_679:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_679
	inc	rsi
.label_675:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_682
.label_680:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_684
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_685
.label_684:
	xor	eax, eax
.label_685:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4086d0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdx
	jae	.label_686
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_696
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_691
	mov	rdi, rax
	nop	dword ptr [rax]
.label_697:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_697
.label_691:
	add	rax, 0x10
.label_696:
	test	rsi, rsi
	je	.label_686
	nop	word ptr cs:[rax + rax]
.label_692:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_687
	nop	
.label_689:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_689
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_687:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_688
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_690:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_690
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_688:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_692
.label_686:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_11
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_9
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_693]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_694]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_695]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408840

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_702
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_699
	add	rbx, rax
	je	.label_699
	cmp	rsi, r12
	je	.label_701
	xor	r15d, r15d
	nop	
.label_700:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_698
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_699
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_700
.label_701:
	mov	r15, r12
	jmp	.label_699
.label_698:
	mov	r15, qword ptr [rbx]
.label_699:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_702:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_703
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_706
	nop	word ptr cs:[rax + rax]
.label_705:
	add	rcx, 0x10
.label_706:
	cmp	rcx, rdx
	jae	.label_704
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_705
.label_703:
	ret	
.label_704:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408900
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_710
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_711:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_709
	test	rdx, rdx
	jne	.label_711
	jmp	.label_707
.label_709:
	test	rdx, rdx
	je	.label_707
	mov	rax, qword ptr [rdx]
	jmp	.label_708
.label_707:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_712:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_708
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_712
.label_708:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_710:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408990
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_713
	nop	dword ptr [rax + rax]
.label_715:
	add	r9, 0x10
.label_713:
	cmp	r9, r8
	jae	.label_714
	cmp	qword ptr [r9], 0
	je	.label_715
	test	r9, r9
	mov	r10, r9
	je	.label_715
	nop	word ptr [rax + rax]
.label_716:
	cmp	rax, rdx
	jae	.label_714
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_716
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_715
.label_714:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4089e0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_719:
	add	r13, 0x10
.label_717:
	cmp	r13, rax
	jae	.label_720
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_719
	test	r13, r13
	je	.label_719
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_720
	nop	word ptr cs:[rax + rax]
.label_721:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_718
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_721
	jmp	.label_720
	nop	dword ptr [rax]
.label_718:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_719
.label_720:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x408a80
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_722
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_723:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_723
.label_722:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ac0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_724]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ae0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_730
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_736
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_739]]
	jbe	.label_727
	movss	xmm1,  dword ptr [dword ptr [rip + label_728]]
	ucomiss	xmm1, xmm0
	jbe	.label_727
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_734]]
	jbe	.label_727
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_727
	addss	xmm1,  dword ptr [dword ptr [rip + label_739]]
	ucomiss	xmm0, xmm1
	jbe	.label_727
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_729]]
	ucomiss	xmm2, xmm0
	jb	.label_727
	ucomiss	xmm0, xmm1
	jbe	.label_727
.label_736:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_731
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_738
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_725
.label_738:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_725:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_732]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_733]]
	jae	.label_727
.label_731:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_735
	nop	
.label_740:
	add	rbx, 2
.label_735:
	cmp	rbx, -1
	je	.label_727
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_726
	nop	word ptr cs:[rax + rax]
.label_737:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_726
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_737
.label_726:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_740
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_727
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_727
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_727
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_730
.label_727:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_730:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d00

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_741
	nop	word ptr cs:[rax + rax]
.label_744:
	add	r14, 0x10
.label_741:
	cmp	r14, rax
	jae	.label_743
	cmp	qword ptr [r14], 0
	je	.label_744
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_745
	nop	word ptr cs:[rax + rax]
.label_747:
	test	cl, 1
	je	.label_746
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_746:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_747
.label_745:
	test	cl, cl
	je	.label_742
	mov	rdi, qword ptr [r14]
	call	rax
.label_742:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_744
.label_743:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408dd0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_751
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_751
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_756
	nop	
.label_748:
	add	r15, 0x10
.label_756:
	cmp	r15, rax
	jae	.label_751
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_748
	test	r15, r15
	je	.label_748
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_750
.label_754:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_750:
	test	rbx, rbx
	jne	.label_754
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_748
.label_751:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_755
	nop	
.label_752:
	add	r15, 0x10
.label_755:
	cmp	r15, rax
	jae	.label_758
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_752
	nop	word ptr cs:[rax + rax]
.label_753:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_753
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_752
.label_758:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_757
.label_749:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_749
.label_757:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ea0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_770
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_775
	cvtsi2ss	xmm0, rsi
	jmp	.label_761
.label_775:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_761:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_732]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_733]]
	jae	.label_764
.label_770:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_766
	nop	dword ptr [rax + rax]
.label_777:
	add	rbx, 2
.label_766:
	cmp	rbx, -1
	je	.label_764
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_759
	nop	word ptr cs:[rax + rax]
.label_774:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_759
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_774
.label_759:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_777
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_764
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_767
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_764
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_765
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_767
.label_765:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_776
	nop	
.label_768:
	add	r12, 0x10
.label_776:
	cmp	r12, r15
	jae	.label_762
	cmp	qword ptr [r12], 0
	je	.label_768
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_771
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_769:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_763
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_772
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_773
	nop	word ptr [rax + rax]
.label_772:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_773:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_769
.label_771:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_768
.label_762:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_760
	mov	rdi, qword ptr [rsp]
	call	free
.label_764:
	xor	ebp, ebp
.label_767:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_763:
	call	abort
.label_760:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409130

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_788
	nop	word ptr cs:[rax + rax]
.label_786:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_784
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_787
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_789:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_780
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_782
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_791
	nop	dword ptr [rax]
.label_782:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_791:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_789
	mov	r13, qword ptr [r14]
.label_787:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_784
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_778
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_781
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_783
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_785
.label_781:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_790
.label_783:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_779
.label_785:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_790:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_784:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_786
	mov	al, 1
.label_788:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_779:
	xor	eax, eax
	jmp	.label_788
.label_780:
	call	abort
.label_778:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092a0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_808
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_808
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_795
	cmp	rsi, r14
	je	.label_818
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_821
	mov	rax, qword ptr [r12]
	jmp	.label_811
.label_818:
	mov	rax, r14
	jmp	.label_792
.label_821:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_795
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_806:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_799
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_803
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_806
	jmp	.label_795
.label_799:
	mov	rax, r14
	jmp	.label_811
.label_803:
	mov	rax, qword ptr [rbp]
.label_811:
	test	rax, rax
	je	.label_795
.label_792:
	xor	ebp, ebp
	test	r15, r15
	je	.label_815
	mov	qword ptr [r15], rax
	jmp	.label_815
.label_795:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_817
	cvtsi2ss	xmm1, rax
	jmp	.label_822
.label_817:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_822:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_816
	cvtsi2ss	xmm0, rcx
	jmp	.label_801
.label_816:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_801:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_797
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_804
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_739]]
	jbe	.label_793
	movss	xmm3,  dword ptr [dword ptr [rip + label_728]]
	ucomiss	xmm3, xmm2
	jbe	.label_793
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_734]]
	jbe	.label_793
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_793
	addss	xmm3,  dword ptr [dword ptr [rip + label_739]]
	ucomiss	xmm2, xmm3
	jbe	.label_793
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_729]]
	ucomiss	xmm5, xmm4
	jb	.label_793
	ucomiss	xmm4, xmm3
	ja	.label_800
.label_793:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_802]]
	jmp	.label_800
.label_804:
	mov	eax, OFFSET FLAT:default_tuning
.label_800:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_797
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_810
	mulss	xmm0, xmm2
.label_810:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_733]]
	jae	.label_815
	movss	xmm1,  dword ptr [dword ptr [rip + label_732]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_815
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_808
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_797
	cmp	rsi, r14
	mov	rax, r14
	je	.label_794
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_819
	mov	rax, qword ptr [r12]
	jmp	.label_794
.label_819:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_797
	lea	rbp, [r15 + rbp + 8]
.label_820:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_798
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_796
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_820
	jmp	.label_797
.label_798:
	mov	rax, r14
	jmp	.label_794
.label_796:
	mov	rax, qword ptr [rbp]
.label_794:
	test	rax, rax
	jne	.label_805
.label_797:
	cmp	qword ptr [r12], 0
	je	.label_807
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_809
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_812
.label_807:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_813]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_814
.label_809:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_815
.label_812:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_814:
	mov	ebp, 1
.label_815:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_808:
	call	abort
.label_805:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095c0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_823
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_823:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4095f0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_825
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_829
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_834
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_837
	mov	r14, qword ptr [r13]
.label_834:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_842
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_835
.label_837:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_829
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_831:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_827
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_830
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_831
	jmp	.label_829
.label_842:
	mov	qword ptr [r13], 0
	jmp	.label_835
.label_827:
	mov	rcx, rax
	jmp	.label_839
.label_830:
	mov	r14, qword ptr [rcx]
.label_839:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_835:
	xor	r12d, r12d
	test	r14, r14
	je	.label_829
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_832
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_826
	cvtsi2ss	xmm1, rax
	jmp	.label_828
.label_826:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_828:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_833
	cvtsi2ss	xmm0, rcx
	jmp	.label_838
.label_833:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_838:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_832
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_843
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_739]]
	jbe	.label_824
	movss	xmm4,  dword ptr [dword ptr [rip + label_728]]
	ucomiss	xmm4, xmm3
	jbe	.label_824
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_824
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_734]]
	jbe	.label_824
	movss	xmm4,  dword ptr [dword ptr [rip + label_739]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_824
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_729]]
	ucomiss	xmm5, xmm3
	jb	.label_824
	ucomiss	xmm3, xmm4
	ja	.label_840
.label_824:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_840
.label_843:
	mov	eax, OFFSET FLAT:default_tuning
.label_840:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_832
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_844
	mulss	xmm0, dword ptr [rax + 8]
.label_844:
	movss	xmm1,  dword ptr [dword ptr [rip + label_732]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_832
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_836
	nop	
.label_841:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_841
.label_836:
	mov	qword ptr [r15 + 0x48], 0
.label_832:
	mov	r12, r14
.label_829:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_825:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409880

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098b0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098c0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_845
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_845:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409900

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_846
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_847
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_847:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_846:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409930

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_10
	cmp	byte ptr [rcx], 0
	je	.label_848
	mov	rax, rcx
.label_848:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409960

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_849
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_849:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_851
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_850
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_852
.label_850:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_852:
	mov	ecx, dword ptr [rax]
.label_851:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409a40

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_854
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_853
	mov	dword ptr [r14], ebp
	jmp	.label_854
.label_853:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_854:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409a90

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_855
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_856
.label_855:
	mov	eax, ebx
.label_856:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_857
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_859
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_857
.label_859:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_857
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_858
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_858:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_857:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409b60

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_876
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_876:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_860
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_877
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_870
	test	esi, esi
	jne	.label_860
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_861
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_864
.label_860:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_866
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_870
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_872
.label_877:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_869
.label_870:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_875
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_863
.label_875:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_863:
	mov	edx, dword ptr [rax]
.label_865:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_869:
	mov	ebp, eax
.label_862:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_872:
	cmp	eax, 6
	jne	.label_866
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_867
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_871
.label_866:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_874
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_878
.label_861:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_864:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_865
.label_867:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_871:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_868
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_873
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_873
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_862
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_880
.label_873:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_862
.label_874:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_878:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_869
.label_868:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_880:
	test	al, al
	je	.label_862
	test	ebp, ebp
	js	.label_862
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_879
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_862
.label_879:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_862
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_881
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_881
	test	byte ptr [rbx + 1], 1
	je	.label_881
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_881:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409e80

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
	jne	.label_882
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_882
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_883
.label_882:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_883:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_884
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_884:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409ef0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x409f10

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]