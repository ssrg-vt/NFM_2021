	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_21:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	#Procedure 0x401d20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_23
	nop	
.label_36:
	mov	edi, OFFSET FLAT:label_27
	call	strcmp
	test	eax, eax
	je	.label_33
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_36
.label_33:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_27
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_24
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_27
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
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
	#Procedure 0x401e40

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
	mov	esi, OFFSET FLAT:label_31
	call	setlocale
	mov	edi, OFFSET FLAT:label_59
	mov	esi, OFFSET FLAT:label_60
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_59
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x10]
	call	chopt_init
	mov	r13d, 0xffffffff
	mov	ecx, 0x10
	xor	r12d, r12d
	jmp	.label_38
.label_930:
	mov	dword ptr [rsp + 0x10], 0
	mov	ecx, r14d
	nop	word ptr cs:[rax + rax]
.label_38:
	mov	r14d, ecx
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_54
	add	eax, -0x48
	cmp	eax, 0x3b
	ja	.label_50
	mov	ecx, 0x11
	jmp	qword ptr [word ptr [+ (rax * 8) + label_61]]
.label_924:
	mov	ecx, 2
	jmp	.label_38
.label_925:
	mov	ecx, 0x10
	jmp	.label_38
.label_926:
	mov	byte ptr [rsp + 0x14], 1
	mov	ecx, r14d
	jmp	.label_38
.label_927:
	mov	dword ptr [rsp + 0x10], 1
	mov	ecx, r14d
	jmp	.label_38
.label_928:
	mov	byte ptr [rsp + 0x21], 1
	mov	ecx, r14d
	jmp	.label_38
.label_929:
	xor	r13d, r13d
	mov	ecx, r14d
	jmp	.label_38
.label_931:
	mov	r13d, 1
	mov	ecx, r14d
	jmp	.label_38
.label_932:
	xor	r12d, r12d
	mov	ecx, r14d
	jmp	.label_38
.label_933:
	mov	r12b, 1
	mov	ecx, r14d
	jmp	.label_38
.label_934:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	mov	ecx, r14d
	jmp	.label_38
.label_54:
	cmp	eax, -1
	jne	.label_57
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x14], 0
	je	.label_45
	cmp	r14d, 0x10
	jne	.label_63
	cmp	r13d, 1
	mov	r13d, 0
	jne	.label_45
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_63:
	mov	r15d, r14d
.label_45:
	test	r13d, r13d
	setne	byte ptr [rsp + 0x20]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	edx, ebp
	sub	edx, eax
	mov	rcx,  qword ptr [word ptr [rip + reference_file]]
	cmp	rcx, 1
	mov	esi, 1
	adc	esi, 0
	cmp	edx, esi
	jl	.label_48
	test	rcx, rcx
	je	.label_56
	mov	rdi,  qword ptr [word ptr [rip + reference_file]]
	lea	rsi, [rsp + 0x38]
	call	stat
	test	eax, eax
	jne	.label_46
	mov	ebp, dword ptr [rsp + 0x58]
	mov	edi, ebp
	call	gid_to_name
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_55
.label_56:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, qword ptr [rbx + rax*8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0
	je	.label_43
	mov	rdi, rbp
	call	xstrdup
.label_43:
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	call	parse_group
	mov	ebp, eax
.label_55:
	test	r12b, r12b
	je	.label_47
	mov	al, byte ptr [rsp + 0x14]
	test	al, al
	je	.label_47
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_42
.label_47:
	or	r15d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rbx + rax*8]
	lea	rax, [rsp + 0x10]
	mov	qword ptr [rsp], rax
	mov	edx, 0xffffffff
	mov	r8d, 0xffffffff
	mov	r9d, 0xffffffff
	mov	esi, r15d
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
.label_57:
	cmp	eax, 0xffffff7d
	je	.label_51
	cmp	eax, 0xffffff7e
	jne	.label_50
	xor	edi, edi
	call	usage
.label_51:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_27
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_52
	mov	r9d, OFFSET FLAT:label_53
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_50:
	mov	edi, 1
	call	usage
.label_48:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_40
	mov	esi, OFFSET FLAT:label_44
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
.label_46:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_58
.label_42:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_62
.label_58:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_40:
	mov	esi, OFFSET FLAT:label_49
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl parse_group
	.type parse_group, @function
parse_group:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	ebx, 0xffffffff
	cmp	byte ptr [r14], 0
	je	.label_67
	mov	rdi, r14
	call	getgrnam
	test	rax, rax
	je	.label_64
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_68
.label_64:
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_31
	mov	rdi, r14
	call	xstrtoul
	test	eax, eax
	jne	.label_66
	mov	rbx, qword ptr [rsp]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_66
.label_68:
	call	endgrent
.label_67:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
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
	#Procedure 0x402280

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
	#Procedure 0x4022b0
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
	#Procedure 0x4022d0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_70
	mov	rdi, qword ptr [rax]
	jmp	.label_69
.label_70:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_69:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402300

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_72
	mov	rdi, qword ptr [rax]
	jmp	.label_71
.label_72:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_71:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402330

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	ebp, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	eax, esi
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, r15d
	and	ecx, ebp
	xor	esi, esi
	cmp	ecx, -1
	jne	.label_77
	cmp	byte ptr [rdx + 0x10], 0
	jne	.label_77
	xor	esi, esi
	cmp	dword ptr [rdx], 2
	sete	sil
	shl	esi, 3
.label_77:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_73
	mov	bl, 1
	nop	dword ptr [rax]
.label_80:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	rsi, rax
	mov	edx, r13d
	mov	ecx, r12d
	mov	r8d, ebp
	mov	r9d, r15d
	call	change_file_owner
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
	test	rax, rax
	jne	.label_80
.label_73:
	mov	r15, qword ptr [rsp + 0x40]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_75
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_78
	xor	ebx, ebx
	jmp	.label_75
.label_78:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_75:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_74
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_74:
	mov	eax, ebx
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
	#Procedure 0x402450

	.globl change_file_owner
	.type change_file_owner, @function
change_file_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r13d, r9d
	mov	r12d, r8d
	mov	ebx, ecx
	mov	ebp, edx
	mov	r14, rsi
	mov	r8, rdi
	mov	rsi, qword ptr [rsp + 0x100]
	mov	r9, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x18], rax
	movzx	eax, word ptr [r14 + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_102
	jmp	qword ptr [word ptr [+ (rax * 8) + label_118]]
.label_859:
	cmp	byte ptr [rsi + 4], 0
	je	.label_102
	mov	rax, qword ptr [rsi + 8]
	mov	r15b, 1
	test	rax, rax
	je	.label_93
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_93
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_93
	mov	rbp, r8
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbx], 0x2f
	jne	.label_125
	cmp	byte ptr [rbx + 1], 0
	je	.label_105
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rbp
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_62
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	mov	rbp, r12
	mov	r8, rbx
	call	error
.label_129:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, rbp
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, rbp
	call	rpl_fts_read
	jmp	.label_93
