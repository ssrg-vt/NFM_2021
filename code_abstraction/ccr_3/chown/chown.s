	.section	.text
	.align	16
	#Procedure 0x401b70

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_14
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_32:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x401e60

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
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_46
	mov	esi, OFFSET FLAT:label_47
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_46
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
.label_50:
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, r14d
	nop	dword ptr [rax]
.label_41:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x85
	ja	.label_39
	mov	eax, 0x11
	jmp	qword ptr [(rcx * 8) + label_44]
.label_1123:
	mov	eax, 2
	jmp	.label_41
.label_1124:
	mov	eax, 0x10
	jmp	.label_41
.label_1125:
	mov	byte ptr [rsp + 0x24], 1
	mov	eax, r14d
	jmp	.label_41
.label_1126:
	mov	dword ptr [rsp + 0x20], 1
	mov	eax, r14d
	jmp	.label_41
.label_1127:
	mov	byte ptr [rsp + 0x31], 1
	mov	eax, r14d
	jmp	.label_41
.label_1128:
	xor	r12d, r12d
	mov	eax, r14d
	jmp	.label_41
.label_1129:
	mov	dword ptr [rsp + 0x20], 0
	mov	eax, r14d
	jmp	.label_41
.label_1130:
	mov	r12d, 1
	mov	eax, r14d
	jmp	.label_41
.label_1131:
	mov	rdi, qword ptr [rip + optarg]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0x14]
	mov	rdx, r15
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, r14d
	je	.label_41
	jmp	.label_48
.label_1132:
	xor	eax, eax
	jmp	.label_50
.label_1133:
	mov	al, 1
	jmp	.label_50
.label_1134:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + reference_file],  rax
	mov	eax, r14d
	jmp	.label_41
.label_1122:
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x24], 0
	je	.label_58
	cmp	r14d, 0x10
	jne	.label_62
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_62:
	mov	r15d, r14d
.label_58:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x30]
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi, qword ptr [rip + reference_file]
	cmp	rsi, 1
	mov	edx, 1
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_52
	test	rsi, rsi
	je	.label_57
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_60
	mov	edi, dword ptr [rsp + 0x64]
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 8], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, dword ptr [rsp + 0x68]
	call	gid_to_name
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_38
.label_57:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x40]
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_49
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_54
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	je	.label_54
	mov	edi, OFFSET FLAT:label_40
	call	xstrdup
	mov	qword ptr [rsp + 0x38], rax
.label_54:
	inc	dword ptr [rip + optind]
.label_38:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	je	.label_56
	mov	al, byte ptr [rsp + 0x24]
	test	al, al
	je	.label_56
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_66
.label_56:
	or	r15d, 0x400
	movsxd	rax, dword ptr [rip + optind]
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
.label_39:
	cmp	eax, 0xffffff7d
	je	.label_42
	cmp	eax, 0xffffff7e
	jne	.label_61
	xor	edi, edi
	call	usage
.label_61:
	mov	edi, 1
	call	usage
.label_42:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_9
	mov	r8d, OFFSET FLAT:label_64
	mov	r9d, OFFSET FLAT:label_65
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_48:
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_51
.label_52:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_53
	mov	esi, OFFSET FLAT:label_55
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
.label_60:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + reference_file]
	mov	edi, 4
	jmp	.label_59
.label_66:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_45
.label_59:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_53:
	mov	esi, OFFSET FLAT:label_36
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
.label_49:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8]
.label_51:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

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
	#Procedure 0x402300
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
	#Procedure 0x402320

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_68
	mov	rdi, qword ptr [rax]
	jmp	.label_67
.label_68:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_67:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
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
	#Procedure 0x402380

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
	mov	dword ptr [rsp + 0x2c], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 4], edx
	mov	eax, esi
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	dword ptr [rsp + 0x28], r9d
	and	r9d, r8d
	xor	esi, esi
	mov	dword ptr [rsp + 0x3c], r9d
	cmp	r9d, -1
	jne	.label_127
	cmp	byte ptr [r13 + 0x10], 0
	jne	.label_127
	xor	esi, esi
	cmp	dword ptr [r13], 2
	sete	sil
	shl	esi, 3
.label_127:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	mov	r12b, 1
	test	rdx, rdx
	je	.label_169
	mov	bpl, 1
	mov	qword ptr [rsp + 0x40], r14
	jmp	.label_112
.label_79:
	mov	esi, OFFSET FLAT:label_129
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_76
.label_165:
	mov	edi, r12d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_87
	nop	
.label_112:
	mov	r9, qword ptr [rdx + 0x30]
	mov	rbx, qword ptr [rdx + 0x38]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_88
	jmp	qword ptr [(rax * 8) + label_95]
