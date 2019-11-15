	.section	.text
	.align	32
	#Procedure 0x401bc0

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
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_12
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
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_34
	nop	
.label_33:
	mov	edi, OFFSET FLAT:label_25
	call	strcmp
	test	eax, eax
	je	.label_31
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_33
.label_31:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_25
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_26
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_25
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
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
	.align	32
	#Procedure 0x401f10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_38
	call	setlocale
	mov	edi, OFFSET FLAT:label_63
	mov	esi, OFFSET FLAT:label_64
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_63
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x20]
	call	chopt_init
	mov	eax, 0x10
	mov	r12d, 0xffffffff
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	lea	r15, [rsp + 0x10]
	jmp	.label_41
.label_66:
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, r14d
	nop	dword ptr [rax]
.label_41:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_53
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x85
	ja	.label_57
	mov	eax, 0x11
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_62]]
.label_1008:
	mov	eax, 2
	jmp	.label_41
.label_1009:
	mov	eax, 0x10
	jmp	.label_41
.label_1010:
	mov	byte ptr [rsp + 0x24], 1
	mov	eax, r14d
	jmp	.label_41
.label_1011:
	mov	dword ptr [rsp + 0x20], 1
	mov	eax, r14d
	jmp	.label_41
.label_1012:
	mov	byte ptr [rsp + 0x31], 1
	mov	eax, r14d
	jmp	.label_41
.label_1013:
	xor	r12d, r12d
	mov	eax, r14d
	jmp	.label_41
.label_1014:
	mov	dword ptr [rsp + 0x20], 0
	mov	eax, r14d
	jmp	.label_41
.label_1015:
	mov	r12d, 1
	mov	eax, r14d
	jmp	.label_41
.label_1016:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0x14]
	mov	rdx, r15
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, r14d
	je	.label_41
	jmp	.label_55
.label_1017:
	xor	eax, eax
	jmp	.label_66
.label_1018:
	mov	al, 1
	jmp	.label_66
.label_1019:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	mov	eax, r14d
	jmp	.label_41
.label_1007:
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x24], 0
	je	.label_40
	cmp	r14d, 0x10
	jne	.label_46
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_46:
	mov	r15d, r14d
.label_40:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x30]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	edx, ebp
	sub	edx, eax
	mov	rcx,  qword ptr [word ptr [rip + reference_file]]
	cmp	rcx, 1
	mov	esi, 1
	adc	esi, 0
	cmp	edx, esi
	jl	.label_60
	test	rcx, rcx
	je	.label_69
	mov	rdi,  qword ptr [word ptr [rip + reference_file]]
	lea	rsi, [rsp + 0x48]
	call	stat
	test	eax, eax
	jne	.label_44
	mov	edi, dword ptr [rsp + 0x64]
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 8], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, dword ptr [rsp + 0x68]
	call	gid_to_name
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_56
.label_69:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x40]
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_65
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_58
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	je	.label_58
	mov	edi, OFFSET FLAT:label_38
	call	xstrdup
	mov	qword ptr [rsp + 0x38], rax
.label_58:
	inc	dword ptr [dword ptr [rip + optind]]
.label_56:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	je	.label_47
	mov	al, byte ptr [rsp + 0x24]
	test	al, al
	je	.label_47
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_54
.label_47:
	or	r15d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r13 + rax*8]
	mov	edx, dword ptr [rsp + 0xc]
	mov	ecx, dword ptr [rsp + 8]
	mov	r8d, dword ptr [rsp + 0x14]
	mov	r9d, dword ptr [rsp + 0x10]
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp], rax
	mov	esi, r15d
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_57:
	cmp	eax, 0xffffff7d
	je	.label_42
	cmp	eax, 0xffffff7e
	jne	.label_45
	xor	edi, edi
	call	usage
.label_45:
	mov	edi, 1
	call	usage
.label_42:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_25
	mov	edx, OFFSET FLAT:label_29
	mov	r8d, OFFSET FLAT:label_50
	mov	r9d, OFFSET FLAT:label_51
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_55:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_67
.label_60:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_52
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_44:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_59
.label_54:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_43
.label_59:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_52:
	mov	esi, OFFSET FLAT:label_48
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
.label_65:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_67:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_61
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402380

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
	.align	32
	#Procedure 0x4023b0
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
	.align	32
	#Procedure 0x4023d0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_71
	mov	rdi, qword ptr [rax]
	jmp	.label_70
.label_71:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_70:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_73
	mov	rdi, qword ptr [rax]
	jmp	.label_72
.label_73:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_72:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402430

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
	jne	.label_78
	cmp	byte ptr [rdx + 0x10], 0
	jne	.label_78
	xor	esi, esi
	cmp	dword ptr [rdx], 2
	sete	sil
	shl	esi, 3
.label_78:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_74
	mov	bl, 1
	nop	dword ptr [rax]
.label_81:
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
	jne	.label_81
.label_74:
	mov	r15, qword ptr [rsp + 0x40]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_76
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_77
	xor	ebx, ebx
	jmp	.label_76
.label_77:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_76:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_75
	call	__errno_location
	mov	ebp, dword ptr [rax]
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
	.align	32
	#Procedure 0x402550

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
	ja	.label_119
	jmp	qword ptr [word ptr [+ (rax * 8) + label_116]]
.label_907:
	cmp	byte ptr [rsi + 4], 0
	je	.label_119
	mov	rax, qword ptr [rsi + 8]
	mov	r15b, 1
	test	rax, rax
	je	.label_92
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_92
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_92
	mov	rbp, r8
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbx], 0x2f
	jne	.label_126
	cmp	byte ptr [rbx + 1], 0
	je	.label_129
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	mov	edx, OFFSET FLAT:label_43
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
.label_130:
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
	jmp	.label_92
.label_908:
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
	je	.label_119
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
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
	jmp	.label_92
.label_909:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_103
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	jmp	.label_86
.label_910:
	mov	r15b, 1
	cmp	byte ptr [rsi + 4], 0
	je	.label_92
.label_119:
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
	je	.label_102
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x90]
	cmp	eax, 0xa000
	jne	.label_102
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
	je	.label_102
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	lea	rdx, [rsp + 0x38]
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_84
	mov	r15, rdx
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
	jmp	.label_103
.label_102:
	cmp	r12d, -1
	je	.label_94
	mov	ecx, dword ptr [rdx + 0x1c]
	cmp	ecx, r12d
	sete	al
	cmp	r13d, -1
	je	.label_87
	cmp	ecx, r12d
	je	.label_99
	jmp	.label_87
.label_911:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_103
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	r15, rsi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	esi, r13d
	call	error
	xor	edx, edx
	mov	rsi, r15
	jmp	.label_84
.label_912:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_118
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_122
.label_118:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_103
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
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
.label_84:
	xor	r13d, r13d
.label_103:
	xor	r15d, r15d
	jmp	.label_83
.label_94:
	mov	al, 1
	cmp	r13d, -1
	je	.label_87
.label_99:
	cmp	dword ptr [rdx + 0x20], r13d
	sete	al