.label_860:
	mov	rdi, r8
	mov	rsi, r14
	mov	r15, r8
	mov	dword ptr [rsp + 0x10], r12d
	mov	r12d, r13d
	mov	r13, r14
	mov	r14, r9
	call	cycle_warning_required
	mov	r9, r14
	mov	r14, r13
	mov	r13d, r12d
	mov	r12d, dword ptr [rsp + 0x10]
	mov	r8, r15
	mov	rsi, qword ptr [rsp + 0x100]
	test	al, al
	je	.label_102
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_93
.label_861:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_104
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	jmp	.label_86
.label_862:
	mov	r15b, 1
	cmp	byte ptr [rsi + 4], 0
	je	.label_93
.label_102:
	mov	eax, r13d
	and	eax, r12d
	cmp	eax, -1
	jne	.label_97
	cmp	dword ptr [rsi], 2
	jne	.label_97
	cmp	qword ptr [rsi + 8], 0
	jne	.label_97
	cmp	byte ptr [rsi + 0x10], 0
	je	.label_100
.label_97:
	lea	rdx, [r14 + 0x78]
	cmp	byte ptr [rsi + 0x10], 0
	je	.label_103
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x90]
	cmp	eax, 0xa000
	jne	.label_103
	mov	edi, dword ptr [r8 + 0x2c]
	lea	r15, [rsp + 0x38]
	xor	ecx, ecx
	mov	rsi, r9
	mov	rdx, r15
	mov	dword ptr [rsp + 0x10], ebx
	mov	dword ptr [rsp + 0x14], ebp
	mov	rbx, r8
	mov	rbp, r9
	call	fstatat
	mov	r9, rbp
	mov	r8, rbx
	mov	rdx, r15
	mov	ebp, dword ptr [rsp + 0x14]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x100]
	test	eax, eax
	je	.label_103
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	lea	rdx, [rsp + 0x38]
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_83
	mov	r15, rdx
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rdx, r15
	mov	ebp, dword ptr [rsp + 0x14]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x100]
	jmp	.label_104
.label_103:
	cmp	r12d, -1
	je	.label_95
	mov	ecx, dword ptr [rdx + 0x1c]
	cmp	ecx, r12d
	sete	al
	cmp	r13d, -1
	je	.label_87
	cmp	ecx, r12d
	je	.label_99
	jmp	.label_87
.label_863:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_104
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	r15, rsi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	esi, r13d
	call	error
	xor	edx, edx
	mov	rsi, r15
	jmp	.label_83
.label_864:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_120
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_128
.label_120:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_104
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
.label_86:
	mov	edx, 5
	mov	r15d, ebp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	xor	edx, edx
	mov	ebp, r15d
	mov	rsi, qword ptr [rsp + 0x100]
.label_83:
	xor	r13d, r13d
.label_104:
	xor	r15d, r15d
	jmp	.label_82
.label_95:
	mov	al, 1
	cmp	r13d, -1
	je	.label_87
.label_99:
	cmp	dword ptr [rdx + 0x20], r13d
	sete	al
.label_87:
	movzx	ecx, word ptr [r14 + 0x70]
	cmp	ecx, 6
	ja	.label_94
	mov	edi, 0x56
	bt	edi, ecx
	jae	.label_94
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.label_94
	mov	rdi, qword ptr [rdx + 8]
	cmp	rdi, qword ptr [rcx]
	jne	.label_94
	mov	rdi, qword ptr [rdx]
	cmp	rdi, qword ptr [rcx + 8]
	jne	.label_94
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_108
	cmp	byte ptr [rbp + 1], 0
	je	.label_111
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_62
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_107:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_93
.label_94:
	test	al, al
	mov	qword ptr [rsp + 0x20], r8
	je	.label_127
	mov	edi, dword ptr [r8 + 0x2c]
	cmp	byte ptr [rsi + 0x10], 0
	mov	dword ptr [rsp + 0x14], ebp
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_81
	mov	dword ptr [rsp], r13d
	mov	qword ptr [rsp + 0x30], r9
	mov	rsi, r9
	mov	ecx, ebp
	mov	dword ptr [rsp + 0x10], ebx
	mov	r8d, ebx
	mov	r9d, r12d
	call	restricted_chown
	add	eax, -2
	cmp	eax, 4
	ja	.label_101
	mov	r12b, 1
	xor	r15d, r15d
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_89]]
.label_866:
	mov	r12b, 1
	mov	r13b, 1
	jmp	.label_106
.label_127:
	mov	r12b, 1
	xor	r13d, r13d
.label_106:
	mov	r15b, 1
.label_82:
	cmp	dword ptr [rsi], 2
	je	.label_121
	mov	eax, r15d
	and	al, 1
	test	r13b, r13b
	je	.label_114
	mov	ecx, r12d
	and	cl, r15b
	je	.label_114
	cmp	ebp, -1
	je	.label_117
	cmp	dword ptr [rdx + 0x1c], ebp
	jne	.label_119
.label_117:
	cmp	ebx, -1
	je	.label_114
	cmp	dword ptr [rdx + 0x20], ebx
	jne	.label_119
.label_114:
	cmp	dword ptr [rsi], 0
	jne	.label_121
	test	al, al
	movzx	eax, r12b
	lea	eax, [rax + rax*2 + 1]
	mov	ebp, 3
	cmovne	ebp, eax
	xor	r12d, r12d
	test	rdx, rdx
	mov	ebx, 0
	jne	.label_84
	jmp	.label_124
.label_119:
	movzx	ecx, r12b
	inc	ecx
	test	al, al
	mov	ebp, 3
	cmovne	ebp, ecx
.label_84:
	mov	edi, dword ptr [rdx + 0x1c]
	mov	r13, rsi
	mov	rbx, rdx
	call	uid_to_name
	mov	r12, rax
	mov	edi, dword ptr [rbx + 0x20]
	call	gid_to_name
	mov	rsi, r13
	mov	rbx, rax
.label_124:
	mov	r8, qword ptr [rsi + 0x18]
	mov	r9, qword ptr [rsi + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r13, rsi
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, rbx
	call	describe_change
	mov	rdi, r12
	call	free
	mov	rdi, rbx
	call	free
	mov	rsi, r13
.label_121:
	cmp	byte ptr [rsi + 4], 0
	jne	.label_96
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	call	rpl_fts_set
.label_96:
	and	r15b, 1
.label_93:
	mov	eax, r15d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	mov	rsi, r9
	mov	edx, ebp
	mov	ebp, ebx
	mov	ecx, ebx
	call	lchownat
	test	eax, eax
	sete	r15b
	mov	r12b, 1
	je	.label_110
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r12b
	mov	al, 1
	je	.label_113
	mov	eax, r15d
.label_113:
	mov	r15b, al
.label_110:
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_116
.label_128:
	mov	qword ptr [r14 + 0x20], 1
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, r14
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_93
.label_867:
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	edx, ebp
	mov	ecx, ebx
	call	chownat
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x100]
	test	eax, eax
	sete	r15b
	mov	r12b, 1
.label_116:
	mov	r13b, 1
	test	r15b, 1
	jne	.label_82
.label_868:
	mov	r13b, 1
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_82
	mov	dword ptr [rsp + 0x10], ebx
	mov	ebx, ebp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	cmp	ebx, -1
	je	.label_88
	mov	esi, OFFSET FLAT:label_91
	jmp	.label_92