.label_1065:
	cmp	byte ptr [r13 + 4], 0
	je	.label_88
	mov	rax, qword ptr [r13 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_101
	mov	rcx, qword ptr [rdx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_101
	mov	rcx, qword ptr [rdx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_101
	mov	r13, rdx
	cmp	byte ptr [rbx], 0x2f
	jne	.label_108
	cmp	byte ptr [rbx + 1], 0
	je	.label_109
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_45
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_99:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_101
.label_1066:
	mov	rdi, r14
	mov	rsi, rdx
	mov	r15, rdx
	mov	r12, r9
	call	cycle_warning_required
	mov	r9, r12
	mov	rdx, r15
	test	al, al
	je	.label_88
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	r13, qword ptr [rsp + 0x1b0]
	call	error
	jmp	.label_101
.label_1067:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_160
	xor	r12d, r12d
	jmp	.label_90
.label_1068:
	mov	r12b, 1
	cmp	byte ptr [r13 + 4], 0
	je	.label_101
.label_88:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	cmp	dword ptr [rsp + 0x3c], -1
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_98
	cmp	dword ptr [r13], 2
	jne	.label_98
	cmp	qword ptr [r13 + 8], 0
	je	.label_71
	nop	dword ptr [rax + rax]
.label_98:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_77
	jmp	.label_84
.label_1069:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_86
	xor	r12d, r12d
	jmp	.label_90
.label_1070:
	cmp	qword ptr [rdx + 0x58], 0
	jne	.label_92
	cmp	qword ptr [rdx + 0x20], 0
	je	.label_93
.label_92:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_97
	xor	r12d, r12d
	jmp	.label_90
.label_160:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	jmp	.label_104
.label_86:
	mov	ebp, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_74
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_75
.label_97:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
.label_104:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_75:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_90
.label_71:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	al, 1
	mov	ebp, dword ptr [rsp + 0x2c]
	je	.label_126
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	eax, dword ptr [rdx + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_84
	mov	esi, dword ptr [r14 + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, r9
	lea	r15, [rsp + 0xe8]
	mov	rcx, r15
	mov	rbx, r9
	call	__fxstatat
	mov	r9, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_84
	mov	r14b, 1
	cmp	byte ptr [r13 + 0x11], 0
	je	.label_140
	xor	ebp, ebp
	jmp	.label_143
	nop	word ptr [rax + rax]
.label_84:
	cmp	ebp, -1
	je	.label_148
	mov	ecx, dword ptr [r15 + 0x1c]
	cmp	ecx, ebp
	sete	al
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_126
	cmp	ecx, ebp
	je	.label_152
	jmp	.label_126
.label_148:
	mov	al, 1
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_126
.label_152:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [r15 + 0x20], eax
	sete	al
.label_126:
	movzx	ecx, word ptr [rdx + 0x70]
	cmp	ecx, 6
	ja	.label_162
	mov	edx, 0x56
	bt	edx, ecx
	jae	.label_162
	mov	rcx, qword ptr [r13 + 8]
	test	rcx, rcx
	je	.label_162
	mov	rdx, qword ptr [r15 + 8]
	cmp	rdx, qword ptr [rcx]
	jne	.label_162
	mov	rdx, qword ptr [r15]
	cmp	rdx, qword ptr [rcx + 8]
	jne	.label_162
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_170
	cmp	byte ptr [rbp + 1], 0
	je	.label_172
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_45
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_132:
	movzx	ebp, byte ptr [rsp + 3]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_162:
	test	al, al
	je	.label_89
	mov	ebx, dword ptr [r14 + 0x2c]
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x10], 0
	je	.label_113
	cmp	dword ptr [rsp + 0x3c], -1
	je	.label_115
	movzx	eax, word ptr [r15 + 0x18]
	and	eax, 0xf000
	mov	ebp, 0x900
	cmp	eax, 0x8000
	je	.label_118
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_115
	mov	ebp, 0x10900
.label_118:
	xor	eax, eax
	mov	edi, ebx
	mov	r13, r9
	mov	rsi, r9
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_128
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 0xd
	jne	.label_130
	mov	ecx, dword ptr [r15 + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_130
	or	ebp, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsi, r13
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_166
.label_128:
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x50]
	call	__fxstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_131
	mov	rax, qword ptr [r15 + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_131
	mov	rax, qword ptr [r15]
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_131
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	eax, -1
	mov	ebx, 2
	je	.label_139
	cmp	dword ptr [rsp + 0x6c], eax
	jne	.label_131
.label_139:
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_156
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [rsp + 0x70], eax
	jne	.label_131
.label_156:
	mov	edi, r12d
	mov	esi, dword ptr [rsp + 4]
	mov	edx, dword ptr [rsp + 0x24]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_165
.label_131:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_87
.label_89:
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_90
.label_113:
	mov	r8d, 0x100
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_78
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_85
	mov	eax, r12d
.label_85:
	mov	r12b, al
	jmp	.label_78
.label_140:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_143:
	lea	r15, [rsp + 0xe8]
	xor	r12d, r12d
	jmp	.label_90
.label_93:
	mov	qword ptr [rdx + 0x20], 1
	mov	rsi, rdx
	mov	edx, 1
	mov	rdi, r14
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_101
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	jmp	.label_132
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	jmp	.label_99
.label_166:
	mov	eax, dword ptr [r14]
.label_130:
	xor	ebx, ebx
	cmp	eax, 0xd
	setne	bl
	add	ebx, 5
.label_87:
	mov	r9, r13
	add	ebx, -2
	cmp	ebx, 4
	ja	.label_120
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	qword ptr [(rbx * 8) + label_137]
.label_1148:
	mov	r14b, 1
	mov	bpl, 1
	mov	r12b, 1
	jmp	.label_90
.label_1149:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rax + 0x2c]
.label_115:
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
.label_78:
	mov	bpl, 1
	test	r12b, 1
	jne	.label_90
.label_1150:
	mov	bpl, 1
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	jne	.label_90
	call	__errno_location
	cmp	dword ptr [rsp + 4], -1
	mov	r13d, dword ptr [rax]
	je	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	jmp	.label_155
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
.label_155:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
.label_90:
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	rdx, qword ptr [r13]
	mov	rax, rdx
	shr	rax, 0x20
	cmp	edx, 2
	je	.label_149
	mov	ecx, r12d
	and	cl, 1
	test	bpl, bpl
	je	.label_73
	mov	ebx, r12d
	and	bl, r14b
	mov	r13, qword ptr [rsp + 0x1b0]
	je	.label_73
	cmp	dword ptr [rsp + 4], -1
	je	.label_80
	mov	esi, dword ptr [rsp + 4]
	cmp	dword ptr [r15 + 0x1c], esi
	jne	.label_83
.label_80:
	cmp	dword ptr [rsp + 0x24], -1
	je	.label_73
	mov	esi, dword ptr [rsp + 0x24]
	cmp	dword ptr [r15 + 0x20], esi
	jne	.label_83
	nop	dword ptr [rax]
.label_73:
	test	edx, edx
	jne	.label_149
	test	cl, cl
	movzx	eax, r14b
	lea	r14d, [rax + rax*2 + 1]
	mov	eax, 3
	cmove	r14d, eax
	test	r15, r15
	mov	ebp, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_91
	jmp	.label_102
.label_83:
	movzx	r14d, r14b
	inc	r14d
	test	cl, cl
	mov	eax, 3
	cmove	r14d, eax
.label_91:
	mov	ebx, dword ptr [r15 + 0x1c]
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_105
	mov	rdi, qword ptr [rax]
	jmp	.label_106
.label_105:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_106:
	call	xstrdup
	mov	rbp, rax
	mov	ebx, dword ptr [r15 + 0x20]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_114
	mov	rdi, qword ptr [rax]
	jmp	.label_117
.label_114:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_117:
	mov	r13, qword ptr [rsp + 0x1b0]
	call	xstrdup
	mov	qword ptr [rsp + 0x48], rax
.label_102:
	cmp	r14d, 1
	jne	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_135
.label_123:
	mov	rbx, qword ptr [r13 + 0x18]
	mov	r15, qword ptr [r13 + 0x20]
	mov	rdi, rbx
	mov	rsi, r15
	call	user_group_str
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rbp
	cmove	rdi, rbx
	test	r15, r15
	mov	rsi, qword ptr [rsp + 0x48]
	cmove	rsi, r15
	call	user_group_str
	and	r14b, 7
	cmp	r14b, 4
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_141
	cmp	r14b, 3
	je	.label_144
	cmp	r14b, 2
	jne	.label_146
	test	rbx, rbx
	je	.label_150
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	jmp	.label_82
.label_141:
	test	rbx, rbx
	je	.label_153
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	jmp	.label_82
.label_144:
	test	rax, rax
	je	.label_159
	test	rbx, rbx
	je	.label_94
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	jmp	.label_82
.label_150:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_164
	mov	esi, OFFSET FLAT:label_161
	jmp	.label_82
.label_153:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_167
	mov	esi, OFFSET FLAT:label_133
	jmp	.label_82
.label_159:
	xor	edi, edi
	test	rbx, rbx
	je	.label_168
	mov	esi, OFFSET FLAT:label_145
	jmp	.label_111
.label_94:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_171
	mov	esi, OFFSET FLAT:label_173
	jmp	.label_82
.label_164:
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_82
.label_167:
	mov	esi, OFFSET FLAT:label_116
	jmp	.label_82
.label_168:
	test	r15, r15
	je	.label_79
	mov	esi, OFFSET FLAT:label_110
	jmp	.label_111
.label_171:
	mov	esi, OFFSET FLAT:label_129
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
.label_76:
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r15
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	call	free
.label_135:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	al, byte ptr [r13 + 4]
.label_149:
	test	al, al
	mov	r14, qword ptr [rsp + 0x40]
	jne	.label_107
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x30]
	call	rpl_fts_set
.label_107:
	and	r12b, 1
	movzx	ebp, byte ptr [rsp + 3]
.label_101:
	and	r12b, bpl
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	test	rdx, rdx
	mov	ebp, r12d
	jne	.label_112
.label_169:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_121
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	je	.label_122
	xor	r12d, r12d
	jmp	.label_121
.label_122:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_121:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_134
	mov	ebx, dword ptr [rbp]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_134:
	mov	eax, r12d
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_146:
	call	abort
.label_120:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_177
	test	r14, r14
	je	.label_174
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
	jmp	.label_175
.label_177:
	xor	r15d, r15d
	test	r14, r14
	je	.label_175
	mov	rdi, r14
	jmp	.label_176
.label_175:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_174:
	mov	rdi, rbx
.label_176:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403000
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_182
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_180
	cmp	dword ptr [rbp], 0x20
	jne	.label_180
.label_182:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_179
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_178
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_74
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_179:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_178:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_183:
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
	ja	.label_183
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_184
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_186
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_186
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_189
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_189:
	mov	rbx, r14
.label_186:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_184:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_185
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0
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
	#Procedure 0x403210
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
	#Procedure 0x403220
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
	#Procedure 0x403230
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
	#Procedure 0x403270
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
	#Procedure 0x403290
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_190
	test	rdx, rdx
	je	.label_190
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_190:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	#Procedure 0x403340

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_208
	nop	
.label_205:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_200
	or	al, dl
	jne	.label_200
	test	dil, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_200
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_208
	jmp	.label_200
.label_1157:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_214
	test	rbp, rbp
	je	.label_219
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_219:
	mov	r14d, 1
	jmp	.label_222
.label_1158:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_223
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_224
.label_214:
	xor	r14d, r14d
.label_222:
	mov	eax, OFFSET FLAT:label_223
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_235
	nop	
.label_208:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_243
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_256]
.label_1159:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_254
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_259
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1160:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_269
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_269
	xor	r14d, r14d
	nop	
.label_279:
	cmp	r14, rbp
	jae	.label_314
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_314:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_279
.label_269:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_224
.label_1152:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_224
.label_1155:
	mov	al, 1
.label_1153:
	mov	r12b, 1
.label_1156:
	test	r12b, 1
	mov	cl, 1
	je	.label_301
	mov	ecx, eax
.label_301:
	mov	al, cl
.label_1154:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_304
	test	rbp, rbp
	je	.label_310
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_310:
	mov	r14d, 1
	jmp	.label_311
.label_304:
	xor	r14d, r14d
.label_311:
	mov	ecx, OFFSET FLAT:label_259
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_235:
	mov	sil, r12b
.label_224:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_317
	nop	word ptr cs:[rax + rax]
.label_192:
	inc	r12
.label_317:
	cmp	r11, -1
	je	.label_228
	cmp	r12, r11
	jne	.label_231
	jmp	.label_234
	nop	word ptr cs:[rax + rax]
.label_228:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_238
.label_231:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_244
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_248
	cmp	r11, -1
	jne	.label_248
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_248:
	cmp	rbx, r11
	jbe	.label_258
.label_244:
	xor	esi, esi
.label_280:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_260
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_266]
.label_1085:
	test	r12, r12
	jne	.label_218
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_258:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_278
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_280
	jmp	.label_226
.label_278:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_280
.label_1089:
	xor	eax, eax
	cmp	r11, -1
	je	.label_296
	test	r12, r12
	jne	.label_300
	cmp	r11, 1
	je	.label_202
	xor	r13d, r13d
	jmp	.label_199
.label_1078:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_306
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_226
	cmp	r8d, 2
	jne	.label_265
	mov	eax, r9d
	and	al, 1
	jne	.label_265
	cmp	r14, rbp
	jae	.label_315
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_316
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_316:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_194
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	add	r14, 3
	mov	r9b, 1
.label_265:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_201
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_201:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_210
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_210
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_210
	cmp	r14, rbp
	jae	.label_212
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_212:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_293
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_293:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_199
.label_1079:
	mov	bl, 0x62
	jmp	.label_230
.label_1080:
	mov	cl, 0x74
	jmp	.label_225
.label_1081:
	mov	bl, 0x76
	jmp	.label_230
.label_1082:
	mov	bl, 0x66
	jmp	.label_230
.label_1083:
	mov	cl, 0x72
	jmp	.label_225
.label_1086:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_241
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_215
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_250
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_262
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_268
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	add	r14, 3
	xor	r9d, r9d
.label_241:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_199
.label_1087:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_273
	cmp	r8d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_218
	jmp	.label_215
.label_1088:
	cmp	r8d, 2
	jne	.label_282
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_215
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_289
.label_260:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_291
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_303
.label_296:
	test	r12, r12
	jne	.label_312
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_312
.label_202:
	mov	dl, 1
.label_1084:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_215
	xor	eax, eax
	mov	r13b, dl
.label_199:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_191
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_195
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_197
.label_195:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_220
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_209
	nop	dword ptr [rax]
.label_197:
	test	sil, sil
.label_209:
	mov	ebx, r15d
	je	.label_227
	jmp	.label_217
.label_220:
	mov	ebx, r15d
	jmp	.label_217
.label_306:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_192
	xor	r15d, r15d
	jmp	.label_218
.label_282:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_225
	xor	eax, eax
	mov	r15b, 0x5c
.label_289:
	xor	r13d, r13d
	jmp	.label_227
.label_225:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_215
.label_230:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_199
	nop	
.label_217:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_226
	cmp	r8d, 2
	jne	.label_242
	mov	eax, r9d
	and	al, 1
	jne	.label_242
	cmp	r14, rbp
	jae	.label_247
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_247:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_251:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_253
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	add	r14, 3
	mov	r9b, 1
.label_242:
	cmp	r14, rbp
	jae	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_196:
	inc	r14
	jmp	.label_313
.label_291:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_267
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_267:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_276
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_271:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_283
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_297
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_264
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_308
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_232:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_193
	bt	rsi, rdx
	jb	.label_215
.label_193:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_232
.label_308:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_198
	xor	r13d, r13d
.label_198:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_271
	jmp	.label_211
.label_210:
	xor	r13d, r13d
	jmp	.label_199
.label_312:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_199
.label_273:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_218
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_218
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_218
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_272
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_295
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_237
	cmp	r14, rbp
	jae	.label_239
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_245
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_261
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_261:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_287
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_287:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_295:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_199
.label_218:
	xor	eax, eax
.label_300:
	xor	r13d, r13d
	jmp	.label_199
.label_276:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_299:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_206
	cmp	rbp, -1
	je	.label_281
	cmp	rbp, -2
	je	.label_283
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_288
	xor	r13d, r13d
.label_288:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_299
	jmp	.label_211
.label_283:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_307
	lea	rax, [r10 + r12]
.label_290:
	cmp	byte ptr [rax + rsi], 0
	je	.label_307
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_290
.label_307:
	mov	qword ptr [rsp + 0x40], rsi
.label_297:
	xor	r13d, r13d
	jmp	.label_264
.label_281:
	xor	r13d, r13d
.label_206:
	mov	r10, qword ptr [rsp + 0x28]
.label_264:
	mov	r12, qword ptr [rsp + 0x40]
.label_211:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_303:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_204
	test	al, al
	je	.label_204
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_199
.label_204:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_207
	nop	word ptr [rax + rax]
.label_298:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_207:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_216
	test	sil, 1
	je	.label_213
	cmp	r14, rbp
	jae	.label_221
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_221:
	inc	r14
	xor	esi, esi
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_226
	cmp	r8d, 2
	jne	.label_233
	mov	eax, r9d
	and	al, 1
	jne	.label_233
	cmp	r14, rbp
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_284
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_284:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_292
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_292:
	add	r14, 3
	mov	r9b, 1
.label_233:
	cmp	r14, rbp
	jae	.label_252
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_229
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_229:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_263
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_263:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_213:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_227
	test	r9b, 1
	je	.label_274
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_270
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_277
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_277:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_246
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_246:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_274
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	rbx, rcx
.label_274:
	cmp	r14, rbp
	jae	.label_298
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_298
	nop	
.label_227:
	test	r9b, 1
	je	.label_305
	and	al, 1
	jne	.label_305
	cmp	r14, rbp
	jae	.label_309
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_309:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_286
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_286:
	add	r14, 2
	xor	r9d, r9d
.label_305:
	mov	ebx, r15d
.label_313:
	cmp	r14, rbp
	jae	.label_302
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_302:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_192
.label_272:
	xor	r13d, r13d
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rcx, r12
.label_238:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_205
	or	al, dl
	jne	.label_205
	mov	r11, rcx
	jmp	.label_226
.label_215:
	mov	eax, 2
.label_285:
	mov	qword ptr [rsp + 0x38], rax
.label_226:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_294:
	mov	r14, rax
.label_275:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_200:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_240
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_249
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_249
	inc	rdx
	nop	dword ptr [rax + rax]
.label_257:
	cmp	r14, rbp
	jae	.label_255
	mov	byte ptr [rcx + r14], al
.label_255:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_257
	jmp	.label_249
.label_203:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_294
.label_240:
	mov	rcx, qword ptr [rsp + 0x10]
.label_249:
	cmp	r14, rbp
	jae	.label_275
	mov	byte ptr [rcx + r14], 0
	jmp	.label_275
.label_237:
	mov	eax, 5
	jmp	.label_285
.label_243:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404170
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
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
	call	xmalloc
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
	je	.label_318
	mov	qword ptr [rax], rbx
.label_318:
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
	#Procedure 0x404330
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_319
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_321
.label_319:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_323
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_322], OFFSET FLAT:slot0
.label_323:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_320
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_320:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
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
	js	.label_324
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_327
	cmp	r12d, 0x7fffffff
	je	.label_329
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_325
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_325:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_327:
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
	jbe	.label_330
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_326
.label_330:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_328
	mov	rdi, r14
	call	free