.label_87:
	movzx	ecx, word ptr [r14 + 0x70]
	cmp	ecx, 6
	ja	.label_93
	mov	edi, 0x56
	bt	edi, ecx
	jae	.label_93
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.label_93
	mov	rdi, qword ptr [rdx + 8]
	cmp	rdi, qword ptr [rcx]
	jne	.label_93
	mov	rdi, qword ptr [rdx]
	cmp	rdi, qword ptr [rcx + 8]
	jne	.label_93
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_106
	cmp	byte ptr [rbp + 1], 0
	je	.label_109
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	mov	edx, OFFSET FLAT:label_43
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_105:
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
	jmp	.label_92
.label_93:
	test	al, al
	mov	qword ptr [rsp + 0x20], r8
	je	.label_128
	mov	edi, dword ptr [r8 + 0x2c]
	cmp	byte ptr [rsi + 0x10], 0
	mov	dword ptr [rsp + 0x14], ebp
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_82
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
	jmp	qword ptr [word ptr [+ (rax * 8) + label_96]]
.label_1001:
	mov	r12b, 1
	mov	r13b, 1
	jmp	.label_104
.label_128:
	mov	r12b, 1
	xor	r13d, r13d
.label_104:
	mov	r15b, 1
.label_83:
	cmp	dword ptr [rsi], 2
	je	.label_120
	mov	eax, r15d
	and	al, 1
	test	r13b, r13b
	je	.label_112
	mov	ecx, r12d
	and	cl, r15b
	je	.label_112
	cmp	ebp, -1
	je	.label_115
	cmp	dword ptr [rdx + 0x1c], ebp
	jne	.label_117
.label_115:
	cmp	ebx, -1
	je	.label_112
	cmp	dword ptr [rdx + 0x20], ebx
	jne	.label_117
.label_112:
	cmp	dword ptr [rsi], 0
	jne	.label_120
	test	al, al
	movzx	eax, r12b
	lea	eax, [rax + rax*2 + 1]
	mov	ebp, 3
	cmovne	ebp, eax
	xor	r12d, r12d
	test	rdx, rdx
	mov	ebx, 0
	jne	.label_88
	jmp	.label_125
.label_117:
	movzx	ecx, r12b
	inc	ecx
	test	al, al
	mov	ebp, 3
	cmovne	ebp, ecx
.label_88:
	mov	edi, dword ptr [rdx + 0x1c]
	mov	r13, rsi
	mov	rbx, rdx
	call	uid_to_name
	mov	r12, rax
	mov	edi, dword ptr [rbx + 0x20]
	call	gid_to_name
	mov	rsi, r13
	mov	rbx, rax
.label_125:
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
.label_120:
	cmp	byte ptr [rsi + 4], 0
	jne	.label_95
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	call	rpl_fts_set
.label_95:
	and	r15b, 1
.label_92:
	mov	eax, r15d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_82:
	mov	rsi, r9
	mov	edx, ebp
	mov	ebp, ebx
	mov	ecx, ebx
	call	lchownat
	test	eax, eax
	sete	r15b
	mov	r12b, 1
	je	.label_108
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r12b
	mov	al, 1
	je	.label_111
	mov	eax, r15d
.label_111:
	mov	r15b, al
.label_108:
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_114
.label_122:
	mov	qword ptr [r14 + 0x20], 1
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, r14
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_92
.label_1002:
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
.label_114:
	mov	r13b, 1
	test	r15b, 1
	jne	.label_83
.label_1003:
	mov	r13b, 1
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_83
	mov	dword ptr [rsp + 0x10], ebx
	mov	ebx, ebp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	cmp	ebx, -1
	je	.label_89
	mov	esi, OFFSET FLAT:label_90
	jmp	.label_91
.label_100:
	lea	rdx, [r14 + 0x78]
	mov	al, 1
	jmp	.label_87
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	jmp	.label_105
.label_89:
	mov	esi, OFFSET FLAT:label_107
.label_91:
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
	jmp	.label_83
.label_129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	jmp	.label_130
.label_101:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00

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
	je	.label_131
	movzx	eax, word ptr [rbp + 0x18]
	and	eax, 0xf000
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_137
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_131
	mov	r12d, 0x10900
.label_137:
	mov	dword ptr [rsp], ecx
	mov	dword ptr [rsp + 4], r8d
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_138
	call	__errno_location
	mov	rcx, rax
	cmp	dword ptr [rcx], 0xd
	jne	.label_133
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x8000
	jne	.label_133
	or	r12d, 1
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	mov	rbx, rcx
	call	openat
	mov	rcx, rbx
	test	eax, eax
	js	.label_133
.label_138:
	lea	rsi, [rsp + 8]
	mov	r15d, eax
	mov	edi, eax
	call	fstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_134
	mov	rax, qword ptr [rbp + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_134
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_134
	cmp	r13d, -1
	je	.label_136
	mov	ebx, 2
	cmp	dword ptr [rsp + 0x24], r13d
	jne	.label_134
.label_136:
	cmp	dword ptr [rsp + 0xd0], -1
	je	.label_132
	mov	ebx, 2
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	dword ptr [rsp + 0x28], eax
	jne	.label_134
.label_132:
	mov	edi, r15d
	mov	esi, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 4]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_135
.label_134:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r15d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_131
.label_133:
	xor	ebx, ebx
	cmp	dword ptr [rcx], 0xd
	setne	bl
	add	ebx, 5
.label_131:
	mov	eax, ebx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_135:
	mov	edi, r15d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_131
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90

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
	je	.label_157
	cmp	r15d, 3
	je	.label_161
	cmp	r15d, 2
	jne	.label_164
	test	r14, r14
	je	.label_139
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	jmp	.label_141
.label_157:
	xor	edi, edi
	test	r14, r14
	je	.label_149
	mov	esi, OFFSET FLAT:label_148
	jmp	.label_141
.label_161:
	test	r12, r12
	je	.label_151
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	jmp	.label_159
.label_139:
	test	r13, r13
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_162
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	jmp	.label_159
.label_149:
	test	r13, r13
	je	.label_142
	mov	esi, OFFSET FLAT:label_143
	jmp	.label_141
.label_151:
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	jmp	.label_153
.label_154:
	xor	edi, edi
	test	r13, r13
	je	.label_156
	mov	esi, OFFSET FLAT:label_160
	jmp	.label_159
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	jmp	.label_159
.label_142:
	mov	esi, OFFSET FLAT:label_166
.label_141:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_144
.label_147:
	xor	edi, edi
	test	r13, r13
	je	.label_150
	mov	esi, OFFSET FLAT:label_155
	jmp	.label_153
.label_156:
	mov	esi, OFFSET FLAT:label_146
.label_159:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_144
.label_150:
	mov	esi, OFFSET FLAT:label_146
.label_153:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	call	free
	mov	r12, rbp
	xor	ebp, ebp
.label_144:
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
	.align	32
	#Procedure 0x403080

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_168
	test	r14, r14
	je	.label_169
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
	jmp	.label_170