.label_100:
	lea	rdx, [r14 + 0x78]
	mov	al, 1
	jmp	.label_87
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_107
.label_88:
	mov	esi, OFFSET FLAT:label_109
.label_92:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_82
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_129
.label_101:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl restricted_chown
	.type restricted_chown, @function
restricted_chown:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13d, r9d
	mov	rbp, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	eax, dword ptr [rsp + 0xd0]
	and	eax, r13d
	mov	ebx, 5
	cmp	eax, -1
	je	.label_130
	movzx	eax, word ptr [rbp + 0x18]
	and	eax, 0xf000
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_136
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_130
	mov	r12d, 0x10900
.label_136:
	mov	dword ptr [rsp], ecx
	mov	dword ptr [rsp + 4], r8d
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_137
	call	__errno_location
	mov	rcx, rax
	cmp	dword ptr [rcx], 0xd
	jne	.label_132
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x8000
	jne	.label_132
	or	r12d, 1
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	mov	rbx, rcx
	call	openat
	mov	rcx, rbx
	test	eax, eax
	js	.label_132
.label_137:
	lea	rsi, [rsp + 8]
	mov	r15d, eax
	mov	edi, eax
	call	fstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_133
	mov	rax, qword ptr [rbp + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_133
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_133
	cmp	r13d, -1
	je	.label_135
	mov	ebx, 2
	cmp	dword ptr [rsp + 0x24], r13d
	jne	.label_133
.label_135:
	cmp	dword ptr [rsp + 0xd0], -1
	je	.label_131
	mov	ebx, 2
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	dword ptr [rsp + 0x28], eax
	jne	.label_133
.label_131:
	mov	edi, r15d
	mov	esi, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 4]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_134
.label_133:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r15d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_130
.label_132:
	xor	ebx, ebx
	cmp	dword ptr [rcx], 0xd
	setne	bl
	add	ebx, 5
.label_130:
	mov	eax, ebx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_134:
	mov	edi, r15d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_130
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90

	.globl describe_change
	.type describe_change, @function
describe_change:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	r14, r8
	mov	rbx, rcx
	mov	rbp, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 1
	jne	.label_145
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_145:
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r14
	mov	rsi, r13
	call	user_group_str
	mov	qword ptr [rsp + 8], rax
	test	r14, r14
	cmove	rbp, r14
	test	r13, r13
	cmove	rbx, r13
	mov	rdi, rbp
	mov	rsi, rbx
	call	user_group_str
	mov	r12, rax
	cmp	r15d, 4
	je	.label_159
	cmp	r15d, 3
	je	.label_161
	cmp	r15d, 2
	jne	.label_164
	test	r14, r14
	je	.label_138
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	jmp	.label_141
.label_159:
	xor	edi, edi
	test	r14, r14
	je	.label_144
	mov	esi, OFFSET FLAT:label_151
	jmp	.label_141
.label_161:
	test	r12, r12
	je	.label_154
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_156
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	jmp	.label_150
.label_138:
	test	r13, r13
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_162
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	jmp	.label_150
.label_144:
	test	r13, r13
	je	.label_142
	mov	esi, OFFSET FLAT:label_143
	jmp	.label_141
.label_154:
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	jmp	.label_147
.label_156:
	xor	edi, edi
	test	r13, r13
	je	.label_158
	mov	esi, OFFSET FLAT:label_149
	jmp	.label_150
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	jmp	.label_150
.label_142:
	mov	esi, OFFSET FLAT:label_165
.label_141:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_139
.label_148:
	xor	edi, edi
	test	r13, r13
	je	.label_153
	mov	esi, OFFSET FLAT:label_146
	jmp	.label_147
.label_158:
	mov	esi, OFFSET FLAT:label_152
.label_150:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_139
.label_153:
	mov	esi, OFFSET FLAT:label_152
.label_147:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	call	free
	mov	r12, rbp
	xor	ebp, ebp
.label_139:
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbp
	call	__printf_chk
	mov	rdi, r12
	call	free
	mov	rdi, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_164:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_167
	test	r14, r14
	je	.label_168
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
	jmp	.label_169
.label_167:
	xor	r15d, r15d
	test	r14, r14
	je	.label_169
	mov	rdi, r14
	jmp	.label_170
.label_169:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_168:
	mov	rdi, rbx
.label_170:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403000
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_173
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_171
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_171
.label_173:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_174
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_171:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_172
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_174:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_172:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_175
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl chownat
	.type chownat, @function
chownat:
	xor	r8d, r8d
	jmp	fchownat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0

	.globl lchownat
	.type lchownat, @function
lchownat:
	mov	r8d, 0x100
	jmp	fchownat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_177:
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
	ja	.label_177
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_181
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_180
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_180
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_179
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_179:
	mov	rbx, r14
.label_180:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_181:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_182
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200
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
	#Procedure 0x403240
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
	#Procedure 0x403250
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
	#Procedure 0x403260

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x4032a0
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
	#Procedure 0x4032c0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_184
	test	rdx, rdx
	je	.label_184
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_184:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x403370

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_186:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_230
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_198]]
.label_877:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_204
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_211
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_878:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_223
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_223
	xor	r14d, r14d
.label_237:
	cmp	r14, r11
	jae	.label_233
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_233:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_237
.label_223:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_242
.label_870:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_242
.label_873:
	mov	al, 1
.label_871:
	mov	r12b, 1
.label_874:
	test	r12b, 1
	mov	cl, 1
	je	.label_253
	mov	ecx, eax
.label_253:
	mov	al, cl
.label_872:
	test	r12b, 1
	jne	.label_256
	test	r11, r11
	je	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_258:
	mov	r14d, 1
	jmp	.label_262
.label_256:
	xor	r14d, r14d
.label_262:
	mov	ecx, OFFSET FLAT:label_211
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_242
.label_875:
	test	r12b, 1
	jne	.label_269
	test	r11, r11
	je	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_192:
	mov	r14d, 1
	jmp	.label_272
.label_876:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_275
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_242
.label_269:
	xor	r14d, r14d
.label_272:
	mov	eax, OFFSET FLAT:label_275
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_242:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_255
	nop	dword ptr [rax]
.label_222:
	inc	rsi
.label_255:
	cmp	rbp, -1
	je	.label_210
	cmp	rsi, rbp
	jne	.label_196
	jmp	.label_216
	nop	word ptr cs:[rax + rax]
.label_210:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_216
.label_196:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_227
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_252
	cmp	rbp, -1
	jne	.label_252
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_252:
	cmp	rbx, rbp
	jbe	.label_241
.label_227:
	xor	r8d, r8d
.label_263:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_243
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_247]]
.label_886:
	test	rsi, rsi
	jne	.label_239
	jmp	.label_249
	nop	
.label_241:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_260
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_263
	jmp	.label_203
.label_260:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_263
.label_890:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_277
	test	rsi, rsi
	jne	.label_279
	cmp	rbp, 1
	je	.label_249
	xor	r13d, r13d
	jmp	.label_217