.label_328:
	mov	rdi, r15
	call	xmalloc
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
.label_326:
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
.label_324:
	call	abort
.label_329:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0
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
	#Procedure 0x4045d0
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
	#Procedure 0x4045f0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_331
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_331:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404660
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_332
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_332:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_333
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_333:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_334
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_334:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
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
	#Procedure 0x404820
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
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
	#Procedure 0x404890

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x4048f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x404950

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_338
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_338:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_339
	test	rdx, rdx
	je	.label_339
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_339:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a60
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_340
	test	rdx, rdx
	je	.label_340
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_340:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_341
	test	rsi, rsi
	je	.label_341
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_341:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b40
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_342
	test	rsi, rsi
	je	.label_342
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
.label_342:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bc0
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
	#Procedure 0x404be0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00

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
	#Procedure 0x404c20

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
	jne	.label_348
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_344
	cmp	ecx, 0x55
	jne	.label_343
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_343
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_343
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_343
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_343
	cmp	byte ptr [rax + 5], 0
	jne	.label_343
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_350
	mov	eax, OFFSET FLAT:label_351
	jmp	.label_347
.label_344:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_343
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_343
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_343
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_343
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_343
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_343
	cmp	byte ptr [rax + 7], 0
	je	.label_349
.label_343:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_223
	mov	eax, OFFSET FLAT:label_259