.label_168:
	xor	r15d, r15d
	test	r14, r14
	je	.label_170
	mov	rdi, r14
	jmp	.label_171
.label_170:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_169:
	mov	rdi, rbx
.label_171:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403100
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_174
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_172
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_172
.label_174:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_175
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_173
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_175:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_173:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_61
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0

	.globl chownat
	.type chownat, @function
chownat:
	xor	r8d, r8d
	jmp	fchownat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031f0

	.globl lchownat
	.type lchownat, @function
lchownat:
	mov	r8d, 0x100
	jmp	fchownat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

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
	.align	32
	#Procedure 0x403250

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
	jl	.label_183
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_183
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_179
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_179:
	mov	rbx, r14
.label_183:
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
	.align	32
	#Procedure 0x403300
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
	.align	32
	#Procedure 0x403340
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
	.align	32
	#Procedure 0x403350
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
	.align	32
	#Procedure 0x403360

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
	.align	32
	#Procedure 0x4033a0
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
	.align	32
	#Procedure 0x4033c0

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
	.align	32
	#Procedure 0x4033f0
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
	.align	32
	#Procedure 0x403470

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
.label_259:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_213
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_264]]
.label_1034:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_268
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_203
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1035:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_280
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_280
	xor	r14d, r14d
.label_289:
	cmp	r14, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_287:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_289
.label_280:
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
	jmp	.label_204
.label_1027:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_204
.label_1030:
	mov	al, 1
.label_1028:
	mov	r12b, 1
.label_1031:
	test	r12b, 1
	mov	cl, 1
	je	.label_188
	mov	ecx, eax
.label_188:
	mov	al, cl
.label_1029:
	test	r12b, 1
	jne	.label_192
	test	r11, r11
	je	.label_195
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_195:
	mov	r14d, 1
	jmp	.label_200
.label_192:
	xor	r14d, r14d
.label_200:
	mov	ecx, OFFSET FLAT:label_203
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_204
.label_1032:
	test	r12b, 1
	jne	.label_211
	test	r11, r11
	je	.label_196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_196:
	mov	r14d, 1
	jmp	.label_217
.label_1033:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_204
.label_211:
	xor	r14d, r14d
.label_217:
	mov	eax, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_204:
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
	jmp	.label_208
	nop	dword ptr [rax]
.label_223:
	inc	rsi
.label_208:
	cmp	rbp, -1
	je	.label_273
	cmp	rsi, rbp
	jne	.label_275
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_273:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_233
.label_275:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_283
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_277
	cmp	rbp, -1
	jne	.label_277
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
.label_277:
	cmp	rbx, rbp
	jbe	.label_291
.label_283:
	xor	r8d, r8d
.label_202:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_292
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_296]]
.label_930:
	test	rsi, rsi
	jne	.label_201
	jmp	.label_230
	nop	
.label_291:
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
	jne	.label_199
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_202
	jmp	.label_212
.label_199:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_202
.label_934:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_226
	test	rsi, rsi
	jne	.label_227
	cmp	rbp, 1
	je	.label_230
	xor	r13d, r13d
	jmp	.label_191
.label_923:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_235
	cmp	byte ptr [rsp + 7], 0
	jne	.label_185
	cmp	r12d, 2
	jne	.label_240
	mov	eax, r9d
	and	al, 1
	jne	.label_240
	cmp	r14, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_252
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	r14, 3
	mov	r9b, 1
.label_240:
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
	je	.label_261
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_261
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_261
	cmp	r14, r11
	jae	.label_269
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_269:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_299
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_299:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_191
.label_924:
	mov	bl, 0x62
	jmp	.label_279
.label_925:
	mov	cl, 0x74
	jmp	.label_282
.label_926:
	mov	bl, 0x76
	jmp	.label_279
.label_927:
	mov	bl, 0x66
	jmp	.label_279
.label_928:
	mov	cl, 0x72
	jmp	.label_282
.label_931:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 7], 0
	jne	.label_185
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
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_290:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_297
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_297:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_298
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_298:
	add	r14, 3
	xor	r9d, r9d
.label_286:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_191
.label_932:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_197
	cmp	r12d, 2
	jne	.label_201
	cmp	byte ptr [rsp + 7], 0
	je	.label_201
	jmp	.label_185
.label_933:
	cmp	r12d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 7], 0
	jne	.label_185
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_215
.label_292:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_220
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
.label_218:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_238
	test	r8b, r8b
	je	.label_238
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_191
.label_226:
	test	rsi, rsi
	jne	.label_258
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_258
.label_230:
	mov	dl, 1
.label_929:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_185
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_265
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_266
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_265:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_270
.label_266:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_274
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_215
	jmp	.label_285
	nop	dword ptr [rax]
.label_270:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_285
	jmp	.label_215
.label_274:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_285
.label_235:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_223
	xor	r15d, r15d
	jmp	.label_201
.label_209:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_282
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_215
.label_282:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_185
.label_279:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_191
	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_185
	cmp	r12d, 2
	jne	.label_189
	mov	eax, r9d
	and	al, 1
	jne	.label_189
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_253:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_206
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_206:
	add	r14, 3
	mov	r9b, 1
.label_189:
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_210:
	inc	r14
	jmp	.label_214
.label_220:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_219
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_219:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_239:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_244
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_247
	cmp	rbp, -2
	je	.label_254
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_256
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_241:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_295
	bt	rsi, rdx
	jb	.label_212
.label_295:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_241
.label_256:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_276
	xor	r13d, r13d
.label_276:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_239
	jmp	.label_218
.label_261:
	xor	r13d, r13d
	jmp	.label_191
.label_258:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_191
.label_197:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_201
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_201
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_201
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_293
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_267
	cmp	byte ptr [rsp + 7], 0
	jne	.label_185
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_224
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_224:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_225
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_250
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_250:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_205:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_191
.label_201:
	xor	eax, eax
.label_227:
	xor	r13d, r13d
	jmp	.label_191
.label_238:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_216
	nop	word ptr cs:[rax + rax]
.label_288:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_216:
	test	r8b, r8b
	je	.label_228
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_229
	cmp	r14, r11
	jae	.label_231
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_231:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_229
	nop	dword ptr [rax]
.label_228:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_212
	cmp	r12d, 2
	jne	.label_243
	mov	eax, r9d
	and	al, 1
	jne	.label_243
	cmp	r14, r11
	jae	.label_246
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_251
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_251:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_257
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_257:
	add	r14, 3
	mov	r9b, 1
.label_243:
	cmp	r14, r11
	jae	.label_221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_260
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_260:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_278
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_278:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_229:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_215
	test	r9b, 1
	je	.label_236
	mov	ebx, eax
	and	bl, 1
	jne	.label_236
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_284
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_284:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_249:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_236:
	cmp	r14, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_215:
	test	r9b, 1
	je	.label_248
	and	al, 1
	jne	.label_248
	cmp	r14, r11
	jae	.label_294
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_294:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_281:
	add	r14, 2
	xor	r9d, r9d