.label_879:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_284
	cmp	byte ptr [rsp + 7], 0
	jne	.label_189
	cmp	r12d, 2
	jne	.label_229
	mov	eax, r9d
	and	al, 1
	jne	.label_229
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_286:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_289
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_295
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	add	r14, 3
	mov	r9b, 1
.label_229:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_187:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_188
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_188
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_188
	cmp	r14, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_205:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_290
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_290:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_217
.label_880:
	mov	bl, 0x62
	jmp	.label_221
.label_881:
	mov	cl, 0x74
	jmp	.label_225
.label_882:
	mov	bl, 0x76
	jmp	.label_221
.label_883:
	mov	bl, 0x66
	jmp	.label_221
.label_884:
	mov	cl, 0x72
	jmp	.label_225
.label_887:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_232
	cmp	byte ptr [rsp + 7], 0
	jne	.label_189
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_238
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_238:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_248
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_248:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	add	r14, 3
	xor	r9d, r9d
.label_232:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_217
.label_888:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_259
	cmp	r12d, 2
	jne	.label_239
	cmp	byte ptr [rsp + 7], 0
	je	.label_239
	jmp	.label_189
.label_889:
	cmp	r12d, 2
	jne	.label_267
	cmp	byte ptr [rsp + 7], 0
	jne	.label_189
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_215
.label_243:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_219
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_200:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_285
	test	r8b, r8b
	je	.label_285
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_217
.label_277:
	test	rsi, rsi
	jne	.label_185
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_185
.label_249:
	mov	dl, 1
.label_885:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_189
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_217:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_199
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_201
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_199:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_206
.label_201:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_212
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_215
	jmp	.label_231
	nop	dword ptr [rax]
.label_206:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_231
	jmp	.label_215
.label_212:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_231
.label_284:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_222
	xor	r15d, r15d
	jmp	.label_239
.label_267:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_225
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_215
.label_225:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_189
.label_221:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_217
	nop	word ptr cs:[rax + rax]
.label_231:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_189
	cmp	r12d, 2
	jne	.label_218
	mov	eax, r9d
	and	al, 1
	jne	.label_218
	cmp	r14, r11
	jae	.label_257
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_257:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_207:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_265
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_265:
	add	r14, 3
	mov	r9b, 1
.label_218:
	cmp	r14, r11
	jae	.label_268
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_268:
	inc	r14
	jmp	.label_208
.label_219:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_274
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_274:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_240:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_288
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_292
	cmp	rbp, -2
	je	.label_296
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_298
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_191:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_278
	bt	rsi, rdx
	jb	.label_203
.label_278:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_191
.label_298:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_214
	xor	r13d, r13d
.label_214:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_240
	jmp	.label_200
.label_188:
	xor	r13d, r13d
	jmp	.label_217
.label_185:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_217
.label_259:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_239
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_239
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_239
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_244
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_266
	cmp	byte ptr [rsp + 7], 0
	jne	.label_189
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_251:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_226
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_261
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_261:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_264
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_264:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_217
.label_239:
	xor	eax, eax
.label_279:
	xor	r13d, r13d
	jmp	.label_217
.label_285:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
.label_236:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_271:
	test	r8b, r8b
	je	.label_280
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_281
	cmp	r14, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_282:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_281
	nop	dword ptr [rax]
.label_280:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_203
	cmp	r12d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, r11
	jae	.label_291
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_291:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_294
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_299
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_299:
	add	r14, 3
	mov	r9b, 1
.label_287:
	cmp	r14, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_220:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_202
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_202:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_281:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_215
	test	r9b, 1
	je	.label_224
	mov	ebx, eax
	and	bl, 1
	jne	.label_224
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_228
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_228:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_209:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_224:
	cmp	r14, r11
	jae	.label_236
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_236
	nop	word ptr cs:[rax + rax]
.label_215:
	test	r9b, 1
	je	.label_245
	and	al, 1
	jne	.label_245
	cmp	r14, r11
	jae	.label_246
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_276
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	add	r14, 2
	xor	r9d, r9d
.label_245:
	mov	ebx, r15d
.label_208:
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_193:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_222
.label_292:
	xor	r13d, r13d
.label_288:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_200
.label_296:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_270
	mov	rsi, qword ptr [rsp + 0x50]
.label_195:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_293
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_195
	xor	r13d, r13d
	jmp	.label_200
.label_270:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_200
.label_293:
	xor	r13d, r13d
	jmp	.label_200
.label_244:
	xor	r13d, r13d
	jmp	.label_217
.label_266:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_217
	nop	dword ptr [rax + rax]
.label_216:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_283
	or	dl, al
	je	.label_203
.label_283:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_235
	or	dl, al
	jne	.label_235
	test	r10b, 1
	jne	.label_297
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_235
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_186
.label_235:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_190
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_197
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_197
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_213:
	cmp	r14, r11
	jae	.label_273
	mov	byte ptr [rcx + r14], al
.label_273:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_213
	jmp	.label_197
.label_189:
	mov	qword ptr [rsp + 0x20], rbp
.label_203:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_254:
	mov	r14, rax
.label_234:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_297:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_254
.label_190:
	mov	rcx, qword ptr [rsp + 8]
.label_197:
	cmp	r14, r11
	jae	.label_234
	mov	byte ptr [rcx + r14], 0
	jmp	.label_234
.label_230:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404130
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
	#Procedure 0x404140

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_300
	mov	qword ptr [rax], rbx
.label_300:
	mov	rax, r14
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
	#Procedure 0x404230
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_301
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_303:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_303
.label_301:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_304
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_305]], OFFSET FLAT:slot0
.label_304:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_302
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_302:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4042e0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_306
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_309
	cmp	r12d, 0x7fffffff
	je	.label_311
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_307
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_307:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_309:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_312
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_308
.label_312:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_310
	mov	rdi, r14
	call	free
.label_310:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_308:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_306:
	call	abort
.label_311:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0
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
	#Procedure 0x4044c0
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
	#Procedure 0x4044d0

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
	#Procedure 0x404510

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
	je	.label_313
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
.label_313:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570

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
	#Procedure 0x4045b0

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
	#Procedure 0x4045d0
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
	#Procedure 0x4045f0

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
	mov	rcx,  qword ptr [word ptr [rip + label_314]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_315]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_316]]
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
	#Procedure 0x404660

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
	#Procedure 0x404670

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

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
	#Procedure 0x4046e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

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
	mov	rax,  qword ptr [word ptr [rip + label_314]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_315]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_316]]
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
	#Procedure 0x404760
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
	#Procedure 0x404780
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
	#Procedure 0x4047a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0
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
	#Procedure 0x4047c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

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
	#Procedure 0x4047e0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_322
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_321
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_323
	mov	eax, OFFSET FLAT:label_324
	jmp	.label_319
.label_321:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_320
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_317
	mov	eax, OFFSET FLAT:label_318
	jmp	.label_319
.label_320:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_275
	mov	eax, OFFSET FLAT:label_211
.label_319:
	cmove	rax, rcx
.label_322:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048a0

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
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_327
	jmp	.label_326
.label_325:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_326
.label_327:
	mov	eax, 1
	test	bpl, bpl
	je	.label_326
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
.label_326:
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
	#Procedure 0x404920

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
	je	.label_330
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_329
.label_330:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_329
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_329
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
.label_329:
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
	#Procedure 0x4049b0

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
	je	.label_331
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_333
	jmp	.label_332