.label_347:
	cmove	rax, rcx
.label_348:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_349:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_345
	mov	eax, OFFSET FLAT:label_346
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_45
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_352
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_352:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40

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
	je	.label_353
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_353:
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
	je	.label_355
	test	r14, r14
	jne	.label_355
	test	rbp, rbp
	je	.label_355
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_355
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_354
.label_355:
	mov	rax, rbp
.label_354:
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
	#Procedure 0x404df0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, r8
	mov	r12, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ecx, 0xffffffff
	test	r12, r12
	je	.label_384
	mov	ecx, dword ptr [r12]
.label_384:
	test	r14, r14
	je	.label_361
	mov	qword ptr [r14], 0
.label_361:
	test	r9, r9
	je	.label_363
	mov	qword ptr [r9], 0
.label_363:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_367
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_374
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_374:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_381
.label_367:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_370
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_381:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_359
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_364
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_364
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_373
	mov	r15, rbx
	test	r15, r15
	jne	.label_378
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_365
	mov	rdi, qword ptr [rax]
	jmp	.label_380
.label_364:
	mov	r14d, OFFSET FLAT:label_356
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_357
	test	r15, r15
	je	.label_362
.label_357:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_371
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_371
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_376
.label_371:
	mov	r14d, OFFSET FLAT:label_387
	mov	rax, qword ptr [rsp + 0x10]
.label_376:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_362
.label_359:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_383
.label_370:
	xor	edi, edi
	jmp	.label_385
.label_373:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_362
.label_365:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_380:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_378:
	xor	r14d, r14d
.label_362:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_383:
	test	r15, r15
	je	.label_366
	test	r14, r14
	jne	.label_366
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_368
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_368
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_358
.label_366:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_377
.label_368:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_386
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_386
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_358
.label_386:
	mov	r14d, OFFSET FLAT:label_360
	mov	rbx, qword ptr [rsp + 0x18]
.label_358:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_377:
	test	r14, r14
	je	.label_369
	xor	ebx, ebx
	jmp	.label_372
.label_369:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_385:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_375
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_375:
	test	r14, r14
	je	.label_382
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_382:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_372
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_372:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_379
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_379:
	add	rsp, 0x58
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
	#Procedure 0x4050c0

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
	je	.label_388
	mov	edx, OFFSET FLAT:label_398
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_404
.label_388:
	mov	edx, OFFSET FLAT:label_405
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_393
	jmp	qword ptr [(r12 * 8) + label_394]
.label_1051:
	add	rsp, 8
	jmp	.label_392
.label_393:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_392
.label_1052:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
.label_1053:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
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
.label_1054:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
.label_1055:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
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
	jmp	.label_392
.label_1056:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	jmp	.label_392
.label_1057:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_392
.label_1058:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
	jmp	.label_392
.label_1060:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
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
	jmp	.label_392
.label_1059:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
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
.label_392:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_407:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_407
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_413
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_415
.label_413:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_415:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_411
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_414
.label_411:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_409
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_410
.label_409:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_410:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_420
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_408
.label_420:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_408:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_418
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_419
.label_418:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_419:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_412
	cmp	r10d, 0x29
	jae	.label_416
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_417
.label_416:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_417:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_412:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_421
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_421:
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
	#Procedure 0x4056d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_423
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_426
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_427
	test	rax, rax
	je	.label_426
.label_427:
	pop	rbx
	ret	
.label_426:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_428
	test	rax, rax
	je	.label_429
.label_428:
	pop	rbx
	ret	
.label_429:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_430
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_431
	test	rbx, rbx
	jne	.label_431
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_431:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_432
	test	rax, rax
	je	.label_430
.label_432:
	pop	rbx
	ret	
.label_430:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405800

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_433
	test	rbx, rbx
	jne	.label_433
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_433:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_435
	test	rax, rax
	je	.label_434
.label_435:
	pop	rbx
	ret	
.label_434:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405830
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_440
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_441
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_436
.label_440:
	test	rcx, rcx
	jne	.label_442
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_442:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_437
.label_436:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_439
	test	rbx, rbx
	jne	.label_439
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_439:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_438
	test	rax, rax
	je	.label_441
.label_438:
	pop	rbx
	ret	
.label_441:
	call	xalloc_die
.label_437:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_443
	test	rax, rax
	je	.label_444
.label_443:
	pop	rbx
	ret	
.label_444:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_447
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_449
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_446
	call	free
	xor	eax, eax
	jmp	.label_448
.label_447:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_445
	mov	qword ptr [rsi], rbx
.label_446:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_448
	test	rax, rax
	je	.label_445
.label_448:
	pop	rbx
	ret	
.label_445:
	call	xalloc_die
.label_449:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405960
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
	je	.label_451
	test	r14, r14
	je	.label_450
.label_451:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_450:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_452
	call	rpl_calloc
	test	rax, rax
	je	.label_452
	pop	rcx
	ret	
.label_452:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0

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
	je	.label_453
	test	r15, r15
	je	.label_454
.label_453:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_454:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a10

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
	je	.label_456
	test	r15, r15
	je	.label_455
.label_456:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_455:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_74
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a90

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_459
	pop	rcx
	ret	
.label_459:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_458
	mov	edi, OFFSET FLAT:label_460
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_462
	call	__assert_fail
.label_458:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_463
	cmp	ecx, 0x11
	jne	.label_464
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_463:
	ret	
.label_464:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405af0

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
	jae	.label_480
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_473:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_473
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_469
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_476
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_467
	cmp	eax, 0x22
	jne	.label_469
	mov	ebx, 1
.label_467:
	test	r14, r14
	jne	.label_470
	jmp	.label_472
.label_476:
	test	r14, r14
	je	.label_469
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_469
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_469
.label_470:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_472
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_479
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_468
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_468
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_468
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_475
	cmp	eax, 0x44
	je	.label_475
	cmp	eax, 0x69
	jne	.label_468
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_468
.label_475:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_468:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_479
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_465]
.label_1137:
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
	jmp	.label_466