.label_248:
	mov	ebx, r15d
.label_214:
	cmp	r14, r11
	jae	.label_186
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_186:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_223
.label_247:
	xor	r13d, r13d
.label_244:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_218
.label_254:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_207
	mov	rsi, qword ptr [rsp + 0x50]
.label_198:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_271
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_198
	xor	r13d, r13d
	jmp	.label_218
.label_207:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_218
.label_271:
	xor	r13d, r13d
	jmp	.label_218
.label_293:
	xor	r13d, r13d
	jmp	.label_191
.label_267:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_191
	nop	dword ptr [rax + rax]
.label_233:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_232
	or	dl, al
	je	.label_212
.label_232:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_237
	or	dl, al
	jne	.label_237
	test	r10b, 1
	jne	.label_255
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_237
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_259
.label_237:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_262
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_263
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_263
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	r14, r11
	jae	.label_272
	mov	byte ptr [rcx + r14], al
.label_272:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_193
	jmp	.label_263
.label_185:
	mov	qword ptr [rsp + 0x20], rbp
.label_212:
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
.label_190:
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
.label_255:
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
	jmp	.label_190
.label_262:
	mov	rcx, qword ptr [rsp + 8]
.label_263:
	cmp	r14, r11
	jae	.label_234
	mov	byte ptr [rcx + r14], 0
	jmp	.label_234
.label_213:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404230
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240

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
	.align	32
	#Procedure 0x404330
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
	je	.label_305
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_304]], OFFSET FLAT:slot0
.label_305:
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
	.align	32
	#Procedure 0x4043d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4043e0

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
	.align	32
	#Procedure 0x4045a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0
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
	.align	32
	#Procedure 0x4045d0

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
	.align	32
	#Procedure 0x404610

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
	.align	32
	#Procedure 0x404670

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
	.align	32
	#Procedure 0x4046b0

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
	.align	32
	#Procedure 0x4046d0
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
	.align	32
	#Procedure 0x4046f0

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
	.align	32
	#Procedure 0x404760

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404780
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790

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
	.align	32
	#Procedure 0x4047e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0

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
	.align	32
	#Procedure 0x404860
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
	.align	32
	#Procedure 0x404880
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
	.align	32
	#Procedure 0x4048a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0
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
	.align	32
	#Procedure 0x4048c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0

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
	je	.label_318
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_323
	mov	eax, OFFSET FLAT:label_324
	jmp	.label_321
.label_318:
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
	je	.label_317
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_319
	mov	eax, OFFSET FLAT:label_320
	jmp	.label_321
.label_317:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_222
	mov	eax, OFFSET FLAT:label_203
.label_321:
	cmove	rax, rcx
.label_322:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

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
	.align	32
	#Procedure 0x404a20

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
	.align	32
	#Procedure 0x404ab0

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
	.align	32
	#Procedure 0x404b30

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
	.align	32
	#Procedure 0x404ba0

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
	.align	32
	#Procedure 0x404c00

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
	.align	32
	#Procedure 0x404c50

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
	.align	32
	#Procedure 0x404ca0

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
	.align	32
	#Procedure 0x404cd0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_43
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
	.align	32
	#Procedure 0x404d10

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_351
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_351:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_350
	test	r14, r14
	jne	.label_350
	test	rbp, rbp
	je	.label_350
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_350
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_352
.label_350:
	mov	rax, rbp
.label_352:
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
	.align	32
	#Procedure 0x404dc0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, r8
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	esi, 0xffffffff
	test	rcx, rcx
	je	.label_371
	mov	esi, dword ptr [rcx]
.label_371:
	test	rbp, rbp
	je	.label_377
	mov	qword ptr [rbp], 0
.label_377:
	test	r9, r9
	je	.label_380
	mov	qword ptr [r9], 0
.label_380:
	test	r15, r15
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 4], eax
	je	.label_382
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_354
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_354:
	lea	rax, [r15 + 1]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	cmovne	r12, rax
	jmp	.label_367
.label_382:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_373
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_367:
	xor	r14d, r14d
	test	r13, r13
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_379
	cmp	byte ptr [r13], 0x2b
	je	.label_356
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_356
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 4], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_357
	test	r12, r12
	jne	.label_357
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 8], rbx
	je	.label_369
	mov	rdi, qword ptr [rax]
	jmp	.label_372
.label_356:
	mov	ebp, OFFSET FLAT:label_365
	xor	r14d, r14d
	test	r15, r15
	je	.label_366
	test	r12, r12
	je	.label_359
.label_366:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_38
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_381
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_381
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_358
.label_381:
	mov	ebp, OFFSET FLAT:label_355
	mov	eax, dword ptr [rsp + 4]
.label_358:
	xor	r14d, r14d
	mov	dword ptr [rsp + 4], eax
	jmp	.label_359
.label_379:
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_362
.label_373:
	xor	r13d, r13d
	jmp	.label_363
.label_369:
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_372:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_357:
	xor	ebp, ebp
.label_359:
	call	endpwent
.label_362:
	test	r12, r12
	je	.label_374
	test	rbp, rbp
	jne	.label_374
	cmp	byte ptr [r12], 0x2b
	je	.label_375
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_375
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_360
.label_374:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_370
.label_375:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_38
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_361
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_361
	cmp	ebx, -1
	jne	.label_360
.label_361:
	mov	ebp, OFFSET FLAT:label_368
	mov	rbx, qword ptr [rsp + 8]
.label_360:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
.label_370:
	test	rbp, rbp
	je	.label_376
	xor	ebx, ebx
	jmp	.label_353
.label_376:
	mov	rbp, qword ptr [rsp + 0x20]
.label_363:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [rax], edx
	test	rcx, rcx
	je	.label_378
	mov	dword ptr [rcx], esi
.label_378:
	test	rbp, rbp
	je	.label_383
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_383:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_353
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_353:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_364
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_364:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405050

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
	je	.label_394
	mov	edx, OFFSET FLAT:label_399
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_386
.label_394:
	mov	edx, OFFSET FLAT:label_388
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_395
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_396]]
.label_1036:
	add	rsp, 8
	jmp	.label_387
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
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
	jmp	.label_387
.label_1037:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
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
.label_1038:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
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
.label_1039:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
.label_1040:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
	jmp	.label_387
.label_1041:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_387
.label_1042:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
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
	jmp	.label_387
.label_1043:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
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
	jmp	.label_387
.label_1045:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
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
	jmp	.label_387
.label_1044:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
.label_387:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_403:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_403
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_405:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_404
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_406
	nop	dword ptr [rax]
.label_404:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_406:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_407
	inc	r9
	cmp	r9, 0xa
	jb	.label_405
.label_407:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405440

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_408
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_408:
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
	.align	32
	#Procedure 0x4054d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_410
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405550
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_413
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_413:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405580

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_414
	test	rax, rax
	je	.label_415
.label_414:
	pop	rbx
	ret	