.label_331:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_332
.label_333:
	mov	eax, 1
	test	bpl, bpl
	je	.label_332
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
.label_332:
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
	#Procedure 0x404a30

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
	je	.label_336
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_335
	jmp	.label_334
.label_336:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_334
.label_335:
	mov	eax, 1
	test	bpl, bpl
	je	.label_334
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
.label_334:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0

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
	je	.label_339
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_337
	jmp	.label_338
.label_339:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_338
.label_337:
	mov	eax, 1
	test	bpl, bpl
	je	.label_338
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_338:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b00

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
	je	.label_340
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_342
	jmp	.label_341
.label_340:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_341
.label_342:
	mov	eax, 1
	test	bpl, bpl
	je	.label_341
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_341:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b50

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
	je	.label_345
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_344
	jmp	.label_343
.label_345:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_343
.label_344:
	mov	eax, 1
	test	bpl, bpl
	je	.label_343
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_343:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_348
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_347
	jmp	.label_346
.label_348:
	mov	eax, 1
	test	cl, cl
	je	.label_346
.label_347:
	xor	eax, eax
.label_346:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_62
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_349
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_349:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_360
	mov	edx, OFFSET FLAT:label_365
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_352
.label_360:
	mov	edx, OFFSET FLAT:label_354
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_361
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_362]]
.label_988:
	add	rsp, 8
	jmp	.label_353
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_353
.label_989:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_990:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_991:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_992:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_353
.label_993:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_353
.label_994:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_353
.label_995:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_353
.label_997:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_353
.label_996:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_353:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_369:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_369
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_371:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_370
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_372
	nop	dword ptr [rax]
.label_370:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_372:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_373
	inc	r9
	cmp	r9, 0xa
	jb	.label_371
.label_373:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405000

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_374
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_374:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_376
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_379
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_379:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_380
	test	rax, rax
	je	.label_381
.label_380:
	pop	rbx
	ret	
.label_381:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_382
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_382:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_383
	test	rbx, rbx
	jne	.label_383
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_383:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_385
	test	rax, rax
	je	.label_384
.label_385:
	pop	rbx
	ret	
.label_384:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4051c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_386
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_389
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_387
.label_386:
	test	rcx, rcx
	jne	.label_390
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_390:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_388
.label_387:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_389:
	call	xalloc_die
.label_388:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405240

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405250
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260
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
	#Procedure 0x405290
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_391
	call	rpl_calloc
	test	rax, rax
	je	.label_391
	pop	rcx
	ret	
.label_391:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0

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
	#Procedure 0x4052f0

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
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_394
	pop	rcx
	ret	
.label_394:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_393
	mov	edi, OFFSET FLAT:label_395
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_397
	call	__assert_fail
.label_393:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_398
	cmp	ecx, 0x11
	jne	.label_399
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_398:
	ret	
.label_399:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053a0

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_405
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_417:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_417
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_413
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_416
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_411
	cmp	eax, 0x22
	jne	.label_413
	mov	r12d, 1
.label_411:
	test	rbp, rbp
	jne	.label_415
	jmp	.label_401
.label_416:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_413
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_413
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_413
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_415:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_401
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_409
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_410
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_410
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_402
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_400
	cmp	ecx, 0x44
	je	.label_400
	cmp	ecx, 0x69
	jne	.label_402
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_402
.label_400:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_402
.label_410:
	mov	rsi, r14
.label_402:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_409
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_412]]
.label_1004:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_404
.label_409:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_414
.label_1005:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_404
.label_1006:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_404
.label_1008:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_404
.label_1002:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_403
.label_1003:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_404
.label_1007:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_404
.label_1009:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_404
.label_1010:
	lea	rdi, [rsp]
	mov	edx, 7
.label_404:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_403:
	mov	rsi, r14
.label_1012:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_401:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_414:
	mov	r15d, r12d
.label_413:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1011:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_403
.label_1013:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_403
.label_405:
	mov	edi, OFFSET FLAT:label_406
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_408
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405680

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_418
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_419:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_419
.label_418:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_420
	test	rsi, rsi
	mov	ecx, 1
	je	.label_421
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_421
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_420:
	mov	ecx, 1
.label_421:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710

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
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_422
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_422
	test	r14b, 0x12
	je	.label_422
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_434
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_437
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_438
	mov	esi, OFFSET FLAT:label_31
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_443
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_438:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_424
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_424:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_433
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_425
.label_422:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_445:
	xor	eax, eax
.label_434:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_423:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_440
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_436
.label_440:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_436:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_439
	mov	qword ptr [rbp + 0x10], rbx
.label_432:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_442
.label_439:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_444
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_442:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_425
	jmp	.label_429
.label_444:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_435
	cmp	rax, 3
	jb	.label_435
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_435
	nop	dword ptr [rax + rax]
.label_441:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_435
	dec	rax
	cmp	rax, 1
	ja	.label_441
	nop	word ptr cs:[rax + rax]
.label_435:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_423
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_428
.label_429:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_431
	cmp	r12, 2
	jb	.label_431
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_431:
	mov	r12, qword ptr [rsp + 0x18]
.label_433:
	mov	esi, OFFSET FLAT:label_31
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_428
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_426
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_427
	mov	esi, OFFSET FLAT:label_430
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_427
	or	byte ptr [r13 + 0x48], 4
.label_427:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_434
.label_428:
	mov	rbx, qword ptr [rsp + 0x10]
.label_426:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_443:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_437:
	mov	rdi, r13
	call	free
	jmp	.label_445
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a90

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_446
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_447:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_447
	inc	r14
.label_446:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_448
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_450
.label_448:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_451
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_449
.label_451:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_450:
	xor	eax, eax
.label_449:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b40

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_452
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_452:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_453
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_453:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405bf0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_455
	test	byte ptr [r14 + 0x48], 1
	je	.label_455
	mov	dl, 1
.label_455:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_457
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_457
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_456
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_464
.label_457:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_456
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_463
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_461
.label_463:
	mov	eax, dword ptr [r14]
.label_464:
	mov	dword ptr [r15 + 0x40], eax
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
.label_454:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_456:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_462
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_454
	cmp	ecx, 0x4000
	jne	.label_458
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_460
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_460
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_460:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_454
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_459
	cmp	cl, 0x2e
	jne	.label_454
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_454
.label_459:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_454
.label_462:
	mov	ax, 8
	jmp	.label_454
.label_458:
	mov	ax, 3
	jmp	.label_454
.label_461:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_454
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d80

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_465
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_471
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_471
	mov	qword ptr [r15 + 0x10], rax
.label_465:
	test	rbx, rbx
	je	.label_466
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_468:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_468
.label_466:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_469
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_470:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_470
	lea	rax, [rax + r8*8]
.label_469:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_467
.label_471:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_467:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e60

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_472
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_475
	jmp	.label_473
.label_472:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_474
	mov	rdi, rax
	call	cycle_check_init
.label_475:
	mov	r14b, 1
.label_473:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_474:
	xor	r14d, r14d
	jmp	.label_473
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ed0

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_476
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_476:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f00

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_477
	nop	dword ptr [rax]