.label_479:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_477
.label_1138:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_481
.label_1139:
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
	jmp	.label_466
.label_1141:
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
	jmp	.label_466
.label_1135:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_474
.label_1136:
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
.label_466:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_478
.label_1140:
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
	jmp	.label_478
.label_1142:
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
	jmp	.label_485
.label_1143:
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
.label_485:
	movzx	eax, dl
.label_481:
	and	eax, 1
.label_478:
	mov	rbp, rsi
.label_471:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_472:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_477:
	mov	r13d, ebx
.label_469:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1144:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_474:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_471
.label_1145:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_471
.label_480:
	mov	edi, OFFSET FLAT:label_482
	mov	esi, OFFSET FLAT:label_483
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_484
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406110

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_486
	test	rsi, rsi
	mov	ecx, 1
	je	.label_487
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_487
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_486:
	mov	ecx, 1
.label_487:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406160

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
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_502
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_502
	test	bl, 0x12
	je	.label_502
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_512
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	or	eax, 4
	test	bl, 2
	cmove	eax, ebx
	mov	dword ptr [r15 + 0x48], eax
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_520
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_494:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_494
	inc	rbp
	mov	ebx, r13d
.label_520:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_497
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_507
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_511
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
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
.label_507:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_505
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_505:
	xor	r14d, r14d
	test	r13, r13
	je	.label_491
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_495
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_525:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_499
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_499
	nop	dword ptr [rax]
.label_504:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_499
	dec	rbx
	cmp	rbx, 1
	ja	.label_504
	nop	word ptr cs:[rax + rax]
.label_499:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_513
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	dword ptr [r15 + 0x40], 0
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	mov	rbx, r14
	test	rbx, rbx
	setne	al
	test	byte ptr [rsp + 0xf], al
	je	.label_521
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_493
.label_521:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_493:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_498
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_500
.label_498:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_500
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_500:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_525
	jmp	.label_518
.label_502:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_501:
	xor	eax, eax
.label_512:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_497:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_522
.label_495:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_524:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_527
	mov	r14, rbx
	add	r14, 0x108
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_489
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_509
.label_489:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_509:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_514
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_519
.label_514:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_519
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_519:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_524
.label_518:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_526
	cmp	r12, 2
	jb	.label_526
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_526:
	mov	r12, qword ptr [rsp + 0x18]
.label_491:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_510
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], r15
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	mov	qword ptr [rax + 0x10], r14
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_492
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_515
	jmp	.label_516
.label_511:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_517
.label_510:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_516
.label_492:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_516
	mov	rdi, rax
	call	cycle_check_init
.label_515:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_508
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_506
	mov	edi, OFFSET FLAT:label_503
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_488
.label_527:
	mov	r14, r15
.label_513:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_516:
	test	r14, r14
	je	.label_490
	nop	dword ptr [rax]
.label_496:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_523
	call	closedir
.label_523:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_496
.label_490:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_517:
	mov	rdi, rbp
.label_522:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_501
.label_506:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_503
	xor	eax, eax
	call	openat_safer
.label_488:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_508
	or	byte ptr [r15 + 0x48], 4
.label_508:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_512
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_535
	test	al, 1
	je	.label_535
	mov	dl, 1
.label_535:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_528
	and	eax, 2
	jne	.label_528
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_529
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_531
.label_528:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_529
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_531
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_536
	mov	eax, dword ptr [r14]
.label_531:
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
.label_530:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_529:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_537
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_530
	cmp	ecx, 0x4000
	jne	.label_532
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_533
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_533
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_533:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_530
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_534
	cmp	dl, 0x2e
	jne	.label_530
	test	ecx, 0xff0000
	jne	.label_530
.label_534:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_530
.label_537:
	mov	ax, 8
	jmp	.label_530
.label_532:
	mov	ax, 3
	jmp	.label_530
.label_536:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_530
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406940

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
	jae	.label_538
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_539
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_539
	mov	qword ptr [r13], rdi
	jmp	.label_542
.label_538:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_542:
	test	rbx, rbx
	je	.label_546
	nop	dword ptr [rax]
.label_548:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_548
	mov	rdi, qword ptr [r13]
.label_546:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_543
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_547
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_549
	mov	rdx, rsi
	jmp	.label_540
.label_539:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_544
.label_549:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_545:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_545
.label_540:
	test	rcx, rcx
	je	.label_547
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_541:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_541
.label_547:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_543:
	mov	qword ptr [rcx + 0x10], 0
.label_544:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ac0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_558
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_560
	nop	word ptr cs:[rax + rax]
.label_567:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_564
	mov	rbx, qword ptr [rdi + 8]
.label_564:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_567
	jmp	.label_568
.label_560:
	mov	rbx, rdi
.label_568:
	mov	rdi, rbx
	call	free
.label_558:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_552
	nop	word ptr cs:[rax + rax]
.label_556:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_559
	call	closedir
.label_559:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_556
.label_552:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_562
	xor	ebp, ebp
	test	al, 4
	jne	.label_551
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_566
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_566:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_550
	jmp	.label_551
.label_562:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_551
	call	close
.label_550:
	test	eax, eax
	je	.label_551
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_551:
	lea	rbx, [r14 + 0x60]
	jmp	.label_554
	nop	dword ptr [rax + rax]
.label_555:
	mov	edi, eax
	call	close
.label_554:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_557
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_555
	jmp	.label_554
.label_557:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_561
	call	hash_free
.label_561:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_563
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_565
	call	hash_free
	jmp	.label_565
.label_563:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_565:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_553
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_553:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c30

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	xor	ebx, ebx
	test	r15, r15
	je	.label_577
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_577
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_584
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_586
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_593
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_588
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_588
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_591
	mov	edi, OFFSET FLAT:label_503
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_597
.label_584:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_577
.label_586:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_603
.label_593:
	lea	r12, [r15 + 0x70]
.label_603:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_606
	cmp	edx, 4
	je	.label_607
	test	al, 0x40
	je	.label_609
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_607
.label_609:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_611
	test	ah, 0x10
	jne	.label_614
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_574
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
.label_606:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_621
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_625
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_606
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_596
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_598
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_598
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_629
	mov	edi, OFFSET FLAT:label_503
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_570
.label_572:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_617:
	test	rax, rax
	jne	.label_572
	jmp	.label_574
.label_607:
	test	ecx, 0x20000
	je	.label_576
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_576:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_580
	nop	word ptr cs:[rax + rax]
.label_587:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_583
	call	closedir
.label_583:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_587
	mov	qword ptr [r14 + 8], 0
.label_580:
	mov	word ptr [r15 + 0x70], 6
.label_624:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_577
.label_621:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_590
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_589
	mov	rdi, r15
	call	free
	jmp	.label_596
.label_625:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_599
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_577
.label_599:
	test	ax, 0x102
	je	.label_604
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_605
	call	hash_free
	jmp	.label_605
.label_614:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_613
	call	closedir
.label_613:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_616
	mov	qword ptr [r14 + 8], 0
.label_611:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_618
.label_574:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_596
.label_618:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_577
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_624
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_624
	mov	word ptr [r12], 7
	jmp	.label_624
.label_591:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_503
	xor	eax, eax
	call	openat_safer
.label_597:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_627
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_588
.label_589:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_577
	mov	rbx, qword ptr [r15 + 8]