.label_415:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_416
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_416:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_417
	test	rbx, rbx
	jne	.label_417
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_417:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_419
	test	rax, rax
	je	.label_418
.label_419:
	pop	rbx
	ret	
.label_418:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_420
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_423
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_421
.label_420:
	test	rcx, rcx
	jne	.label_424
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_424:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_422
.label_421:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_423:
	call	xalloc_die
.label_422:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405680

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056a0
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
	.align	32
	#Procedure 0x4056d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_425
	call	rpl_calloc
	test	rax, rax
	je	.label_425
	pop	rcx
	ret	
.label_425:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405700

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
	.align	32
	#Procedure 0x405730

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
	.align	32
	#Procedure 0x405750

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_428
	pop	rcx
	ret	
.label_428:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_427
	mov	edi, OFFSET FLAT:label_429
	mov	esi, OFFSET FLAT:label_430
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_431
	call	__assert_fail
.label_427:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_432
	cmp	ecx, 0x11
	jne	.label_433
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_432:
	ret	
.label_433:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057e0

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
	jae	.label_445
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_444:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_444
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_434
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_446
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_450
	cmp	eax, 0x22
	jne	.label_434
	mov	r12d, 1
.label_450:
	test	rbp, rbp
	jne	.label_439
	jmp	.label_435
.label_446:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_434
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_434
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_434
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_439:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_435
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_441
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_436
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_436
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_443
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_440
	cmp	ecx, 0x44
	je	.label_440
	cmp	ecx, 0x69
	jne	.label_443
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_443
.label_440:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_443
.label_436:
	mov	rsi, r14
.label_443:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_441
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_451]]
.label_1051:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_442
.label_441:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_438
.label_1052:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_442
.label_1053:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_442
.label_1055:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_442
.label_1049:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_437
.label_1050:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_442
.label_1054:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_442
.label_1056:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_442
.label_1057:
	lea	rdi, [rsp]
	mov	edx, 7
.label_442:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_437:
	mov	rsi, r14
.label_1059:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_435:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_438:
	mov	r15d, r12d
.label_434:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1058:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_437
.label_1060:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_437
.label_445:
	mov	edi, OFFSET FLAT:label_447
	mov	esi, OFFSET FLAT:label_448
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_449
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90

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
	.align	32
	#Procedure 0x405ac0

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
	je	.label_452
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_453:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_453
.label_452:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_454
	test	rsi, rsi
	mov	ecx, 1
	je	.label_455
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_455
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_454:
	mov	ecx, 1
.label_455:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50

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
	jae	.label_457
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_457
	test	r14b, 0x12
	je	.label_457
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_462
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
	je	.label_460
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_464
	mov	esi, OFFSET FLAT:label_38
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_468
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_464:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_472
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_472:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_479
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_456
.label_457:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_470:
	xor	eax, eax
.label_462:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_471:
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
	jne	.label_474
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_459
.label_474:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_459:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_463
	mov	qword ptr [rbp + 0x10], rbx
.label_478:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_477
.label_463:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_469
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_477:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_456
	jmp	.label_475
.label_469:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_478
	nop	word ptr cs:[rax + rax]
.label_456:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_458
	cmp	rax, 3
	jb	.label_458
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_458
	nop	dword ptr [rax + rax]
.label_466:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_458
	dec	rax
	cmp	rax, 1
	ja	.label_466
	nop	word ptr cs:[rax + rax]
.label_458:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_471
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_465
.label_475:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_461
	cmp	r12, 2
	jb	.label_461
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_461:
	mov	r12, qword ptr [rsp + 0x18]
.label_479:
	mov	esi, OFFSET FLAT:label_38
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_465
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_473
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_467
	mov	esi, OFFSET FLAT:label_476
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_467
	or	byte ptr [r13 + 0x48], 4
.label_467:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_462
.label_465:
	mov	rbx, qword ptr [rsp + 0x10]
.label_473:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_468:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_460:
	mov	rdi, r13
	call	free
	jmp	.label_470
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ed0

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
	je	.label_480
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_481:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_481
	inc	r14
.label_480:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_482
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_484
.label_482:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_485
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_483
.label_485:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_484:
	xor	eax, eax
.label_483:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f80

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
	je	.label_486
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
.label_486:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406010

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_487
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_487:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_489
	test	byte ptr [r14 + 0x48], 1
	je	.label_489
	mov	dl, 1
.label_489:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_492
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_492
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_491
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_498
.label_492:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_491
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_493
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_495
.label_493:
	mov	eax, dword ptr [r14]
.label_498:
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
.label_488:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_491:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_496
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_488
	cmp	ecx, 0x4000
	jne	.label_497
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_490
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_490
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_490:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_488
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_494
	cmp	cl, 0x2e
	jne	.label_488
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_488
.label_494:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_488
.label_496:
	mov	ax, 8
	jmp	.label_488
.label_497:
	mov	ax, 3
	jmp	.label_488
.label_495:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_488
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061c0

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
	jae	.label_499
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_505
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_505
	mov	qword ptr [r15 + 0x10], rax
.label_499:
	test	rbx, rbx
	je	.label_500
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_503:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_503
.label_500:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_502
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_504:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_504
	lea	rax, [rax + r8*8]
.label_502:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_501
.label_505:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_501:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062a0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_506
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_509
	jmp	.label_507
.label_506:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_508
	mov	rdi, rax
	call	cycle_check_init
.label_509:
	mov	r14b, 1
.label_507:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_508:
	xor	r14d, r14d
	jmp	.label_507
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406310

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_510
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_510:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406340

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_511
	nop	dword ptr [rax]
.label_513:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_512
	call	closedir
.label_512:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_513
.label_511:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_514
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_518
	nop	word ptr cs:[rax + rax]
.label_525:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_521
	mov	rbx, qword ptr [rdi + 8]
.label_521:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_525
	jmp	.label_524
.label_518:
	mov	rbx, rdi
.label_524:
	mov	rdi, rbx
	call	free
.label_514:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_516
	call	fts_lfree
.label_516:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_523
	xor	ebx, ebx
	test	al, 4
	jne	.label_519
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_515
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_515:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_517
	jmp	.label_519
.label_523:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_519
	call	close
.label_517:
	test	eax, eax
	je	.label_519
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_519:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_522
	call	hash_free
.label_522:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_520
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_520:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_526
	nop	word ptr cs:[rax + rax]
.label_527:
	mov	edi, eax
	call	close
.label_526:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_528
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_527
	jmp	.label_526
.label_528:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_529
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_530
	jmp	hash_free
.label_529:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_530:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0

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
	je	.label_531
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_531
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_536
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_538
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_531
.label_536:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_538
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_550
	test	byte ptr [r14 + 0x48], 4
	jne	.label_550
	mov	esi, OFFSET FLAT:label_476
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_561
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_537
.label_538:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_560
	movzx	eax, ax
	cmp	eax, 4
	je	.label_564
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_565
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_564
.label_565:
	cmp	qword ptr [r14 + 8], 0
	je	.label_567
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_569
	cmp	qword ptr [r14 + 8], 0
	je	.label_567
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_533
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_555
	nop	word ptr [rax + rax]