.label_479:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_478
	call	closedir
.label_478:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_479
.label_477:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f40

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_480
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_485
	nop	word ptr cs:[rax + rax]
.label_490:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_489
	mov	rbx, qword ptr [rdi + 8]
.label_489:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_490
	jmp	.label_491
.label_485:
	mov	rbx, rdi
.label_491:
	mov	rdi, rbx
	call	free
.label_480:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_483
	call	fts_lfree
.label_483:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_486
	xor	ebx, ebx
	test	al, 4
	jne	.label_487
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_482
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_482:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_484
	jmp	.label_487
.label_486:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_487
	call	close
.label_484:
	test	eax, eax
	je	.label_487
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_487:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_481
	call	hash_free
.label_481:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_488
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_488:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_492
	nop	word ptr cs:[rax + rax]
.label_493:
	mov	edi, eax
	call	close
.label_492:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_494
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_493
	jmp	.label_492
.label_494:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_495
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_496
	jmp	hash_free
.label_495:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_496:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_518
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_518
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_532
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_497
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_518
.label_532:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_497
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_505
	test	byte ptr [r14 + 0x48], 4
	jne	.label_505
	mov	esi, OFFSET FLAT:label_430
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_515
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_517
.label_497:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_508
	movzx	eax, ax
	cmp	eax, 4
	je	.label_519
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_521
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_519
.label_521:
	cmp	qword ptr [r14 + 8], 0
	je	.label_523
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_524
	cmp	qword ptr [r14 + 8], 0
	je	.label_523
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_526
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_537
	nop	word ptr [rax + rax]
.label_508:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_533
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_534
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_499
.label_533:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_504
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_508
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_513
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_507
	test	byte ptr [r14 + 0x48], 4
	jne	.label_507
	mov	esi, OFFSET FLAT:label_430
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_531
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_507
.label_511:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_537:
	test	rax, rax
	jne	.label_511
	jmp	.label_526
.label_519:
	test	byte ptr [rbx + 0x72], 2
	je	.label_527
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_527:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_529
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_529:
	mov	word ptr [rbx + 0x70], 6
.label_528:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_518
.label_505:
	mov	r15, rbx
	jmp	.label_517
.label_504:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_535
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_518
.label_534:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_506
	mov	rdi, rbx
	call	free
	jmp	.label_513
.label_535:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_517
.label_524:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_523:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_522
.label_526:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_513
.label_522:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_518
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_528
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_528
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_528
.label_515:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_517
.label_506:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_518
.label_499:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_498
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_500
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_502
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_510
	test	al, 1
	jne	.label_512
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_520
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_503
.label_498:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_518
.label_502:
	mov	rdi, r14
	call	restore_initial_cwd
.label_503:
	test	eax, eax
	je	.label_512
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_512
.label_510:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_525
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_536
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_525
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_525
.label_531:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_507:
	mov	word ptr [r15 + 0x74], 3
.label_513:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_517:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_509
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_514
	cmp	rax, 2
	jne	.label_500
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_516
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_516
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_514
.label_516:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_509
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_514
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_514
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_514:
	mov	ax, word ptr [r15 + 0x70]
.label_509:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_518
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_530
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_530:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_518
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_518
.label_536:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_525:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_512:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_501
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_501
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_501:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_518:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_500:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406660

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_538
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_540
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_538:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_539
	cmp	qword ptr [rax + 0x58], 0
	js	.label_539
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_540
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_539
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_539
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_539:
	add	rsp, 0x18
	ret	
.label_540:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406700

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
	mov	r14, rdi
	test	rbx, rbx
	je	.label_541
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_551
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_551
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_551:
	test	eax, eax
	sete	r15b
	jmp	.label_542
.label_541:
	xor	r15d, r15d
.label_542:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_545
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_547
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_547
	and	eax, 0x200
	je	.label_547
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_547
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_547:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_548
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_546
.label_548:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_549
	test	rbx, rbx
	je	.label_543
	cmp	byte ptr [rbx], 0x2e
	jne	.label_543
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_543
	cmp	byte ptr [rbx + 2], 0
	jne	.label_543
.label_549:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_550
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_552
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_552
.label_543:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_544
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_553
.label_545:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_546
	and	eax, 0x200
	je	.label_546
	mov	edi, r13d
	call	close
	jmp	.label_546
.label_544:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_546
.label_552:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_550:
	mov	ebp, 0xffffffff
.label_553:
	test	r13d, r13d
	jns	.label_546
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_546:
	mov	eax, ebp
	add	rsp, 0x98
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
	#Procedure 0x406890

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_587
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_596
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_573
.label_587:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_607
	mov	edi, dword ptr [rbx + 0x2c]
.label_607:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_556
	test	al, 1
	je	.label_559
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_556
.label_559:
	mov	edx, 0x20000
.label_556:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_566
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_568
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_574
.label_596:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_566:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_572
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_563
.label_568:
	test	byte ptr [rbx + 0x49], 1
	je	.label_574
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_593
.label_574:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_573
	cmp	ebp, 2
	jne	.label_603
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_605
.label_603:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_608
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_608
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_583
.label_593:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_563
.label_608:
	mov	r15, rbx
	xor	r12d, r12d
.label_583:
	xor	r12b, 1
.label_605:
	cmp	ebp, 3
	je	.label_569
	test	r12b, r12b
	jne	.label_569
	mov	dword ptr [rsp + 4], r12d
.label_585:
	mov	rbx, r15
	jmp	.label_573
.label_569:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_575
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_575:
	test	ebx, ebx
	js	.label_582
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_585
.label_582:
	cmp	ebp, 3
	jne	.label_557
	test	r12b, r12b
	je	.label_557
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_557:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_590
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_590
	call	close
.label_590:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_573:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_601
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_601:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_554:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_571
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_600:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_588
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_589
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_589
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_567
	test	al, al
	je	.label_579
	jmp	.label_589
	nop	word ptr cs:[rax + rax]
.label_567:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_589
.label_579:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_600
	jmp	.label_602
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_561
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_564
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_565
	nop	dword ptr [rax]
.label_564:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_561
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_604
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_580
.label_604:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_580:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_565:
	add	rbp, rdx
	jb	.label_592
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_595
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_576
	nop	word ptr cs:[rax + rax]
.label_595:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_576:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_570
	test	byte ptr [rbx + 0x49], 4
	jne	.label_570
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_599
	nop	word ptr cs:[rax + rax]
.label_570:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_577
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_591
.label_577:
	xor	ebx, ebx
.label_591:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_599:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_584
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_584:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_562
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_562
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_562:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_554
	jmp	.label_571
.label_588:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_578
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_578:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_571
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_571
.label_602:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_571:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_581
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_581:
	test	byte ptr [rbx + 0x48], 4
	je	.label_586
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_586:
	test	r13, r13
	jne	.label_594
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_594
	cmp	r15d, 1
	je	.label_597
	test	rdx, rdx
	jne	.label_594