.label_590:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_630
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_581
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_569
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_571
	test	al, 1
	jne	.label_573
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_578
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_582
.label_630:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_577
.label_627:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_588
.label_604:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_605:
	mov	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [rbx + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_592
	cmp	rbp, r15
	jne	.label_594
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_592
.label_594:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_592:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_601
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_610
.label_601:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_610
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_610
.label_569:
	mov	rdi, r14
	call	restore_initial_cwd
.label_582:
	test	eax, eax
	je	.label_573
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_573
.label_571:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_620
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_623
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_620
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_620
.label_629:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_503
	xor	eax, eax
	call	openat_safer
.label_570:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_628
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_598
.label_628:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_598:
	mov	word ptr [rbx + 0x74], 3
.label_596:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [rbx + 0x108]
	mov	rdx, qword ptr [rbx + 0x60]
	inc	rdx
	call	memmove
.label_610:
	mov	r15, rbx
.label_588:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_575
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_579
	cmp	rax, 2
	jne	.label_581
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_585
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_585
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_579
	cmp	rax, 0x58465342
	je	.label_579
.label_585:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_575
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_579
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_579
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_579:
	mov	ax, word ptr [r15 + 0x70]
.label_575:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_595
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_600
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_600:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_615
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_602
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_608
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_602
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_612
.label_595:
	mov	rbx, r15
	jmp	.label_577
.label_615:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_608
	mov	qword ptr [r15], r15
.label_612:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_577
.label_608:
	mov	rbx, r15
	jmp	.label_577
.label_602:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_577
.label_623:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_619
	cmp	esi, -0x64
	jne	.label_581
.label_619:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_622
	mov	edi, eax
	call	close
.label_622:
	mov	dword ptr [r14 + 0x2c], r15d
.label_620:
	mov	edi, dword ptr [rbp]
	call	close
.label_573:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_626
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_626
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_626:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_577:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_581:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073f0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_632
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_633
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_632:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_631
	cmp	qword ptr [rax + 0x58], 0
	js	.label_631
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_633
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_631
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_631
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_631:
	add	rsp, 0x18
	ret	
.label_633:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407480

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
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_634
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_642
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_642
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_642:
	test	eax, eax
	sete	r14b
	jmp	.label_646
.label_634:
	xor	r14d, r14d
.label_646:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_647
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_648
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_648
	and	eax, 0x200
	je	.label_648
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_648
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_648:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_639
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_641
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_645
.label_647:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_640
	and	eax, 0x200
	je	.label_640
	mov	edi, r13d
	call	close
	jmp	.label_640
.label_641:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_645:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_640
.label_639:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_636
	test	rbx, rbx
	je	.label_638
	cmp	byte ptr [rbx], 0x2e
	jne	.label_638
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_638
	cmp	byte ptr [rbx + 2], 0
	jne	.label_638
.label_636:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_644
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_643
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_643
	mov	eax, dword ptr [r15 + 0x48]
.label_638:
	test	ah, 2
	jne	.label_649
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_650
.label_649:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_651
	cmp	esi, -0x64
	jne	.label_652
.label_651:
	test	r14b, r14b
	je	.label_653
	test	al, 4
	jne	.label_635
	test	esi, esi
	js	.label_635
	mov	edi, esi
	jmp	.label_637
.label_643:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_644:
	mov	ebp, 0xffffffff
.label_650:
	test	r13d, r13d
	jns	.label_640
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_640
.label_653:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_635
	mov	edi, eax
.label_637:
	call	close
.label_635:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_640:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_652:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407670

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, esi
	mov	r15, rdi
	mov	r13, qword ptr [r15]
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x70], rdi
	je	.label_675
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_685
	mov	dword ptr [rsp], ebx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	lea	rbp, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_655
.label_675:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_696
	mov	edi, dword ptr [r15 + 0x2c]
.label_696:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_702
	test	al, 1
	je	.label_703
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_702
.label_703:
	mov	edx, 0x20000
.label_702:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_690
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_711
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_656
.label_685:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_690:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_664
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_668
.label_711:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_656
	mov	rdi, r15
	mov	rbp, rbx
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_724
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_654
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_656
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_654
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_656
.label_724:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_656
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_656:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	cmp	dword ptr [rsp], 2
	mov	r13, rbx
	mov	rbp, r12
	je	.label_663
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_674
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_674
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_680
	cmp	rax, 0x9fa0
	je	.label_674
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_674
	cmp	rax, 0x5346414f
	je	.label_674
	jmp	.label_663
.label_654:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_668
.label_680:
	test	rax, rax
	je	.label_674
	cmp	rax, 0x6969
	jne	.label_663
.label_674:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_693
.label_663:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_694
.label_693:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_698
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_698:
	test	ebp, ebp
	js	.label_704
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_709
.label_704:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_710
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_710:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_714
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_714
	call	close
.label_714:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_694:
	mov	dword ptr [rsp + 0xc], 0
.label_655:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_719
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_719:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	rax, qword ptr [r13 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x88], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x80], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	dword ptr [rsp + 8], 0
	xor	eax, eax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x30], r13
.label_728:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_659
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_681:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_667
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_670
	cmp	byte ptr [r13], 0x2e
	jne	.label_670
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_673
	test	al, al
	je	.label_688
	jmp	.label_670
	nop	dword ptr [rax]
.label_673:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_670
.label_688:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_681
	jmp	.label_683
	nop	dword ptr [rax + rax]
.label_670:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_692
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x68], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rbx, rax
	jae	.label_699
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_713
	nop	dword ptr [rax + rax]
.label_699:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_716
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_718
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_697
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_720
.label_697:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_720:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_713:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_725
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbp], 4
	jne	.label_727
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_660
	nop	
.label_727:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_660:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_662
	mov	eax, edx
	and	eax, 0x400
	jne	.label_662
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_672
	nop	dword ptr [rax + rax]
.label_662:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_715
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_715:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_682
	mov	eax, dword ptr [(rcx * 4) + label_729]
.label_682:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_672:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_689
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_689:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_701
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_701
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_706
	cmp	rax, 0x1021994
	je	.label_706
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_701
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_701
.label_706:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_701:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_728
	jmp	.label_659
.label_667:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_717
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_717:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_659
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_659
.label_683:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_659:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_657
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_726
	nop	word ptr cs:[rax + rax]
.label_731:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_726:
	test	rcx, rcx
	je	.label_730
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_731
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_731
.label_730:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_657
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_669:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_661
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_661:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_666
	mov	rdx, qword ptr [rcx + 8]
.label_666:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_669
.label_657:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_671
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_671:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_677
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_677
	cmp	dword ptr [rsp], 1
	je	.label_684
	test	r14, r14
	jne	.label_677
.label_684:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_686
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_578
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_691
.label_686:
	mov	rdi, r15
	call	restore_initial_cwd
.label_691:
	mov	rcx, rbp
	test	eax, eax
	je	.label_677
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_664
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_705:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_700
	call	closedir
.label_700:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_705
	jmp	.label_664
.label_677:
	test	r14, r14
	je	.label_707
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_708
	cmp	r14, 2
	jb	.label_712
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_712
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_664
.label_707:
	cmp	dword ptr [rsp], 3
	jne	.label_679
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_679
	movzx	eax, ax
	cmp	eax, 7
	je	.label_679
	mov	word ptr [r13 + 0x70], 6
.label_679:
	xor	r14d, r14d
	test	r12, r12
	je	.label_664
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_723:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_721
	call	closedir
.label_721:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_723
	jmp	.label_664
.label_708:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_664
.label_712:
	mov	r14, r12
	jmp	.label_664
.label_709:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_655
.label_725:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_658
	nop	word ptr [rax + rax]
.label_665:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_722
	call	closedir
.label_722:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_665
.label_658:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_668
.label_716:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_676
.label_718:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_676:
	mov	qword ptr [rsp + 0x48], r12
.label_692:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_687
	nop	word ptr cs:[rax + rax]
.label_695:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_678
	call	closedir
.label_678:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_695
.label_687:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_668:
	xor	r14d, r14d
.label_664:
	mov	rax, r14
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408120

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_732
	test	ah, 2
	jne	.label_736
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_737
.label_736:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_735
	mov	edi, eax
	call	close
.label_735:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_732:
	xor	eax, eax
.label_737:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_733
	nop	word ptr [rax + rax]
.label_734:
	mov	edi, eax
	call	close
.label_733:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_738
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_734
	jmp	.label_733
.label_738:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081a0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_739
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_739:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0
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
	jne	.label_750
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_748
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_746
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_748
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_748
.label_750:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_748
.label_746:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_741
	nop	dword ptr [rax]