.label_560:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_540
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_547
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_543
.label_540:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_549
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_560
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_557
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_562
	test	byte ptr [r14 + 0x48], 4
	jne	.label_562
	mov	esi, OFFSET FLAT:label_476
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_554
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_562
.label_546:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_555:
	test	rax, rax
	jne	.label_546
	jmp	.label_533
.label_564:
	test	byte ptr [rbx + 0x72], 2
	je	.label_570
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_570:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_571
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_571:
	mov	word ptr [rbx + 0x70], 6
.label_532:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_531
.label_550:
	mov	r15, rbx
	jmp	.label_537
.label_549:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_541
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_531
.label_547:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_551
	mov	rdi, rbx
	call	free
	jmp	.label_557
.label_541:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_537
.label_569:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_567:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_566
.label_533:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_557
.label_566:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_531
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_532
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_532
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_532
.label_561:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_537
.label_551:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_531
.label_543:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_542
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_544
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_548
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_553
	test	al, 1
	jne	.label_556
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_539
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_568
.label_542:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_531
.label_548:
	mov	rdi, r14
	call	restore_initial_cwd
.label_568:
	test	eax, eax
	je	.label_556
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_556
.label_553:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_534
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_558
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_534
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_534
.label_554:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_562:
	mov	word ptr [r15 + 0x74], 3
.label_557:
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
.label_537:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_552
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_559
	cmp	rax, 2
	jne	.label_544
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_563
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_563
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_559
.label_563:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_552
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_559
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_559
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_559:
	mov	ax, word ptr [r15 + 0x70]
.label_552:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_531
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_535
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_535:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_531
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_531
.label_558:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_534:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_556:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_545
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_545
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_545:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_531:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_544:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406aa0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_572
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_574
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_572:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_573
	cmp	qword ptr [rax + 0x58], 0
	js	.label_573
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_574
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_573
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_573
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_573:
	add	rsp, 0x18
	ret	
.label_574:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b40

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
	je	.label_575
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_585
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_585
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_585:
	test	eax, eax
	sete	r15b
	jmp	.label_576
.label_575:
	xor	r15d, r15d
.label_576:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_579
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_581
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_581
	and	eax, 0x200
	je	.label_581
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_581
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_581:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_582
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_580
.label_582:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_583
	test	rbx, rbx
	je	.label_577
	cmp	byte ptr [rbx], 0x2e
	jne	.label_577
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_577
	cmp	byte ptr [rbx + 2], 0
	jne	.label_577
.label_583:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_584
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_586
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_586
.label_577:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_578
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_587
.label_579:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_580
	and	eax, 0x200
	je	.label_580
	mov	edi, r13d
	call	close
	jmp	.label_580
.label_578:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_580
.label_586:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_584:
	mov	ebp, 0xffffffff
.label_587:
	test	r13d, r13d
	jns	.label_580
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_580:
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
	.align	32
	#Procedure 0x406cd0

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
	je	.label_632
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_642
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_589
.label_632:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_602
	mov	edi, dword ptr [rbx + 0x2c]
.label_602:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_611
	test	al, 1
	je	.label_609
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_611
.label_609:
	mov	edx, 0x20000
.label_611:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_621
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_615
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_622
.label_642:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_621:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_619
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_604
.label_615:
	test	byte ptr [rbx + 0x49], 1
	je	.label_622
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
	je	.label_633
.label_622:
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
	jne	.label_589
	cmp	ebp, 2
	jne	.label_598
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_599
.label_598:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_603
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_603
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_641
.label_633:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_604
.label_603:
	mov	r15, rbx
	xor	r12d, r12d
.label_641:
	xor	r12b, 1
.label_599:
	cmp	ebp, 3
	je	.label_616
	test	r12b, r12b
	jne	.label_616
	mov	dword ptr [rsp + 4], r12d
.label_628:
	mov	rbx, r15
	jmp	.label_589
.label_616:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_623
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_623:
	test	ebx, ebx
	js	.label_627
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_628
.label_627:
	cmp	ebp, 3
	jne	.label_629
	test	r12b, r12b
	je	.label_629
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_629:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_637
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_637
	call	close
.label_637:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_589:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_595
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_595:
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
.label_617:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_607
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_594:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_635
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_593
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_593
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_639
	test	al, al
	je	.label_636
	jmp	.label_593
	nop	word ptr cs:[rax + rax]
.label_639:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_593
.label_636:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_594
	jmp	.label_596
	nop	word ptr cs:[rax + rax]
.label_593:
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
	je	.label_612
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_614
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_618
	nop	dword ptr [rax]
.label_614:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_612
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_620
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
	jmp	.label_625
.label_620:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_625:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_618:
	add	rbp, rdx
	jb	.label_638
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_634
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_630
	nop	word ptr cs:[rax + rax]
.label_634:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_630:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_613
	test	byte ptr [rbx + 0x49], 4
	jne	.label_613
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_606
	nop	word ptr cs:[rax + rax]
.label_613:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_624
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_600
.label_624:
	xor	ebx, ebx
.label_600:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_606:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_597
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_597:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_591
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_591
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_591:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_617
	jmp	.label_607
.label_635:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_640
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_640:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_607
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_607
.label_596:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_607:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_626
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_626:
	test	byte ptr [rbx + 0x48], 4
	je	.label_631
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_631:
	test	r13, r13
	jne	.label_590
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_590
	cmp	r15d, 1
	je	.label_588
	test	rdx, rdx
	jne	.label_590
.label_588:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_592
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_539
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_601
.label_592:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_601:
	mov	rdx, r12
	test	eax, eax
	je	.label_590
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_605
.label_590:
	test	rdx, rdx
	je	.label_608
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_610
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_610:
	cmp	rdx, 2
	jb	.label_619
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_619
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_619
.label_608:
	cmp	r15d, 3
	jne	.label_605
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_605
	movzx	eax, ax
	cmp	eax, 7
	je	.label_605
	mov	word ptr [r14 + 0x70], 6
.label_605:
	mov	rdi, rbp
	call	fts_lfree
.label_604:
	xor	ebp, ebp
.label_619:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_612:
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
	jmp	.label_604
.label_638:
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
	jmp	.label_604
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407460

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_643
	test	ah, 2
	jne	.label_645
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_644
.label_645:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_643:
	xor	eax, eax
.label_644:
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
	.align	32
	#Procedure 0x4074b0

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
	je	.label_647
	cmp	rbx, r15
	jne	.label_646
	cmp	byte ptr [rbx + 1], 0
	je	.label_647
.label_646:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_647:
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
	.align	32
	#Procedure 0x407540

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_651
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_652
	cmp	rax, 0x52654973
	je	.label_650
	cmp	rax, 0x5346414f
	je	.label_649
	jmp	.label_648
.label_651:
	test	rax, rax
	je	.label_649
	cmp	rax, 0x6969
	je	.label_649
	cmp	rax, 0x9fa0
	je	.label_649
	jmp	.label_648