.label_597:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_598
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_520
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_606
.label_598:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_606:
	mov	rdx, r12
	test	eax, eax
	je	.label_594
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_555
.label_594:
	test	rdx, rdx
	je	.label_558
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_560
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_560:
	cmp	rdx, 2
	jb	.label_572
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_572
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_572
.label_558:
	cmp	r15d, 3
	jne	.label_555
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_555
	movzx	eax, ax
	cmp	eax, 7
	je	.label_555
	mov	word ptr [r14 + 0x70], 6
.label_555:
	mov	rdi, rbp
	call	fts_lfree
.label_563:
	xor	ebp, ebp
.label_572:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_561:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_563
.label_592:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_563
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407020

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_609
	test	ah, 2
	jne	.label_611
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_610
.label_611:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_609:
	xor	eax, eax
.label_610:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407070

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_613
	cmp	rbx, r15
	jne	.label_612
	cmp	byte ptr [rbx + 1], 0
	je	.label_613
.label_612:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_613:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407100

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_617
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_618
	cmp	rax, 0x52654973
	je	.label_616
	cmp	rax, 0x5346414f
	je	.label_615
	jmp	.label_614
.label_617:
	test	rax, rax
	je	.label_615
	cmp	rax, 0x6969
	je	.label_615
	cmp	rax, 0x9fa0
	je	.label_615
	jmp	.label_614
.label_618:
	cmp	rax, 0x58465342
	je	.label_616
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_614
.label_615:
	xor	ecx, ecx
.label_616:
	mov	eax, ecx
	pop	rcx
	ret	
.label_614:
	mov	ecx, 1
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407170

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
	je	.label_622
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_621
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_620
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_621
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_619
.label_622:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_620
	mov	qword ptr [r14], r14
.label_619:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_620
.label_621:
	xor	ebp, ebp
.label_620:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407210

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_624
	cmp	esi, -0x64
	jne	.label_627
.label_624:
	test	dl, dl
	je	.label_623
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_625
	mov	edi, eax
	jmp	.label_626
.label_623:
	test	esi, esi
	js	.label_625
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_625
	mov	edi, esi
.label_626:
	call	close
.label_625:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_627:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407260

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_628
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_628:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407290
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_630
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_631
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_637
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_631
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_631
.label_630:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_631
.label_637:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_638
	call	fts_lfree
.label_638:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_629
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_629:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_633
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_633
	test	byte ptr [rbx + 0x48], 4
	jne	.label_633
	mov	esi, OFFSET FLAT:label_430
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_635
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_632
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_636
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_631
.label_633:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_631:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_635:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_631
.label_632:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_634
.label_636:
	mov	edi, ebp
	call	close
.label_634:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_631
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073d0

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
	#Procedure 0x4073e0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_639
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_639:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407400

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_640
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_642
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
	je	.label_643
.label_642:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_645
	mov	rax, qword ptr [rax + 8]
	jmp	.label_640
.label_645:
	mov	r12b, 1
	mov	r14, rbp
.label_643:
	xor	eax, eax
	test	r15d, r15d
	js	.label_640
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_640
	test	r12b, r12b
	je	.label_641
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_641
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_644
	cmp	rax, rbp
	je	.label_641
	call	abort
.label_644:
	mov	rdi, rbp
	call	free
.label_641:
	mov	rax, qword ptr [rsp]
.label_640:
	add	rsp, 0x78
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
	#Procedure 0x407500

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
	#Procedure 0x407510

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
	#Procedure 0x407520

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_646
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_647]]
.label_646:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407540

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_648
	cmp	rcx, 0x1021994
	je	.label_648
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_648
	mov	al, 1
.label_648:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407570

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_653
	nop	word ptr [rax + rax]
.label_652:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_653:
	test	rcx, rcx
	je	.label_649
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_652
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_652
.label_649:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_650
	nop	word ptr cs:[rax + rax]
.label_651:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_654
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_654:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_655
	mov	rcx, qword ptr [rsi + 8]
.label_655:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_651
.label_650:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407600

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
	#Procedure 0x407630
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407640

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
	je	.label_656
	cmp	r15, -2
	jb	.label_656
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_656
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_656:
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
	#Procedure 0x4076a0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_657
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_657
.label_658:
	ret	
.label_657:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_658
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_659
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_659:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4076f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407700
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
	#Procedure 0x407710
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_660
.label_661:
	ret	
.label_660:
	cmp	edi, 0x7f
	je	.label_661
	xor	eax, eax
	jmp	.label_661
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407730
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
	#Procedure 0x407740
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
	#Procedure 0x407750
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
	#Procedure 0x407760
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
	#Procedure 0x407770
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_662
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_663]]
.label_664:
	ret	
.label_662:
	xor	eax, eax
	jmp	.label_664
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407790
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_665
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_665:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077b0

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
	#Procedure 0x4077c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_666
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_666:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4077e0
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
	#Procedure 0x4077f0
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
	#Procedure 0x407800

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
	je	.label_667
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_668
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_668
.label_667:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_668
	test	cl, cl
	jne	.label_668
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_668:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407870

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x407880

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_669
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_674
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_674
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_675
.label_674:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_670
	mov	al, 1
	test	rbx, rbx
	je	.label_675
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_670:
	xor	eax, eax
.label_675:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_669:
	mov	edi, OFFSET FLAT:label_671
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_673
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407900

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407910

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_676
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_676:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_677
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_679
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_678
.label_679:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_678:
	mov	edx, dword ptr [rax]
.label_677:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_681
	cmp	byte ptr [rax], 0x43
	jne	.label_683
	cmp	byte ptr [rax + 1], 0
	je	.label_680
.label_683:
	mov	esi, OFFSET FLAT:label_682
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_681
.label_680:
	xor	ebx, ebx
.label_681:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a20

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a30

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a40

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a50

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_684
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_686:
	cmp	qword ptr [rcx], 0
	je	.label_685
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_687:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_687
	cmp	rsi, rax
	cmova	rax, rsi
.label_685:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_686
.label_684:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407aa0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_688
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_693:
	cmp	qword ptr [rsi], 0
	je	.label_691
	mov	rax, rsi
	nop	dword ptr [rax]
.label_690:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_690
	inc	rdx
.label_691:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_693
.label_688:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_689
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_692
.label_689:
	xor	eax, eax
.label_692:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b00
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_694
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_700
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_695]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_696]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_697]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_698
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407bf0

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_701
	test	rbx, rbx
	je	.label_701
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_702:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_703
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_703
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_702
	jmp	.label_701
.label_703:
	mov	r15, qword ptr [rbx]
.label_701:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c50

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_704
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_704:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c80
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_705
	mov	rcx, qword ptr [rdi]
	jmp	.label_707
	nop	
.label_708:
	add	rcx, 0x10
.label_707:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_706
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_708
.label_705:
	ret	
.label_706:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407cb0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_713:
	cmp	qword ptr [rcx], rbx
	jne	.label_709
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_710
.label_709:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_713
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_712:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_711
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_712
	jmp	.label_711
.label_710:
	mov	rcx, qword ptr [rdx]
.label_711:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d20
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_714
	xor	eax, eax
.label_717:
	cmp	qword ptr [r8], 0
	je	.label_715
	test	r8, r8
	je	.label_715
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_716:
	cmp	rax, rdx
	jae	.label_714
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_716
.label_715:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_717
.label_714:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d70
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
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_718
	xor	ebx, ebx