.label_752:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_756
	call	closedir
.label_756:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_752
.label_741:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_755
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_755:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_743
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_743
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_743
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_745
	mov	edi, OFFSET FLAT:label_503
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_754
.label_743:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_748:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_745:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_503
	xor	eax, eax
	call	openat_safer
.label_754:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_753
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_742
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_744
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_748
.label_753:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_748
.label_742:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_747
	cmp	esi, -0x64
	jne	.label_740
.label_747:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_751
	mov	edi, eax
	call	close
.label_751:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_749
.label_744:
	mov	edi, r15d
	call	close
.label_749:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_748
.label_740:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408380

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
	#Procedure 0x408390

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_757
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_757:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0

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
	je	.label_760
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_762
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
	je	.label_763
.label_762:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_759
	mov	rax, qword ptr [rax + 8]
	jmp	.label_760
.label_759:
	mov	r12b, 1
	mov	r14, rbp
.label_763:
	xor	eax, eax
	test	r15d, r15d
	js	.label_760
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_760
	test	r12b, r12b
	je	.label_761
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_761
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_758
	cmp	rax, rbp
	je	.label_761
	call	abort
.label_758:
	mov	rdi, rbp
	call	free
.label_761:
	mov	rax, qword ptr [rsp]
.label_760:
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
	#Procedure 0x4084b0

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
	#Procedure 0x4084c0

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
	#Procedure 0x4084d0

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
	#Procedure 0x408500

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
	je	.label_764
	cmp	r15, -2
	jb	.label_764
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_764
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_764:
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
	#Procedure 0x408560

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
	jne	.label_766
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_765
	test	cl, cl
	jne	.label_765
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_765
.label_766:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_765
	call	__errno_location
	mov	dword ptr [rax], 0
.label_765:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085c0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085d0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_767
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_768
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_768
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_769
.label_768:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_770
	mov	al, 1
	test	rdx, rdx
	je	.label_769
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_770:
	xor	eax, eax
.label_769:
	ret	
.label_767:
	push	rax
	mov	edi, OFFSET FLAT:label_771
	mov	esi, OFFSET FLAT:label_772
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_773
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408640

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_774
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_774:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_775
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_777
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_776
.label_777:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_776:
	mov	edx, dword ptr [rax]
.label_775:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408710

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_779
	cmp	byte ptr [rax], 0x43
	jne	.label_781
	cmp	byte ptr [rax + 1], 0
	je	.label_778
.label_781:
	mov	esi, OFFSET FLAT:label_780
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_779
.label_778:
	xor	ebx, ebx
.label_779:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408750
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408760
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408770
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_782
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_788
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_789:
	cmp	qword ptr [rcx], 0
	je	.label_783
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_787:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_787
	cmp	rdi, rax
	cmova	rax, rdi
.label_783:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_784
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_785:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_785
	cmp	rdi, rax
	cmova	rax, rdi
.label_784:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_789
.label_788:
	test	r8, r8
	je	.label_782
	cmp	qword ptr [rcx], 0
	je	.label_782
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_786:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_786
	cmp	rdx, rax
	cmova	rax, rdx
.label_782:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408840
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_790
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_794
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_800:
	cmp	qword ptr [rax], 0
	je	.label_791
	mov	rdx, rax
	nop	dword ptr [rax]
.label_793:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_793
	inc	r10
.label_791:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_795
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_798:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_798
	inc	r10
.label_795:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_800
	jmp	.label_792
.label_794:
	xor	r10d, r10d
.label_792:
	test	r8, r8
	je	.label_790
	cmp	qword ptr [rax], 0
	je	.label_790
	nop	dword ptr [rax]
.label_796:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_796
	inc	r10
.label_790:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_797
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_799
.label_797:
	xor	eax, eax
.label_799:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408900
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
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_801
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_804
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_805:
	cmp	qword ptr [rax], 0
	je	.label_811
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_815:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_815
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_811:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_813
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_812:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_812
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_813:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_805
.label_804:
	test	r8, r8
	je	.label_801
	cmp	qword ptr [rax], 0
	je	.label_801
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_802:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_802
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_801:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_803
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_814
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_807]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_808]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_809]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_810
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_806
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a70

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
	jae	.label_818
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_816
	add	rbx, rax
	je	.label_816
	cmp	rsi, r12
	je	.label_817
	xor	r15d, r15d
	nop	
.label_820:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_819
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_816
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_820
.label_817:
	mov	r15, r12
	jmp	.label_816
.label_819:
	mov	r15, qword ptr [rbx]
.label_816:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_818:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408af0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_821
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_824
	nop	word ptr cs:[rax + rax]
.label_823:
	add	rcx, 0x10
.label_824:
	cmp	rcx, rdx
	jae	.label_822
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_823
.label_821:
	ret	
.label_822:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b30
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
	jae	.label_828
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_829:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_825
	test	rdx, rdx
	jne	.label_829
	jmp	.label_826
.label_825:
	test	rdx, rdx
	je	.label_826
	mov	rax, qword ptr [rdx]
	jmp	.label_827
.label_826:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_830:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_827
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_830
.label_827:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_828:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bc0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_831
	xor	eax, eax
.label_833:
	cmp	qword ptr [r9], 0
	je	.label_832
	test	r9, r9
	je	.label_832
	mov	r8, r9
	nop	
.label_834:
	cmp	rax, rdx
	jae	.label_831
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_834
	mov	r8, qword ptr [rdi + 8]
.label_832:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_833
.label_831:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c10
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
	cmp	r13, rax
	jae	.label_838
	xor	ebx, ebx
.label_837:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_839
	test	r13, r13
	je	.label_839
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_838
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_836:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_835
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_836
	jmp	.label_838
	nop	dword ptr [rax]
.label_835:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_839:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_837
.label_838:
	mov	rax, rbx
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
	#Procedure 0x408cb0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_840
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_841:
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
	jne	.label_841
.label_840:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_842]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d10

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
	je	.label_845
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_850
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_855]
	jbe	.label_844
	movss	xmm1, dword ptr [rip + label_858]
	ucomiss	xmm1, xmm0
	jbe	.label_844
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_849]
	jbe	.label_844
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_844
	addss	xmm1, dword ptr [rip + label_855]
	ucomiss	xmm0, xmm1
	jbe	.label_844
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_843]
	ucomiss	xmm2, xmm0
	jb	.label_844
	ucomiss	xmm0, xmm1
	jbe	.label_844
.label_850:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_857
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_854
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_856
.label_854:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_856:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_847]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_848]
	jae	.label_844
.label_857:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_846
	nop	
.label_851:
	add	rbx, 2
.label_846:
	cmp	rbx, -1
	je	.label_844
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_853
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_852:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_853
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_852
.label_853:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_851
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_844
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_844
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_844
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
	jmp	.label_845
.label_844:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_845:
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
	#Procedure 0x408f30

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
	#Procedure 0x408f40

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f50
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_861
	nop	word ptr cs:[rax + rax]
.label_864:
	add	r14, 0x10
.label_861:
	cmp	r14, rax
	jae	.label_863
	cmp	qword ptr [r14], 0
	je	.label_864
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_865
	nop	word ptr cs:[rax + rax]
.label_860:
	test	cl, 1
	je	.label_859
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_859:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_860
.label_865:
	test	cl, cl
	je	.label_862
	mov	rdi, qword ptr [r14]
	call	rax
.label_862:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_864
.label_863:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409000

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_866
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_866
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_872
	nop	
.label_870:
	add	r15, 0x10
.label_872:
	cmp	r15, rax
	jae	.label_866
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_870
	test	r15, r15
	je	.label_870
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_876
.label_869:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_876:
	test	rbx, rbx
	jne	.label_869
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_870
.label_866:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_867
	nop	
.label_871:
	add	r15, 0x10