.label_652:
	cmp	rax, 0x58465342
	je	.label_650
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_648
.label_649:
	xor	ecx, ecx
.label_650:
	mov	eax, ecx
	pop	rcx
	ret	
.label_648:
	mov	ecx, 1
	jmp	.label_650
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075b0

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
	je	.label_656
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_655
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
	je	.label_654
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_655
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_653
.label_656:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_654
	mov	qword ptr [r14], r14
.label_653:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_654
.label_655:
	xor	ebp, ebp
.label_654:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407650

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
	jne	.label_658
	cmp	esi, -0x64
	jne	.label_661
.label_658:
	test	dl, dl
	je	.label_657
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_659
	mov	edi, eax
	jmp	.label_660
.label_657:
	test	esi, esi
	js	.label_659
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_659
	mov	edi, esi
.label_660:
	call	close
.label_659:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_661:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076a0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_662
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_662:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076d0
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
	jne	.label_667
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_666
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_664
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_666
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_666
.label_667:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_666
.label_664:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_671
	call	fts_lfree
.label_671:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_665
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_665:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_669
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_669
	test	byte ptr [rbx + 0x48], 4
	jne	.label_669
	mov	esi, OFFSET FLAT:label_476
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_670
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_668
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_663
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_666
.label_669:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_666:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_670:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_666
.label_668:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_672
.label_663:
	mov	edi, ebp
	call	close
.label_672:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407810

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
	.align	32
	#Procedure 0x407820

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_673
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_673:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407840

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
	je	.label_674
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_675
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
	je	.label_677
.label_675:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_679
	mov	rax, qword ptr [rax + 8]
	jmp	.label_674
.label_679:
	mov	r12b, 1
	mov	r14, rbp
.label_677:
	xor	eax, eax
	test	r15d, r15d
	js	.label_674
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_674
	test	r12b, r12b
	je	.label_676
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_676
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_678
	cmp	rax, rbp
	je	.label_676
	call	abort
.label_678:
	mov	rdi, rbp
	call	free
.label_676:
	mov	rax, qword ptr [rsp]
.label_674:
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
	.align	32
	#Procedure 0x407940

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
	.align	32
	#Procedure 0x407950

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407960

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_680
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_681]]
.label_680:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_682
	cmp	rcx, 0x1021994
	je	.label_682
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_682
	mov	al, 1
.label_682:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079b0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_688
	nop	word ptr [rax + rax]
.label_687:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_688:
	test	rcx, rcx
	je	.label_684
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_687
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_687
.label_684:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_685
	nop	word ptr cs:[rax + rax]
.label_686:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_683
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_683:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_689
	mov	rcx, qword ptr [rsi + 8]
.label_689:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_686
.label_685:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a40

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
	.align	32
	#Procedure 0x407a70
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
	.align	32
	#Procedure 0x407a80

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
	je	.label_690
	cmp	r15, -2
	jb	.label_690
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_690
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_690:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ae0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_691
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_691
.label_692:
	ret	
.label_691:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_692
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b10
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_693
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_693:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b40
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
	.align	32
	#Procedure 0x407b50
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_694
.label_695:
	ret	
.label_694:
	cmp	edi, 0x7f
	je	.label_695
	xor	eax, eax
	jmp	.label_695
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b70
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b80
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b90
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ba0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_696
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_697]]
.label_698:
	ret	
.label_696:
	xor	eax, eax
	jmp	.label_698
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bd0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_699
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_699:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c00
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_700
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_700:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c20
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
	.align	32
	#Procedure 0x407c30
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
	.align	32
	#Procedure 0x407c40

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
	je	.label_701
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_702
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_702
.label_701:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_702
	test	cl, cl
	jne	.label_702
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_702:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cb0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cc0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_703
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_708
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_708
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_709
.label_708:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_704
	mov	al, 1
	test	rbx, rbx
	je	.label_709
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_704:
	xor	eax, eax
.label_709:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_703:
	mov	edi, OFFSET FLAT:label_705
	mov	esi, OFFSET FLAT:label_706
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_707
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d40

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d50

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_710
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_710:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_711
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_713
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_712
.label_713:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_712:
	mov	edx, dword ptr [rax]
.label_711:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_715
	cmp	byte ptr [rax], 0x43
	jne	.label_717
	cmp	byte ptr [rax + 1], 0
	je	.label_714
.label_717:
	mov	esi, OFFSET FLAT:label_716
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_715
.label_714:
	xor	ebx, ebx
.label_715:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e60

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e70

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e80

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e90

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_718
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_720:
	cmp	qword ptr [rcx], 0
	je	.label_719
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_721:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_721
	cmp	rsi, rax
	cmova	rax, rsi
.label_719:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_720
.label_718:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ee0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_722
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_724:
	cmp	qword ptr [rsi], 0
	je	.label_727
	mov	rax, rsi
	nop	dword ptr [rax]
.label_725:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_725
	inc	rdx
.label_727:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_724
.label_722:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_723
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_726
.label_723:
	xor	eax, eax
.label_726:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f40
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
	mov	edx, OFFSET FLAT:label_728
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_733
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_729]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_730]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_731]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_732
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_734
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
	.align	32
	#Procedure 0x408030

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
	je	.label_736
	test	rbx, rbx
	je	.label_736
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_735:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_737
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_737
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_735
	jmp	.label_736
.label_737:
	mov	r15, qword ptr [rbx]
.label_736:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408090

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
	jae	.label_738
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_738:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080c0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_739
	mov	rcx, qword ptr [rdi]
	jmp	.label_741
	nop	
.label_742:
	add	rcx, 0x10
.label_741:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_740
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_742
.label_739:
	ret	
.label_740:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080f0
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
.label_747:
	cmp	qword ptr [rcx], rbx
	jne	.label_743
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_744
.label_743:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_747
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_746:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_745
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_746
	jmp	.label_745
.label_744:
	mov	rcx, qword ptr [rdx]
.label_745:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408160
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_748
	xor	eax, eax
.label_751:
	cmp	qword ptr [r8], 0
	je	.label_749
	test	r8, r8
	je	.label_749
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_750:
	cmp	rax, rdx
	jae	.label_748
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_750
.label_749:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_751
.label_748:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081b0
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
	jae	.label_752
	xor	ebx, ebx
.label_754:
	cmp	qword ptr [r13], 0
	je	.label_753
	test	r13, r13
	je	.label_753
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_755:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_752
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_755
.label_753:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_754
.label_752:
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
	.align	32
	#Procedure 0x408230
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_756
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_757:
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
	jne	.label_757
.label_756:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408270
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_758]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408290

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
	je	.label_760
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_759
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_759
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_759
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
	jmp	.label_760