.label_720:
	cmp	qword ptr [r13], 0
	je	.label_719
	test	r13, r13
	je	.label_719
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_721:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_718
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_721
.label_719:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_720
.label_718:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x407df0
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
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_723
.label_722:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30
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
	#Procedure 0x407e50

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_726
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_725
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_725
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_725
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_726
.label_725:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_726:
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
	#Procedure 0x407f30

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f60

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_727
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_728]]
	jbe	.label_729
	movss	xmm1,  dword ptr [dword ptr [rip + label_732]]
	ucomiss	xmm1, xmm0
	jbe	.label_729
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_731]]
	jbe	.label_729
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_729
	addss	xmm1,  dword ptr [dword ptr [rip + label_728]]
	ucomiss	xmm0, xmm1
	jbe	.label_729
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_730]]
	ucomiss	xmm2, xmm0
	jb	.label_729
	ucomiss	xmm0, xmm1
	ja	.label_727
.label_729:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_727:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fe0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_733
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_738
	cvtsi2ss	xmm0, rdi
	jmp	.label_734
.label_738:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_734:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_735]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_736]]
	jae	.label_737
.label_733:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_737:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408060
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_739
	nop	dword ptr [rax]
.label_745:
	add	r14, 0x10
.label_739:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_744
	cmp	qword ptr [r14], 0
	je	.label_745
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_740
	nop	word ptr cs:[rax + rax]
.label_742:
	test	cl, 1
	je	.label_743
	mov	rdi, qword ptr [rbx]
	call	rax
.label_743:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_742
.label_740:
	test	cl, cl
	je	.label_741
	mov	rdi, qword ptr [r14]
	call	rax
.label_741:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_745
.label_744:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408100

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_746
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_746
	mov	r14, qword ptr [r15]
	jmp	.label_752
	nop	dword ptr [rax + rax]
.label_753:
	add	r14, 0x10
.label_752:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_746
	cmp	qword ptr [r14], 0
	je	.label_753
	test	r14, r14
	je	.label_753
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_747:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_747
	jmp	.label_753
.label_746:
	mov	r14, qword ptr [r15]
	jmp	.label_750
	nop	word ptr [rax + rax]
.label_749:
	add	r14, 0x10
.label_750:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_754
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_749
	nop	word ptr cs:[rax + rax]
.label_748:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_748
	jmp	.label_749
.label_754:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_751
	nop	dword ptr [rax]
.label_755:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_755
.label_751:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_756
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_757
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_756
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_758
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_757
.label_758:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_759
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_759
	mov	rdi, qword ptr [rsp]
	call	free
.label_756:
	xor	r14d, r14d
.label_757:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_759:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408300

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_760
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_767:
	cmp	qword ptr [r15], 0
	je	.label_764
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_769
	nop	word ptr cs:[rax + rax]
.label_763:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_765
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_766
	nop	word ptr cs:[rax + rax]
.label_765:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_766:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_763
.label_769:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_764
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_768
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_761
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_762
.label_768:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_762:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_764:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_767
	mov	al, 1
.label_760:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_761:
	xor	eax, eax
	jmp	.label_760
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_774
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_772
	test	rbx, rbx
	je	.label_773
	mov	qword ptr [rbx], rax
	jmp	.label_773
.label_772:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_778
	cvtsi2ss	xmm0, rcx
	jmp	.label_783
.label_778:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_783:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_771
	cvtsi2ss	xmm1, rax
	jmp	.label_777
.label_771:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_777:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_779
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_770
	cvtsi2ss	xmm2, rcx
	jmp	.label_775
.label_770:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_775:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_781
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_784
.label_781:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_784:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_779
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_780
	mulss	xmm0, xmm1
.label_780:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_736]]
	jae	.label_773
	movss	xmm1,  dword ptr [dword ptr [rip + label_735]]
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
	je	.label_773
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_774
.label_779:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_776
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_773
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_782
.label_776:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_782:
	mov	ebp, 1
.label_773:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_774:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408600

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_786
	cmp	rsi, r13
	je	.label_789
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_791
.label_789:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_786
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_788
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_790
.label_791:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_786
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_787:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_785
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_785
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_787
	jmp	.label_786
.label_788:
	mov	qword ptr [rbx], 0
	jmp	.label_786
.label_785:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_786
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_790:
	mov	rdi, r14
	call	free_entry
.label_786:
	mov	rax, r15
	add	rsp, 8
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
	#Procedure 0x4086d0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_792
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_792:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408700

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
	je	.label_793
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_793:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_797
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_796
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_804
	cvtsi2ss	xmm0, rax
	jmp	.label_794
.label_804:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_794:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_801
	cvtsi2ss	xmm1, rcx
	jmp	.label_803
.label_801:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_803:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_796
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_800
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_802
.label_800:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_802:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_795
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_799
.label_795:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_799:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_796
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_806
	mulss	xmm0, dword ptr [rcx + 8]
.label_806:
	movss	xmm1,  dword ptr [dword ptr [rip + label_735]]
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
	jne	.label_796
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_798
	nop	dword ptr [rax + rax]
.label_805:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_805
.label_798:
	mov	qword ptr [r15 + 0x48], 0
.label_796:
	mov	rax, r14
.label_797:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_807
	nop	
.label_808:
	add	rbx, 2
.label_807:
	cmp	rbx, -1
	je	.label_809
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_808
	mov	r14, rbx
.label_809:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408910

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_810
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_811:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_810
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_811
.label_810:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408960

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408980

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_812:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_812
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089a0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_813
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_813:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_814
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_815
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_815:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_814:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a30

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_31
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_816
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a60

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_817
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_817:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_818
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_820
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_819
.label_820:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_819:
	mov	ecx, dword ptr [rax]
.label_818:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408b20

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
	js	.label_822
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_821
	mov	dword ptr [r14], ebp
	jmp	.label_822
.label_821:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_822:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408b70

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
	ja	.label_823
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
	jmp	.label_824
.label_823:
	mov	eax, ebx
.label_824:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_826
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_825
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_826
.label_825:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_826
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_827
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_827:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_826:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_828
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_828:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_830
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_829
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_831
	test	esi, esi
	jne	.label_830
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_834
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_837
.label_830:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_835
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_831
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_833
.label_829:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_831:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_838
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_839
.label_838:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_839:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_833:
	cmp	eax, 6
	jne	.label_835
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_836
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_840
.label_835:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_841
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_832
.label_834:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_837:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_836:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_840:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_841:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_832:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e00

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
	#Procedure 0x408e10

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_843
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_845
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_845
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_842
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_846
.label_845:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_846
.label_843:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_846:
	test	ebx, ebx
	js	.label_842
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_842
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_844
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_842
.label_844:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_842:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ee0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_847
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_847
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_847:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_848
	ret	
.label_848:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f30

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
	jne	.label_849
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_849
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_850
.label_849:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_850:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_851
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_851:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408fa0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fc0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408fd0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408fe0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ff0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409000
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409010

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409020
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409040
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409060
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409080
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409160

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x409170

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	16
	#Procedure 0x409180

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	16
	#Procedure 0x409190

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