.label_867:
	cmp	r15, rax
	jae	.label_874
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_871
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_868
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_871
.label_874:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_873
.label_875:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_875
.label_873:
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
	#Procedure 0x4090d0

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
	jne	.label_883
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_887
	cvtsi2ss	xmm0, rsi
	jmp	.label_892
.label_887:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_892:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_847]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_848]
	jae	.label_879
.label_883:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_878
	nop	dword ptr [rax + rax]
.label_889:
	add	rbx, 2
.label_878:
	cmp	rbx, -1
	je	.label_879
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_886
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_893:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_886
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_893
.label_886:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_889
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_879
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_880
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_879
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
	je	.label_895
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_880
.label_895:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_888
	nop	
.label_881:
	add	r12, 0x10
.label_888:
	cmp	r12, r15
	jae	.label_877
	cmp	qword ptr [r12], 0
	je	.label_881
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_884
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_894
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_890
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_885
	nop	word ptr [rax + rax]
.label_890:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_885:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_882
.label_884:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_881
.label_877:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_891
	mov	rdi, qword ptr [rsp]
	call	free
.label_879:
	xor	ebp, ebp
.label_880:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_894:
	call	abort
.label_891:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409360

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_908
	test	dl, dl
	je	.label_897
	nop	dword ptr [rax]
.label_910:
	cmp	qword ptr [r13], 0
	je	.label_902
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_907
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_900:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_913
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_899
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_904
	nop	word ptr [rax + rax]
.label_899:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_904:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_900
	mov	rax, qword ptr [r15 + 8]
.label_907:
	mov	qword ptr [r13 + 8], 0
.label_902:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_910
	jmp	.label_908
	nop	word ptr cs:[rax + rax]
.label_897:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_896
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_901
	nop	word ptr [rax + rax]
.label_903:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_913
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_915
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_905
	nop	word ptr [rax + rax]
.label_915:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_905:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_903
	mov	r12, qword ptr [r13]
.label_901:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_906
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_911
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_914
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_916
	nop	dword ptr [rax + rax]
.label_911:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_909
.label_914:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_912
.label_916:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_909:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_896:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_897
.label_908:
	mov	al, 1
.label_898:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_912:
	xor	eax, eax
	jmp	.label_898
.label_913:
	call	abort
.label_906:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409580

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
	je	.label_917
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_917
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_924
	cmp	rsi, r14
	je	.label_931
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_935
	mov	rax, qword ptr [r12]
.label_930:
	test	rax, rax
	jne	.label_938
	jmp	.label_924
.label_931:
	mov	rax, r14
.label_938:
	xor	ebp, ebp
	test	r15, r15
	je	.label_921
	mov	qword ptr [r15], rax
	jmp	.label_921
.label_935:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_924
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_923:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_920
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_925
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_923
.label_924:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_928
	cvtsi2ss	xmm1, rax
	jmp	.label_933
.label_928:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_933:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_939
	cvtsi2ss	xmm0, rcx
	jmp	.label_945
.label_939:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_945:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_919
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_926
	ucomiss	xmm2, dword ptr [rip + label_855]
	jbe	.label_927
	movss	xmm3, dword ptr [rip + label_858]
	ucomiss	xmm3, xmm2
	jbe	.label_927
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_849]
	jbe	.label_927
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_927
	addss	xmm3, dword ptr [rip + label_855]
	ucomiss	xmm2, xmm3
	jbe	.label_927
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_843]
	ucomiss	xmm5, xmm4
	jb	.label_927
	ucomiss	xmm4, xmm3
	ja	.label_944
.label_927:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_946]
	jmp	.label_944
.label_926:
	mov	eax, OFFSET FLAT:default_tuning
.label_944:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_919
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_934
	mulss	xmm0, xmm2
.label_934:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_848]
	jae	.label_921
	movss	xmm1, dword ptr [rip + label_847]
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
	je	.label_921
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_917
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_919
	cmp	rsi, r14
	mov	rax, r14
	je	.label_922
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_929
	mov	rax, qword ptr [r12]
.label_922:
	test	rax, rax
	jne	.label_932
.label_919:
	cmp	qword ptr [r12], 0
	je	.label_936
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_937
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_940
.label_936:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_942]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_943
.label_937:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_921
.label_940:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_943:
	mov	ebp, 1
.label_921:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_920:
	mov	rax, r14
	jmp	.label_930
.label_925:
	mov	rax, qword ptr [rbp]
	jmp	.label_930
.label_929:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_919
	lea	rbp, [rbx + rbp + 8]
.label_918:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_941
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_947
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_918
	jmp	.label_919
.label_941:
	mov	rax, r14
	jmp	.label_922
.label_947:
	mov	rax, qword ptr [rbp]
	jmp	.label_922
.label_917:
	call	abort
.label_932:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098c0

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
	je	.label_948
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_948:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4098f0

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
	jae	.label_950
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_954
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_958
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_961
	mov	r14, qword ptr [r13]
.label_958:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_965
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_960
.label_961:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_954
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_956:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_952
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_955
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_956
	jmp	.label_954
.label_965:
	mov	qword ptr [r13], 0
	jmp	.label_960
.label_952:
	mov	rcx, rax
	jmp	.label_963
.label_955:
	mov	r14, qword ptr [rcx]
.label_963:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_960:
	xor	r12d, r12d
	test	r14, r14
	je	.label_954
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_959
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_951
	cvtsi2ss	xmm1, rax
	jmp	.label_953
.label_951:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_953:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_957
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_962
.label_957:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_962:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_959
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_968
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_855]
	jbe	.label_949
	movss	xmm4, dword ptr [rip + label_858]
	ucomiss	xmm4, xmm3
	jbe	.label_949
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_949
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_849]
	jbe	.label_949
	movss	xmm4, dword ptr [rip + label_855]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_949
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_843]
	ucomiss	xmm5, xmm3
	jb	.label_949
	ucomiss	xmm3, xmm4
	ja	.label_966
.label_949:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_966
.label_968:
	mov	eax, OFFSET FLAT:default_tuning
.label_966:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_959
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_969
	mulss	xmm0, dword ptr [rax + 8]
.label_969:
	movss	xmm1, dword ptr [rip + label_847]
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
	jne	.label_959
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_964
	nop	word ptr cs:[rax + rax]
.label_967:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_967
.label_964:
	mov	qword ptr [r15 + 0x48], 0
.label_959:
	mov	r12, r14
.label_954:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_950:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b90

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
	#Procedure 0x409bc0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bd0

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
	jne	.label_970
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_970:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c10

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_971
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_972
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_972:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_971:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409c40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_40
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_973
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c70

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_974
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_974:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_975
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_976
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_977
.label_976:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_977:
	mov	ecx, dword ptr [rax]
.label_975:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d30

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
	js	.label_979
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_978
	mov	dword ptr [r14], ebp
	jmp	.label_979
.label_978:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_979:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d80

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
	ja	.label_980
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
	jmp	.label_981
.label_980:
	mov	eax, ebx
.label_981:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_982
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_984
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_982
.label_984:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_982
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_983
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_983:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_982:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e50

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1002
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1002:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_991
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_989
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_992
	test	esi, esi
	jne	.label_991
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1004
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1005
.label_991:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_985
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_992
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_994
.label_989:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_997
.label_992:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_998
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_999
.label_998:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_999:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1001:
	call	fcntl
.label_997:
	mov	ebp, eax
.label_986:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_994:
	cmp	eax, 6
	jne	.label_985
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_988
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_990
.label_985:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_993
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_996
.label_1004:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1005:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1001
.label_988:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_990:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1003
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_987
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_987
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_986
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_995
.label_987:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_986
.label_993:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_996:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_997
.label_1003:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_995:
	test	al, al
	je	.label_986
	test	ebp, ebp
	js	.label_986
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1000
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_986
.label_1000:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_986
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1006
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1006
	test	byte ptr [rbx + 1], 1
	je	.label_1006
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1006:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a130

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
	jne	.label_1007
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1007
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1008
.label_1007:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1008:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1009
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1009:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a1a0

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
	#Procedure 0x40a1c0

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