.label_759:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_760:
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
	.align	32
	#Procedure 0x408370

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
	.align	32
	#Procedure 0x408390

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_761
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_762]]
	jbe	.label_763
	movss	xmm1,  dword ptr [dword ptr [rip + label_766]]
	ucomiss	xmm1, xmm0
	jbe	.label_763
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_765]]
	jbe	.label_763
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_763
	addss	xmm1,  dword ptr [dword ptr [rip + label_762]]
	ucomiss	xmm0, xmm1
	jbe	.label_763
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_764]]
	ucomiss	xmm2, xmm0
	jb	.label_763
	ucomiss	xmm0, xmm1
	ja	.label_761
.label_763:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_761:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_767
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_772
	cvtsi2ss	xmm0, rdi
	jmp	.label_768
.label_772:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_768:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_769]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_770]]
	jae	.label_771
.label_767:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_771:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4084a0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_773
	nop	dword ptr [rax]
.label_779:
	add	r14, 0x10
.label_773:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_778
	cmp	qword ptr [r14], 0
	je	.label_779
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_774
	nop	word ptr cs:[rax + rax]
.label_776:
	test	cl, 1
	je	.label_777
	mov	rdi, qword ptr [rbx]
	call	rax
.label_777:
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
	jne	.label_776
.label_774:
	test	cl, cl
	je	.label_775
	mov	rdi, qword ptr [r14]
	call	rax
.label_775:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_779
.label_778:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408540

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_780
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_780
	mov	r14, qword ptr [r15]
	jmp	.label_787
	nop	dword ptr [rax + rax]
.label_783:
	add	r14, 0x10
.label_787:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_780
	cmp	qword ptr [r14], 0
	je	.label_783
	test	r14, r14
	je	.label_783
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_781:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_781
	jmp	.label_783
.label_780:
	mov	r14, qword ptr [r15]
	jmp	.label_785
	nop	word ptr [rax + rax]
.label_784:
	add	r14, 0x10
.label_785:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_788
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_784
	nop	word ptr cs:[rax + rax]
.label_782:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_782
	jmp	.label_784
.label_788:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_786
	nop	dword ptr [rax]
.label_789:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_789
.label_786:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408610

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
	je	.label_790
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_791
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_790
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
	je	.label_792
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
	jmp	.label_791
.label_792:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_793
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_793
	mov	rdi, qword ptr [rsp]
	call	free
.label_790:
	xor	r14d, r14d
.label_791:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_793:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740

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
	jae	.label_794
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_801:
	cmp	qword ptr [r15], 0
	je	.label_798
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_803
	nop	word ptr cs:[rax + rax]
.label_797:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_799
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_800
	nop	word ptr cs:[rax + rax]
.label_799:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_800:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_797
.label_803:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_798
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_802
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_795
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_796
.label_802:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_796:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_798:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_801
	mov	al, 1
.label_794:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_795:
	xor	eax, eax
	jmp	.label_794
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408860

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
	je	.label_808
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_806
	test	rbx, rbx
	je	.label_807
	mov	qword ptr [rbx], rax
	jmp	.label_807
.label_806:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_812
	cvtsi2ss	xmm0, rcx
	jmp	.label_817
.label_812:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_817:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_805
	cvtsi2ss	xmm1, rax
	jmp	.label_811
.label_805:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_811:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_813
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_804
	cvtsi2ss	xmm2, rcx
	jmp	.label_809
.label_804:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_809:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_815
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_818
.label_815:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_818:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_813
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_814
	mulss	xmm0, xmm1
.label_814:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_770]]
	jae	.label_807
	movss	xmm1,  dword ptr [dword ptr [rip + label_769]]
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
	je	.label_807
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_808
.label_813:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_810
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_807
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_816
.label_810:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_816:
	mov	ebp, 1
.label_807:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_808:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a40

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
	je	.label_820
	cmp	rsi, r13
	je	.label_822
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_825
.label_822:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_820
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_821
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_823
.label_825:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_820
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_824:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_819
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_819
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_824
	jmp	.label_820
.label_821:
	mov	qword ptr [rbx], 0
	jmp	.label_820
.label_819:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_820
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_823:
	mov	rdi, r14
	call	free_entry
.label_820:
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
	.align	32
	#Procedure 0x408b10

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_826
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_826:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b40

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
	je	.label_827
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_827:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b70

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
	je	.label_832
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_831
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_837
	cvtsi2ss	xmm0, rax
	jmp	.label_829
.label_837:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_829:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_836
	cvtsi2ss	xmm1, rcx
	jmp	.label_839
.label_836:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_839:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_831
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_835
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_838
.label_835:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_838:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_830
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_834
.label_830:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_834:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_831
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_840
	mulss	xmm0, dword ptr [rcx + 8]
.label_840:
	movss	xmm1,  dword ptr [dword ptr [rip + label_769]]
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
	jne	.label_831
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_833
	nop	dword ptr [rax + rax]
.label_828:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_828
.label_833:
	mov	qword ptr [r15 + 0x48], 0
.label_831:
	mov	rax, r14
.label_832:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00

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
	jmp	.label_841
	nop	
.label_842:
	add	rbx, 2
.label_841:
	cmp	rbx, -1
	je	.label_843
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_842
	mov	r14, rbx
.label_843:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d50

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_844
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_845:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_844
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_845
.label_844:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408da0

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
	.align	32
	#Procedure 0x408dc0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_846:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_846
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408de0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408df0

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
	jne	.label_847
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_847:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e30

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_848
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_849
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_849:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_848:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e70

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_38
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_850
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_851
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_851:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_852
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_853
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_854
.label_853:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_854:
	mov	ecx, dword ptr [rax]
.label_852:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f60

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
	js	.label_856
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_855
	mov	dword ptr [r14], ebp
	jmp	.label_856
.label_855:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_856:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408fb0

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
	ja	.label_857
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
	jmp	.label_858
.label_857:
	mov	eax, ebx
.label_858:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409000

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_860
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
	je	.label_860
.label_859:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_860
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_861
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_861:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_860:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409080

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_862
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_862:
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
	ja	.label_864
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_863
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_865
	test	esi, esi
	jne	.label_864
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_869
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_872
.label_864:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_870
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_865
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_868
.label_863:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_865:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_873
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_875
.label_873:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_875:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_868:
	cmp	eax, 6
	jne	.label_870
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_871
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_874
.label_870:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_866
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_867
.label_869:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_872:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_871:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_874:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_866:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_867:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409240

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
	.align	32
	#Procedure 0x409250

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_877
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_879
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_879
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_876
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_880
.label_879:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_880
.label_877:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_880:
	test	ebx, ebx
	js	.label_876
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_876
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_878
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_876
.label_878:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_876:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409320

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
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_881:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409350

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_882
	ret	
.label_882:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409370

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
	jne	.label_883
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_883
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_884
.label_883:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_884:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_885
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_885:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4093e0

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
	.align	32
	#Procedure 0x409400
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409410
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409420
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409430
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409440
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409450

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409460
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
	.align	32
	#Procedure 0x409480
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
	.align	32
	#Procedure 0x4094a0
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
	.align	32
	#Procedure 0x4094c0
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
	.align	32
	#Procedure 0x4094e0

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
	.align	32
	#Procedure 0x4095a0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095c0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x4095d0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
