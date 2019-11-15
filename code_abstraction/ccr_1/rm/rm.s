	.section	.text
	.align	32
	#Procedure 0x401b80

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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
	.align	32
	#Procedure 0x401d50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_30
	nop	
.label_29:
	mov	edi, OFFSET FLAT:label_22
	call	strcmp
	test	eax, eax
	je	.label_27
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_29
.label_27:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_22
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	je	.label_23
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_22
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:label_35
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
	#Procedure 0x401e70

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_35
	call	setlocale
	mov	edi, OFFSET FLAT:label_43
	mov	esi, OFFSET FLAT:label_44
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_43
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp]
	call	rm_option_init
	call	priv_set_remove_linkdir
	mov	r15b, 1
	jmp	.label_49
	nop	
.label_52:
	mov	dword ptr [rsp + 4], 3
	mov	byte ptr [rsp], 0
.label_49:
	xor	r14d, r14d
	jmp	.label_36
.label_926:
	mov	byte ptr [rsp + 9], 1
	nop	word ptr cs:[rax + rax]
.label_36:
	mov	edx, OFFSET FLAT:label_50
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_38
	add	eax, -0x49
	cmp	eax, 0x3b
	ja	.label_40
	jmp	qword ptr [word ptr [+ (rax * 8) + label_45]]
.label_927:
	mov	byte ptr [rsp + 0xa], 1
	jmp	.label_36
.label_929:
	mov	byte ptr [rsp + 0x1a], 1
	jmp	.label_36
.label_930:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_52
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_57
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	cmp	eax, 2
	je	.label_52
	cmp	eax, 1
	je	.label_71
	test	eax, eax
	jne	.label_36
	jmp	.label_48
.label_71:
	mov	dword ptr [rsp + 4], 4
	mov	byte ptr [rsp], 0
	mov	r14b, 1
	jmp	.label_36
.label_931:
	mov	byte ptr [rsp + 8], 1
	jmp	.label_36
.label_932:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	esi, OFFSET FLAT:label_47
	call	strcmp
	xor	r15d, r15d
	test	eax, eax
	je	.label_36
	jmp	.label_59
.label_933:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	r15b, 1
	je	.label_36
	cmp	byte ptr [rax], 0x61
	jne	.label_46
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_46
	cmp	byte ptr [rax + 2], 0x6c
	jne	.label_46
	cmp	byte ptr [rax + 3], 0
	jne	.label_46
	mov	byte ptr [rsp + 0x18], 1
	mov	r15b, 1
	jmp	.label_36
.label_934:
	mov	byte ptr [rsp + 0x19], 1
	jmp	.label_36
	nop	word ptr cs:[rax + rax]
.label_928:
	mov	dword ptr [rsp + 4], 5
	mov	byte ptr [rsp], 1
	jmp	.label_49
.label_48:
	mov	dword ptr [rsp + 4], 5
	jmp	.label_49
.label_38:
	cmp	eax, -1
	jne	.label_58
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jge	.label_60
	test	r15b, r15b
	je	.label_65
	mov	al, byte ptr [rsp + 9]
	test	al, al
	je	.label_65
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_68
.label_65:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	test	r14b, r14b
	je	.label_42
	movsxd	r15, ebp
	sub	r15, r12
	mov	bpl, byte ptr [rsp + 9]
	cmp	r15d, 3
	ja	.label_37
	test	bpl, bpl
	je	.label_42
.label_37:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r15
	call	select_plural
	mov	rcx, rax
	xor	edi, edi
	test	bpl, bpl
	je	.label_51
	mov	esi, OFFSET FLAT:label_61
	mov	edx, OFFSET FLAT:label_62
	jmp	.label_63
.label_60:
	xor	ebp, ebp
	cmp	byte ptr [rsp], 0
	jne	.label_53
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_51:
	mov	esi, OFFSET FLAT:label_72
	mov	edx, OFFSET FLAT:label_73
.label_63:
	mov	r8d, 5
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	xor	ebp, ebp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r15
	call	__fprintf_chk
	call	yesno
	test	al, al
	je	.label_53
.label_42:
	lea	rdi, [rbx + r12*8]
	lea	rsi, [rsp]
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 3
	jae	.label_39
	xor	ebp, ebp
	cmp	eax, 4
	sete	bpl
.label_53:
	mov	eax, ebp
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_58:
	cmp	eax, 0xffffff7d
	je	.label_69
	cmp	eax, 0xffffff7e
	jne	.label_40
	xor	edi, edi
	call	usage
.label_69:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_22
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_74
	mov	r9d, OFFSET FLAT:label_75
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_76
	push	OFFSET FLAT:label_77
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_40:
	mov	edi, ebp
	mov	rsi, rbx
	call	diagnose_leading_hyphen
	mov	edi, 1
	call	usage
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_59:
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
.label_39:
	mov	edi, OFFSET FLAT:label_54
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:label_56
	call	__assert_fail
.label_68:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_70
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402290

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbx
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	dword ptr [rbx + 4], 4
	mov	byte ptr [rbx + 8], 0
	mov	byte ptr [rbx + 0xa], 0
	mov	byte ptr [rbx + 9], 0
	mov	qword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x18], 0
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rbx + 0x19]
	mov	byte ptr [rbx + 0x1a], 0
	mov	byte ptr [rbx + 0x1b], 0
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022d0

	.globl diagnose_leading_hyphen
	.type diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	cmp	edi, 2
	jl	.label_80
	movsxd	r12, edi
	mov	ebx, 1
	lea	r15, [rsp + 8]
	nop	word ptr [rax + rax]
.label_82:
	mov	rbp, qword ptr [r14 + rbx*8]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_78
	cmp	byte ptr [rbp + 1], 0
	je	.label_78
	mov	rdi, rbp
	mov	rsi, r15
	call	lstat
	test	eax, eax
	je	.label_81
.label_78:
	inc	rbx
	cmp	rbx, r12
	jl	.label_82
	jmp	.label_80
.label_81:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r14, qword ptr [r14]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, r13
	mov	r9, rbx
	call	__fprintf_chk
.label_80:
	add	rsp, 0x98
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
	#Procedure 0x4023a0

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_84
	cmp	byte ptr [r14 + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	rbx, rax
	mov	eax, 2
	nop	word ptr [rax + rax]
.label_89:
	mov	ebp, eax
.label_86:
	mov	rdi, rbx
	call	rpl_fts_read
	test	rax, rax
	je	.label_88
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, r14
	call	rm_fts
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jae	.label_83
	cmp	ebp, 2
	jne	.label_86
	cmp	eax, 3
	jne	.label_86
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_83:
	cmp	eax, 4
	mov	eax, 4
	je	.label_89
	mov	edi, OFFSET FLAT:label_91
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_93
	call	__assert_fail
.label_88:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	je	.label_85
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_85:
	mov	rdi, rbx
	call	rpl_fts_close
	test	eax, eax
	je	.label_84
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_84:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 0xc
	ja	.label_126
	jmp	qword ptr [word ptr [+ (rax * 8) + label_129]]
.label_1044:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_94
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_97
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_97
.label_94:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_103
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, al
	je	.label_120
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_109
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_118
	call	quotearg_n_style
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	r8, r12
	mov	r9, rbx
	call	error
	jmp	.label_121
.label_1045:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_114
.label_1046:
	cmp	byte ptr [r12 + 8], 0
	je	.label_95
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_95
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_98
.label_95:
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_105
	movzx	eax, bx
	xor	ecx, ecx
	cmp	eax, 6
	sete	cl
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	excise
.label_1047:
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_114:
	call	error
.label_108:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	ebp, 4
	jmp	.label_105
.label_97:
	cmp	byte ptr [r12 + 0xa], 0
	mov	eax, 0x27
	mov	ebx, 0x15
	cmovne	ebx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r12
	call	error
	jmp	.label_99
.label_98:
	mov	rdi, r15
	call	mark_ancestor_dirs
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_105
.label_120:
	mov	rax, qword ptr [r12 + 0x10]
	test	rax, rax
	je	.label_107
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_107
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_107
	mov	rax, qword ptr [r15 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_111
	cmp	byte ptr [rax + 1], 0
	je	.label_112
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_70
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_128
.label_107:
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_103
	mov	rdi, qword ptr [r15 + 0x30]
	mov	esi, OFFSET FLAT:label_118
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	je	.label_96
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_101
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_108
.label_101:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_113
.label_103:
	lea	r9, [rsp + 8]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_119
	cmp	dword ptr [rsp + 8], 4
	jne	.label_119
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	excise
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_119:
	cmp	ebp, 2
	je	.label_105
.label_99:
	mov	rdi, r15
	call	mark_ancestor_dirs
.label_121:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_105:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
.label_128:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_108
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_116
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_123
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_130
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_131
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	call	readdir_ignoring_dot_and_dotdot
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	je	.label_132
	xor	ebx, ebx
	jmp	.label_130
.label_131:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_130
.label_132:
	test	ebp, ebp
	sete	bl
.label_130:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a60

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_133:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_135
	cmp	qword ptr [rax + 0x20], 0
	je	.label_134
.label_135:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	call	rpl_fts_set
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_136
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
.label_136:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	je	.label_158
	mov	dword ptr [r13], 2
.label_158:
	lea	rdi, [rsp + 0x28]
	call	cache_stat_init
	test	r13, r13
	mov	dword ptr [rsp + 0xc], ebp
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_145
	mov	edi, ebp
	mov	rsi, rbx
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	jmp	.label_154
.label_145:
	xor	ebx, ebx
.label_154:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_141
	mov	eax, dword ptr [r12 + 4]
	cmp	eax, 5
	je	.label_144
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	jne	.label_139
	cmp	eax, 3
	je	.label_160
	cmp	byte ptr [r12 + 0x19], 0
	je	.label_139
.label_160:
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	ebp, ebp
	jne	.label_142
.label_139:
	cmp	dword ptr [r12 + 4], 3
	mov	ebp, 0
	jne	.label_144
.label_142:
	movzx	r13d, r15b
	shl	r13d, 2
	test	ebp, ebp
	js	.label_152
	xor	r15b, 1
	je	.label_152
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_156
	call	__errno_location
	mov	r15d, dword ptr [rax]
	jmp	.label_155
.label_152:
	mov	r15d, r14d
.label_151:
	mov	r14d, r13d
.label_140:
	mov	r13d, ebp
	test	ebp, ebp
	mov	ebp, 3
	js	.label_155
	mov	eax, r14d
	and	al, 0xf
	cmp	al, 4
	je	.label_137
	cmp	al, 0xa
	jne	.label_138
	cmp	dword ptr [r12 + 4], 3
	je	.label_138
	jmp	.label_144
.label_156:
	mov	r15d, r14d
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r14d, 0xa
	cmp	eax, 0xa000
	je	.label_140
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
	jmp	.label_151
.label_137:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_138
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_155
	mov	eax, ebx
	xor	al, 1
	jne	.label_155
.label_138:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	bl, cl
	je	.label_159
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_157
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	ebp, 4
	jmp	.label_141
.label_155:
	mov	ebp, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_141
.label_159:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_143
	mov	esi, OFFSET FLAT:label_149
	jmp	.label_150
.label_157:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_153
	mov	esi, OFFSET FLAT:label_146
	jmp	.label_147
.label_143:
	mov	esi, OFFSET FLAT:label_148
.label_150:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	call	__fprintf_chk
	jmp	.label_161
.label_153:
	mov	esi, OFFSET FLAT:label_162
.label_147:
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	call	__fprintf_chk
.label_161:
	call	yesno
	test	al, al
	je	.label_141
.label_144:
	mov	ebp, 2
.label_141:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rdi
	movzx	edx, bl
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_165
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_168
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	call	lstatat
	test	eax, eax
	je	.label_170
	cmp	dword ptr [r13], 2
	je	.label_173
.label_170:
	mov	dword ptr [r13], 0x1e
.label_173:
	mov	ebx, dword ptr [r13]
.label_168:
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	r15d, 2
	test	al, al
	jne	.label_167
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	jne	.label_166
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_166
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_166
	mov	eax, dword ptr [r14 + 0x40]
	cmp	eax, 0xd
	je	.label_164
	cmp	eax, 1
	jne	.label_166
.label_164:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_166:
	mov	ebx, dword ptr [r13]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdi, r14
	call	mark_ancestor_dirs
	jmp	.label_167
.label_165:
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_167
	xor	edi, edi
	test	bl, bl
	je	.label_169
	mov	esi, OFFSET FLAT:label_171
	jmp	.label_172
.label_169:
	mov	esi, OFFSET FLAT:label_163
.label_172:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_167:
	mov	eax, r15d
	add	rsp, 0x98
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
	#Procedure 0x402f50

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_175:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_174
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_175
.label_174:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	test	al, al
	je	.label_178
	xor	eax, eax
	jmp	.label_176
.label_178:
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, rbx
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	jne	.label_176
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_177
	xor	eax, eax
	jmp	.label_176
.label_177:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, ebp
	mov	rsi, r14
	call	faccessat
	test	eax, eax
	mov	eax, 0
	je	.label_176
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_176:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	cmp	rcx, -1
	jne	.label_179
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_181
	mov	qword ptr [rbx + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_181:
	mov	rcx, qword ptr [rbx + 0x30]
.label_179:
	xor	eax, eax
	test	rcx, rcx
	jns	.label_180
	mov	ebx, dword ptr [rbx + 8]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_180:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403070

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	cmp	byte ptr [rdi], 0
	je	.label_182
	push	rax
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
.label_182:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403090

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_183
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_185
.label_183:
	cmp	edi, 0x54
	jne	.label_184
.label_185:
	ret	
.label_184:
	xor	eax, eax
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_192
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_186:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_191
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_188
	cmp	qword ptr [rsp + 8], -1
	je	.label_189
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_190
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_191
.label_190:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_191
.label_189:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_191:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_186
	jmp	.label_187
.label_192:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_187:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_188:
	mov	rax, rbp
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
	#Procedure 0x4031c0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_193
	mov	esi, OFFSET FLAT:label_194
	jmp	.label_195
.label_193:
	mov	esi, OFFSET FLAT:label_196
.label_195:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_199
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_203:
	test	rbp, rbp
	je	.label_197
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_202
.label_197:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_200
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_198
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_204:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_203
.label_199:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_205
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_205:
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
	#Procedure 0x4033a0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_206
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_206
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_207
.label_206:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403410
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_210
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_210
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_210:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_211
	test	eax, eax
	jne	.label_211
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_211:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_212
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_209
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_213
.label_212:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_208
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_213:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403500
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403510

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_215
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_217
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_217
.label_215:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_216
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_218
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_209
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_216:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_218:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_208
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_220:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_220
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_224
	nop	word ptr cs:[rax + rax]
.label_222:
	inc	rax
	mov	sil, dl
.label_224:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_222
	test	cl, cl
	je	.label_223
	mov	edx, esi
	and	dl, 1
	je	.label_221
	xor	esi, esi
.label_221:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_222
.label_223:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_226:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_225
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_226
.label_225:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403660

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_227
	cmp	ecx, 0x3fff
	jg	.label_239
	cmp	eax, 0x1000
	je	.label_243
	cmp	eax, 0x2000
	jne	.label_231
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	jmp	dcgettext
.label_227:
	cmp	eax, 0x8000
	je	.label_229
	cmp	eax, 0xa000
	je	.label_234
	cmp	eax, 0xc000
	jne	.label_231
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	jmp	dcgettext
.label_239:
	cmp	eax, 0x4000
	je	.label_233
	cmp	eax, 0x6000
	jne	.label_231
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	jmp	dcgettext
.label_243:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	jmp	dcgettext
.label_229:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_240
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	jmp	dcgettext
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	jmp	dcgettext
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	jmp	dcgettext
.label_231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	jmp	dcgettext
.label_240:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403760

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_244
	pop	rcx
	ret	
.label_244:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403780

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_249
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_245
	cmp	byte ptr [r15], 0x2f
	je	.label_245
	mov	r12b, 0x2f
	jmp	.label_246
.label_249:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_246
.label_245:
	xor	r12d, r12d
.label_246:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_248
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_247
	mov	qword ptr [rax], rbp
.label_247:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_248:
	add	rsp, 0x18
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
	#Procedure 0x403860

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403880

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_250
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_252
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_252
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_255
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_255:
	mov	rbx, r14
.label_252:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_250:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_251
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403930
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
	#Procedure 0x403970
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
	#Procedure 0x403980
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
	#Procedure 0x403990

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
	#Procedure 0x4039d0
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
	#Procedure 0x4039f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_256
	test	rdx, rdx
	je	.label_256
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_256:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20
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
	#Procedure 0x403aa0

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
.label_334:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_360
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_340]]
.label_942:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_345
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_286
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_943:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_356
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_356
	xor	r14d, r14d
.label_367:
	cmp	r14, r11
	jae	.label_364
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_364:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_367
.label_356:
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
	jmp	.label_267
.label_935:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_267
.label_938:
	mov	al, 1
.label_936:
	mov	r12b, 1
.label_939:
	test	r12b, 1
	mov	cl, 1
	je	.label_273
	mov	ecx, eax
.label_273:
	mov	al, cl
.label_937:
	test	r12b, 1
	jne	.label_276
	test	r11, r11
	je	.label_362
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_362:
	mov	r14d, 1
	jmp	.label_284
.label_276:
	xor	r14d, r14d
.label_284:
	mov	ecx, OFFSET FLAT:label_286
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_267
.label_940:
	test	r12b, 1
	jne	.label_293
	test	r11, r11
	je	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_264:
	mov	r14d, 1
	jmp	.label_297
.label_941:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_299
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_267
.label_293:
	xor	r14d, r14d
.label_297:
	mov	eax, OFFSET FLAT:label_299
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_267:
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
	jmp	.label_281
	nop	dword ptr [rax]
.label_319:
	inc	rsi
.label_281:
	cmp	rbp, -1
	je	.label_347
	cmp	rsi, rbp
	jne	.label_335
	jmp	.label_352
	nop	word ptr cs:[rax + rax]
.label_347:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_352
.label_335:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_359
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_291
	cmp	rbp, -1
	jne	.label_291
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
.label_291:
	cmp	rbx, rbp
	jbe	.label_370
.label_359:
	xor	r8d, r8d
.label_269:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_371
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_262]]
.label_989:
	test	rsi, rsi
	jne	.label_266
	jmp	.label_309
	nop	
.label_370:
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
	jne	.label_282
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_269
	jmp	.label_279
.label_282:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_269
.label_993:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_302
	test	rsi, rsi
	jne	.label_305
	cmp	rbp, 1
	je	.label_309
	xor	r13d, r13d
	jmp	.label_263
.label_982:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_313
	cmp	byte ptr [rsp + 7], 0
	jne	.label_258
	cmp	r12d, 2
	jne	.label_315
	mov	eax, r9d
	and	al, 1
	jne	.label_315
	cmp	r14, r11
	jae	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_317:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_322
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_322:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_326
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	add	r14, 3
	mov	r9b, 1
.label_315:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_333
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_333:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_336
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_336
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_336
	cmp	r14, r11
	jae	.label_301
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_301:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_321
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_321:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_263
.label_983:
	mov	bl, 0x62
	jmp	.label_355
.label_984:
	mov	cl, 0x74
	jmp	.label_358
.label_985:
	mov	bl, 0x76
	jmp	.label_355
.label_986:
	mov	bl, 0x66
	jmp	.label_355
.label_987:
	mov	cl, 0x72
	jmp	.label_358
.label_990:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_363
	cmp	byte ptr [rsp + 7], 0
	jne	.label_258
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
	jae	.label_368
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_368:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_265
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	add	r14, 3
	xor	r9d, r9d
.label_363:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_263
.label_991:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_280
	cmp	r12d, 2
	jne	.label_266
	cmp	byte ptr [rsp + 7], 0
	je	.label_266
	jmp	.label_258
.label_992:
	cmp	r12d, 2
	jne	.label_290
	cmp	byte ptr [rsp + 7], 0
	jne	.label_258
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_294
.label_371:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_350
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
.label_285:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_314
	test	r8b, r8b
	je	.label_314
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_263
.label_302:
	test	rsi, rsi
	jne	.label_331
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_331
.label_309:
	mov	dl, 1
.label_988:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_258
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_263:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_341
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_343
	jmp	.label_320
	nop	word ptr cs:[rax + rax]
.label_341:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_320
.label_343:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_369
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_294
	jmp	.label_311
	nop	dword ptr [rax]
.label_320:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_311
	jmp	.label_294
.label_369:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_311
.label_313:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_319
	xor	r15d, r15d
	jmp	.label_266
.label_290:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_358
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_294
.label_358:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_258
.label_355:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_263
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_258
	cmp	r12d, 2
	jne	.label_274
	mov	eax, r9d
	and	al, 1
	jne	.label_274
	cmp	r14, r11
	jae	.label_277
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_277:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_261:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	add	r14, 3
	mov	r9b, 1
.label_274:
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_292:
	inc	r14
	jmp	.label_295
.label_350:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_298
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_298:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_365:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_318
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_324
	cmp	rbp, -2
	je	.label_303
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_316
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_306:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_342
	bt	rsi, rdx
	jb	.label_279
.label_342:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_306
.label_316:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_349
	xor	r13d, r13d
.label_349:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_365
	jmp	.label_285
.label_336:
	xor	r13d, r13d
	jmp	.label_263
.label_331:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_263
.label_280:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_266
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_266
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_266
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_268
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_354
	cmp	byte ptr [rsp + 7], 0
	jne	.label_258
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_271
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_271:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_353
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_353:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_283
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_283:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_287:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_263
.label_266:
	xor	eax, eax
.label_305:
	xor	r13d, r13d
	jmp	.label_263
.label_314:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
.label_366:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_296:
	test	r8b, r8b
	je	.label_307
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_308
	cmp	r14, r11
	jae	.label_310
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_310:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_308
	nop	dword ptr [rax]
.label_307:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_279
	cmp	r12d, 2
	jne	.label_259
	mov	eax, r9d
	and	al, 1
	jne	.label_259
	cmp	r14, r11
	jae	.label_323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_325
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_325:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_332
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_332:
	add	r14, 3
	mov	r9b, 1
.label_259:
	cmp	r14, r11
	jae	.label_351
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_351:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_338
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_338:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_344
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_344:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_308:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_294
	test	r9b, 1
	je	.label_357
	mov	ebx, eax
	and	bl, 1
	jne	.label_357
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_361
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_361:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_304
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_304:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_357:
	cmp	r14, r11
	jae	.label_366
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_366
	nop	word ptr cs:[rax + rax]
.label_294:
	test	r9b, 1
	je	.label_257
	and	al, 1
	jne	.label_257
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	add	r14, 2
	xor	r9d, r9d
.label_257:
	mov	ebx, r15d
.label_295:
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_272:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_319
.label_324:
	xor	r13d, r13d
.label_318:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_285
.label_303:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_289
	mov	rsi, qword ptr [rsp + 0x50]
.label_300:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_327
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_300
	xor	r13d, r13d
	jmp	.label_285
.label_289:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_285
.label_327:
	xor	r13d, r13d
	jmp	.label_285
.label_268:
	xor	r13d, r13d
	jmp	.label_263
.label_354:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_263
	nop	dword ptr [rax + rax]
.label_352:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_312
	or	dl, al
	je	.label_279
.label_312:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_328
	or	dl, al
	jne	.label_328
	test	r10b, 1
	jne	.label_329
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_328
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_334
.label_328:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_337
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_339
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_339
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_348:
	cmp	r14, r11
	jae	.label_346
	mov	byte ptr [rcx + r14], al
.label_346:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_348
	jmp	.label_339
.label_258:
	mov	qword ptr [rsp + 0x20], rbp
.label_279:
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
.label_275:
	mov	r14, rax
.label_278:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_329:
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
	jmp	.label_275
.label_337:
	mov	rcx, qword ptr [rsp + 8]
.label_339:
	cmp	r14, r11
	jae	.label_278
	mov	byte ptr [rcx + r14], 0
	jmp	.label_278
.label_360:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404860
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
	#Procedure 0x404870

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
	je	.label_372
	mov	qword ptr [rax], rbx
.label_372:
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
	#Procedure 0x404960
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_373
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_376:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_376
.label_373:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_377
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_375]], OFFSET FLAT:slot0
.label_377:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_374
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_374:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a00

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a10

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
	js	.label_381
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_384
	cmp	r12d, 0x7fffffff
	je	.label_379
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
	jne	.label_382
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_382:
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
.label_384:
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
	jbe	.label_380
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_383
.label_380:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_378
	mov	rdi, r14
	call	free
.label_378:
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
.label_383:
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
.label_381:
	call	abort
.label_379:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0
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
	#Procedure 0x404bf0
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
	#Procedure 0x404c00

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
	#Procedure 0x404c40

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
	je	.label_385
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
.label_385:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

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
	#Procedure 0x404ce0

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
	#Procedure 0x404d00
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
	#Procedure 0x404d20

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
	mov	rcx,  qword ptr [word ptr [rip + label_386]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_388]]
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
	#Procedure 0x404d90

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
	#Procedure 0x404da0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404db0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

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
	#Procedure 0x404e10

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

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
	mov	rax,  qword ptr [word ptr [rip + label_386]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_387]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_388]]
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
	#Procedure 0x404e90
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
	#Procedure 0x404eb0
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
	#Procedure 0x404ed0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0
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
	#Procedure 0x404ef0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f00

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
	#Procedure 0x404f10

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
	jne	.label_393
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
	je	.label_389
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_394
	mov	eax, OFFSET FLAT:label_395
	jmp	.label_392
.label_389:
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
	je	.label_396
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_390
	mov	eax, OFFSET FLAT:label_391
	jmp	.label_392
.label_396:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_286
.label_392:
	cmove	rax, rcx
.label_393:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

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
	je	.label_397
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_399
	jmp	.label_398
.label_397:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_398
.label_399:
	mov	eax, 1
	test	bpl, bpl
	je	.label_398
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
.label_398:
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
	#Procedure 0x405050

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
	je	.label_402
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_400
	jmp	.label_401
.label_402:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_401
.label_400:
	mov	eax, 1
	test	bpl, bpl
	je	.label_401
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
.label_401:
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
	#Procedure 0x4050e0

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
	je	.label_403
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_405
	jmp	.label_404
.label_403:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_404
.label_405:
	mov	eax, 1
	test	bpl, bpl
	je	.label_404
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
.label_404:
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
	#Procedure 0x405160

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
	je	.label_408
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_407
	jmp	.label_406
.label_408:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_406
.label_407:
	mov	eax, 1
	test	bpl, bpl
	je	.label_406
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
.label_406:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

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
	je	.label_411
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_409
	jmp	.label_410
.label_411:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_410
.label_409:
	mov	eax, 1
	test	bpl, bpl
	je	.label_410
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_410:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405230

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
	je	.label_412
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_414
	jmp	.label_413
.label_412:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_413
.label_414:
	mov	eax, 1
	test	bpl, bpl
	je	.label_413
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_413:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405280

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
	je	.label_417
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_416
	jmp	.label_415
.label_417:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_415
.label_416:
	mov	eax, 1
	test	bpl, bpl
	je	.label_415
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_415:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_419
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_420
	jmp	.label_418
.label_419:
	mov	eax, 1
	test	cl, cl
	je	.label_418
.label_420:
	xor	eax, eax
.label_418:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_70
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_421
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_421:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405340
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405360

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
	je	.label_434
	mov	edx, OFFSET FLAT:label_425
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_431
.label_434:
	mov	edx, OFFSET FLAT:label_432
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
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
	mov	esi, OFFSET FLAT:label_433
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_437
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_438]]
.label_1017:
	add	rsp, 8
	jmp	.label_424
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
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
	jmp	.label_424
.label_1018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
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
.label_1019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
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
.label_1020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
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
.label_1021:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
	jmp	.label_424
.label_1022:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
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
	jmp	.label_424
.label_1023:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
	jmp	.label_424
.label_1024:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_427
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
	jmp	.label_424
.label_1026:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
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
	jmp	.label_424
.label_1025:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
.label_424:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_441:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_441
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_443:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_442
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_444
	nop	dword ptr [rax]
.label_442:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_444:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_445
	inc	r9
	cmp	r9, 0xa
	jb	.label_443
.label_445:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_446
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_446:
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
	#Procedure 0x4057e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	test	al, al
	jne	.label_450
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_450:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405890
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_451
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_451:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_452
	test	rax, rax
	je	.label_453
.label_452:
	pop	rbx
	ret	
.label_453:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_454
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_454:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405910

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_455
	test	rbx, rbx
	jne	.label_455
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_455:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_457
	test	rax, rax
	je	.label_456
.label_457:
	pop	rbx
	ret	
.label_456:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405940

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_458
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_461
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_459
.label_458:
	test	rcx, rcx
	jne	.label_462
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_462:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_460
.label_459:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_461:
	call	xalloc_die
.label_460:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059e0
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
	#Procedure 0x405a10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_463
	call	rpl_calloc
	test	rax, rax
	je	.label_463
	pop	rcx
	ret	
.label_463:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a40

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
	#Procedure 0x405a70
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
	#Procedure 0x405a90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_209
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_466
	pop	rcx
	ret	
.label_466:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_465
	mov	edi, OFFSET FLAT:label_467
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_469
	call	__assert_fail
.label_465:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_470
	cmp	ecx, 0x11
	jne	.label_471
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_470:
	ret	
.label_471:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_473
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_472
	mov	byte ptr [rcx + rax - 1], 0
.label_472:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_474
.label_473:
	xor	ebx, ebx
.label_474:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_475
	test	rsi, rsi
	mov	ecx, 1
	je	.label_476
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_476
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_475:
	mov	ecx, 1
.label_476:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405be0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_477
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_477
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_477:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_478
	ret	
.label_478:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_479
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_480
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_480:
	add	rax, rcx
.label_479:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60

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
	jne	.label_481
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_481
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_482
.label_481:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_482:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_483
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_483:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405cd0

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
	jae	.label_485
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_485
	test	r14b, 0x12
	je	.label_485
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_489
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
	je	.label_488
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_493
	mov	esi, OFFSET FLAT:label_35
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_494
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_493:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_497
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_497:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_506
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_484
.label_485:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_502:
	xor	eax, eax
.label_489:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_496:
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
	jne	.label_500
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_487
.label_500:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_487:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_499
	mov	qword ptr [rbp + 0x10], rbx
.label_503:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_505
.label_499:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_495
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_505:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_484
	jmp	.label_501
.label_495:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_503
	nop	word ptr cs:[rax + rax]
.label_484:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_486
	cmp	rax, 3
	jb	.label_486
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_486
	nop	dword ptr [rax + rax]
.label_491:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_486
	dec	rax
	cmp	rax, 1
	ja	.label_491
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_496
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_490
.label_501:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_504
	cmp	r12, 2
	jb	.label_504
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_504:
	mov	r12, qword ptr [rsp + 0x18]
.label_506:
	mov	esi, OFFSET FLAT:label_35
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_490
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_498
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_492
	mov	esi, OFFSET FLAT:label_109
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_492
	or	byte ptr [r13 + 0x48], 4
.label_492:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_489
.label_490:
	mov	rbx, qword ptr [rsp + 0x10]
.label_498:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_494:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_488:
	mov	rdi, r13
	call	free
	jmp	.label_502
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050

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
	je	.label_507
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_508:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_508
	inc	r14
.label_507:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060a0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_509
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_511
.label_509:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_512
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_510
.label_512:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_511:
	xor	eax, eax
.label_510:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406100

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
	je	.label_513
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
.label_513:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406190

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_514
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_514:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4061b0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_516
	test	byte ptr [r14 + 0x48], 1
	je	.label_516
	mov	dl, 1
.label_516:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_518
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_518
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_517
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_525
.label_518:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_517
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_519
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_522
.label_519:
	mov	eax, dword ptr [r14]
.label_525:
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
.label_515:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_517:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_523
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_515
	cmp	ecx, 0x4000
	jne	.label_524
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_520
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_520
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_520:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_515
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_521
	cmp	cl, 0x2e
	jne	.label_515
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_515
.label_521:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_515
.label_523:
	mov	ax, 8
	jmp	.label_515
.label_524:
	mov	ax, 3
	jmp	.label_515
.label_522:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_515
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406340

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
	jae	.label_526
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_532
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_532
	mov	qword ptr [r15 + 0x10], rax
.label_526:
	test	rbx, rbx
	je	.label_528
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_530:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_530
.label_528:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_531
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_527:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_527
	lea	rax, [rax + r8*8]
.label_531:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_529
.label_532:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_529:
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
	#Procedure 0x406420

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_533
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_536
	jmp	.label_534
.label_533:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_535
	mov	rdi, rax
	call	cycle_check_init
.label_536:
	mov	r14b, 1
.label_534:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_535:
	xor	r14d, r14d
	jmp	.label_534
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406490

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_537
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_537:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_538
	nop	dword ptr [rax]
.label_540:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_539
	call	closedir
.label_539:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_540
.label_538:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406500

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_541
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_545
	nop	word ptr cs:[rax + rax]
.label_549:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_548
	mov	rbx, qword ptr [rdi + 8]
.label_548:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_549
	jmp	.label_551
.label_545:
	mov	rbx, rdi
.label_551:
	mov	rdi, rbx
	call	free
.label_541:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_543
	call	fts_lfree
.label_543:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_552
	xor	ebx, ebx
	test	al, 4
	jne	.label_546
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_542
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_542:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_544
	jmp	.label_546
.label_552:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_546
	call	close
.label_544:
	test	eax, eax
	je	.label_546
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_546:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_550
	call	hash_free
.label_550:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_547
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_547:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406600

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_553
	nop	word ptr cs:[rax + rax]
.label_554:
	mov	edi, eax
	call	close
.label_553:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_555
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_554
	jmp	.label_553
.label_555:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406640

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_556
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_557
	jmp	hash_free
.label_556:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_557:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406670

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
	je	.label_562
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_562
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_584
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_585
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_562
.label_584:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_585
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_595
	test	byte ptr [r14 + 0x48], 4
	jne	.label_595
	mov	esi, OFFSET FLAT:label_109
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_559
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_563
.label_585:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_564
	movzx	eax, ax
	cmp	eax, 4
	je	.label_565
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_567
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_565
.label_567:
	cmp	qword ptr [r14 + 8], 0
	je	.label_573
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_576
	cmp	qword ptr [r14 + 8], 0
	je	.label_573
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_578
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_587
	nop	word ptr [rax + rax]
.label_564:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_586
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_575
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_590
.label_586:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_594
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_564
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_572
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_560
	test	byte ptr [r14 + 0x48], 4
	jne	.label_560
	mov	esi, OFFSET FLAT:label_109
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_577
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_560
.label_574:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_587:
	test	rax, rax
	jne	.label_574
	jmp	.label_578
.label_565:
	test	byte ptr [rbx + 0x72], 2
	je	.label_579
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_579:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_581
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_581:
	mov	word ptr [rbx + 0x70], 6
.label_580:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_562
.label_595:
	mov	r15, rbx
	jmp	.label_563
.label_594:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_588
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_562
.label_575:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_596
	mov	rdi, rbx
	call	free
	jmp	.label_572
.label_588:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_563
.label_576:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_573:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_569
.label_578:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_572
.label_569:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_562
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_580
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_580
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_580
.label_559:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_563
.label_596:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_562
.label_590:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_589
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_558
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_593
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_597
	test	al, 1
	jne	.label_568
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_118
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_591
.label_589:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_562
.label_593:
	mov	rdi, r14
	call	restore_initial_cwd
.label_591:
	test	eax, eax
	je	.label_568
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_568
.label_597:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_571
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_582
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_571
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_571
.label_577:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_560:
	mov	word ptr [r15 + 0x74], 3
.label_572:
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
.label_563:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_570
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_566
	cmp	rax, 2
	jne	.label_558
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_561
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_561
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_566
.label_561:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_570
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_566
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_566
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_566:
	mov	ax, word ptr [r15 + 0x70]
.label_570:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_562
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_583
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_583:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_562
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_562
.label_582:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_571:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_568:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_592
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_592
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_592:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_562:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_558:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_598
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_600
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_598:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_599
	cmp	qword ptr [rax + 0x58], 0
	js	.label_599
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_600
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_599
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_599
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_599:
	add	rsp, 0x18
	ret	
.label_600:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cc0

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
	je	.label_601
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_612
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_612
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_612:
	test	eax, eax
	sete	r15b
	jmp	.label_611
.label_601:
	xor	r15d, r15d
.label_611:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_604
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_609
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_609
	and	eax, 0x200
	je	.label_609
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_609
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_609:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_607
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_605
.label_607:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_608
	test	rbx, rbx
	je	.label_602
	cmp	byte ptr [rbx], 0x2e
	jne	.label_602
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_602
	cmp	byte ptr [rbx + 2], 0
	jne	.label_602
.label_608:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_610
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_613
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_613
.label_602:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_603
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_606
.label_604:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_605
	and	eax, 0x200
	je	.label_605
	mov	edi, r13d
	call	close
	jmp	.label_605
.label_603:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_605
.label_613:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_610:
	mov	ebp, 0xffffffff
.label_606:
	test	r13d, r13d
	jns	.label_605
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_605:
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
	#Procedure 0x406e50

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
	je	.label_660
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_637
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_615
.label_660:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_651
	mov	edi, dword ptr [rbx + 0x2c]
.label_651:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_647
	test	al, 1
	je	.label_658
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_647
.label_658:
	mov	edx, 0x20000
.label_647:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_622
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_666
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_617
.label_637:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_622:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_614
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_627
.label_666:
	test	byte ptr [rbx + 0x49], 1
	je	.label_617
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
	je	.label_635
.label_617:
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
	jne	.label_615
	cmp	ebp, 2
	jne	.label_646
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_648
.label_646:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_652
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_652
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_668
.label_635:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_627
.label_652:
	mov	r15, rbx
	xor	r12d, r12d
.label_668:
	xor	r12b, 1
.label_648:
	cmp	ebp, 3
	je	.label_667
	test	r12b, r12b
	jne	.label_667
	mov	dword ptr [rsp + 4], r12d
.label_628:
	mov	rbx, r15
	jmp	.label_615
.label_667:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_618
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_618:
	test	ebx, ebx
	js	.label_626
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_628
.label_626:
	cmp	ebp, 3
	jne	.label_630
	test	r12b, r12b
	je	.label_630
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_630:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_633
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_633
	call	close
.label_633:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_615:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_644
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_644:
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
.label_657:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_619
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_643:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_631
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_632
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_632
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_649
	test	al, al
	je	.label_664
	jmp	.label_632
	nop	word ptr cs:[rax + rax]
.label_649:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_632
.label_664:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_643
	jmp	.label_645
	nop	word ptr cs:[rax + rax]
.label_632:
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
	je	.label_620
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_662
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_663
	nop	dword ptr [rax]
.label_662:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_620
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_654
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
	jmp	.label_624
.label_654:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_624:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_663:
	add	rbp, rdx
	jb	.label_634
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_636
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_661
	nop	word ptr cs:[rax + rax]
.label_636:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_661:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_653
	test	byte ptr [rbx + 0x49], 4
	jne	.label_653
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
.label_653:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_621
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_640
.label_621:
	xor	ebx, ebx
.label_640:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_616:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_665
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_665:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_641
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_641
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_641:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_657
	jmp	.label_619
.label_631:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_656
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_656:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_619
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_619
.label_645:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_619:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_625
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_625:
	test	byte ptr [rbx + 0x48], 4
	je	.label_629
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_629:
	test	r13, r13
	jne	.label_638
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_638
	cmp	r15d, 1
	je	.label_639
	test	rdx, rdx
	jne	.label_638
.label_639:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_642
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_118
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_650
.label_642:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_650:
	mov	rdx, r12
	test	eax, eax
	je	.label_638
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_623
.label_638:
	test	rdx, rdx
	je	.label_655
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_659
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_659:
	cmp	rdx, 2
	jb	.label_614
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_614
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_614
.label_655:
	cmp	r15d, 3
	jne	.label_623
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_623
	movzx	eax, ax
	cmp	eax, 7
	je	.label_623
	mov	word ptr [r14 + 0x70], 6
.label_623:
	mov	rdi, rbp
	call	fts_lfree
.label_627:
	xor	ebp, ebp
.label_614:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_620:
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
	jmp	.label_627
.label_634:
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
	jmp	.label_627
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4075e0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_669
	test	ah, 2
	jne	.label_671
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_670
.label_671:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_669:
	xor	eax, eax
.label_670:
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
	#Procedure 0x407630

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
	je	.label_673
	cmp	rbx, r15
	jne	.label_672
	cmp	byte ptr [rbx + 1], 0
	je	.label_673
.label_672:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_673:
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
	#Procedure 0x4076c0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_677
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_678
	cmp	rax, 0x52654973
	je	.label_676
	cmp	rax, 0x5346414f
	je	.label_675
	jmp	.label_674
.label_677:
	test	rax, rax
	je	.label_675
	cmp	rax, 0x6969
	je	.label_675
	cmp	rax, 0x9fa0
	je	.label_675
	jmp	.label_674
.label_678:
	cmp	rax, 0x58465342
	je	.label_676
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_674
.label_675:
	xor	ecx, ecx
.label_676:
	mov	eax, ecx
	pop	rcx
	ret	
.label_674:
	mov	ecx, 1
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407730

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
	je	.label_682
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_681
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
	je	.label_680
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_681
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_679
.label_682:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_680
	mov	qword ptr [r14], r14
.label_679:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_680
.label_681:
	xor	ebp, ebp
.label_680:
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
	#Procedure 0x4077d0

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
	jne	.label_684
	cmp	esi, -0x64
	jne	.label_687
.label_684:
	test	dl, dl
	je	.label_683
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_685
	mov	edi, eax
	jmp	.label_686
.label_683:
	test	esi, esi
	js	.label_685
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_685
	mov	edi, esi
.label_686:
	call	close
.label_685:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_687:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407820

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_688
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_688:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407850
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
	jne	.label_692
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_693
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_690
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_693
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_693
.label_692:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_693
.label_690:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_698
	call	fts_lfree
.label_698:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_691
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_691:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_695
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_695
	test	byte ptr [rbx + 0x48], 4
	jne	.label_695
	mov	esi, OFFSET FLAT:label_109
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_697
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_694
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_689
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_693
.label_695:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_693:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_697:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_693
.label_694:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_696
.label_689:
	mov	edi, ebp
	call	close
.label_696:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_693
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

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
	#Procedure 0x4079a0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_699
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_699:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	je	.label_700
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_702
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
	je	.label_703
.label_702:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_705
	mov	rax, qword ptr [rax + 8]
	jmp	.label_700
.label_705:
	mov	r12b, 1
	mov	r14, rbp
.label_703:
	xor	eax, eax
	test	r15d, r15d
	js	.label_700
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_700
	test	r12b, r12b
	je	.label_701
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_701
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_704
	cmp	rax, rbp
	je	.label_701
	call	abort
.label_704:
	mov	rdi, rbp
	call	free
.label_701:
	mov	rax, qword ptr [rsp]
.label_700:
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
	#Procedure 0x407ac0

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
	#Procedure 0x407ad0

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
	#Procedure 0x407ae0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_706
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_707]]
.label_706:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_708
	cmp	rcx, 0x1021994
	je	.label_708
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_708
	mov	al, 1
.label_708:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b30

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_714
	nop	word ptr [rax + rax]
.label_713:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_714:
	test	rcx, rcx
	je	.label_710
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_713
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_713
.label_710:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_711
	nop	word ptr cs:[rax + rax]
.label_712:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_709
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_709:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_715
	mov	rcx, qword ptr [rsi + 8]
.label_715:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_712
.label_711:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

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
	#Procedure 0x407bf0
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
	#Procedure 0x407c00

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
	je	.label_716
	cmp	r15, -2
	jb	.label_716
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_716
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_716:
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
	#Procedure 0x407c60
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_717
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_717
.label_718:
	ret	
.label_717:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_718
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c90
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_719
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_719:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407cb0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cc0
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
	#Procedure 0x407cd0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_720
.label_721:
	ret	
.label_720:
	cmp	edi, 0x7f
	je	.label_721
	xor	eax, eax
	jmp	.label_721
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cf0
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
	#Procedure 0x407d00
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
	#Procedure 0x407d10
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
	#Procedure 0x407d20
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
	#Procedure 0x407d30
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_722
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_723]]
.label_724:
	ret	
.label_722:
	xor	eax, eax
	jmp	.label_724
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d50
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_725
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_725:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d70

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
	#Procedure 0x407d80
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_726
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_726:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407da0
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
	#Procedure 0x407db0
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
	#Procedure 0x407dc0

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
	je	.label_727
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_728
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_728
.label_727:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_728
	test	cl, cl
	jne	.label_728
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_728:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e30

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_729
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_734
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_734
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_735
.label_734:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_730
	mov	al, 1
	test	rbx, rbx
	je	.label_735
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_730:
	xor	eax, eax
.label_735:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_729:
	mov	edi, OFFSET FLAT:label_731
	mov	esi, OFFSET FLAT:label_732
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_733
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0

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
	#Procedure 0x407ed0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_736
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_736:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_737
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_739
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_738
.label_739:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_738:
	mov	edx, dword ptr [rax]
.label_737:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fa0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_741
	cmp	byte ptr [rax], 0x43
	jne	.label_743
	cmp	byte ptr [rax + 1], 0
	je	.label_740
.label_743:
	mov	esi, OFFSET FLAT:label_742
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_741
.label_740:
	xor	ebx, ebx
.label_741:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fe0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ff0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408000

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408010

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_744
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_746:
	cmp	qword ptr [rcx], 0
	je	.label_745
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_747:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_747
	cmp	rsi, rax
	cmova	rax, rsi
.label_745:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_746
.label_744:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408060
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_748
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_753:
	cmp	qword ptr [rsi], 0
	je	.label_751
	mov	rax, rsi
	nop	dword ptr [rax]
.label_749:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_749
	inc	rdx
.label_751:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_753
.label_748:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_750
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_752
.label_750:
	xor	eax, eax
.label_752:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080c0
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
	mov	edx, OFFSET FLAT:label_754
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_760
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_755]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_756]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_757]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_758
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_759
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
	#Procedure 0x4081b0

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
	je	.label_761
	test	rbx, rbx
	je	.label_761
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_763:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_762
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_762
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_763
	jmp	.label_761
.label_762:
	mov	r15, qword ptr [rbx]
.label_761:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408210

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
	jae	.label_764
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_764:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408240
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_765
	mov	rcx, qword ptr [rdi]
	jmp	.label_767
	nop	
.label_768:
	add	rcx, 0x10
.label_767:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_766
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_768
.label_765:
	ret	
.label_766:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408270
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
.label_773:
	cmp	qword ptr [rcx], rbx
	jne	.label_769
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_770
.label_769:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_773
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_772:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_771
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_772
	jmp	.label_771
.label_770:
	mov	rcx, qword ptr [rdx]
.label_771:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_774
	xor	eax, eax
.label_777:
	cmp	qword ptr [r8], 0
	je	.label_775
	test	r8, r8
	je	.label_775
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_776:
	cmp	rax, rdx
	jae	.label_774
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_776
.label_775:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_777
.label_774:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330
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
	jae	.label_778
	xor	ebx, ebx
.label_780:
	cmp	qword ptr [r13], 0
	je	.label_779
	test	r13, r13
	je	.label_779
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_781:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_778
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_781
.label_779:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_780
.label_778:
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
	#Procedure 0x4083b0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_782
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_783:
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
	jne	.label_783
.label_782:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_784]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408410

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
	je	.label_786
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_785
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_785
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_785
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
	jmp	.label_786
.label_785:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_786:
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
	#Procedure 0x4084f0

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
	#Procedure 0x408510

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408520

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_787
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_788]]
	jbe	.label_789
	movss	xmm1,  dword ptr [dword ptr [rip + label_792]]
	ucomiss	xmm1, xmm0
	jbe	.label_789
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_791]]
	jbe	.label_789
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_789
	addss	xmm1,  dword ptr [dword ptr [rip + label_788]]
	ucomiss	xmm0, xmm1
	jbe	.label_789
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_790]]
	ucomiss	xmm2, xmm0
	jb	.label_789
	ucomiss	xmm0, xmm1
	ja	.label_787
.label_789:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_787:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085a0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_793
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_798
	cvtsi2ss	xmm0, rdi
	jmp	.label_794
.label_798:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_794:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_795]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_796]]
	jae	.label_797
.label_793:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_797:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408620
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_799
	nop	dword ptr [rax]
.label_805:
	add	r14, 0x10
.label_799:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_803
	cmp	qword ptr [r14], 0
	je	.label_805
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_800
	nop	word ptr cs:[rax + rax]
.label_802:
	test	cl, 1
	je	.label_804
	mov	rdi, qword ptr [rbx]
	call	rax
.label_804:
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
	jne	.label_802
.label_800:
	test	cl, cl
	je	.label_801
	mov	rdi, qword ptr [r14]
	call	rax
.label_801:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_805
.label_803:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_806
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_806
	mov	r14, qword ptr [r15]
	jmp	.label_813
	nop	dword ptr [rax + rax]
.label_809:
	add	r14, 0x10
.label_813:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_806
	cmp	qword ptr [r14], 0
	je	.label_809
	test	r14, r14
	je	.label_809
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_807:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_807
	jmp	.label_809
.label_806:
	mov	r14, qword ptr [r15]
	jmp	.label_811
	nop	word ptr [rax + rax]
.label_810:
	add	r14, 0x10
.label_811:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_814
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_810
	nop	word ptr cs:[rax + rax]
.label_808:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_808
	jmp	.label_810
.label_814:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_812
	nop	dword ptr [rax]
.label_815:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_815
.label_812:
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
	#Procedure 0x408790

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
	je	.label_816
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_817
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_816
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
	je	.label_818
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
	jmp	.label_817
.label_818:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_819
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_819
	mov	rdi, qword ptr [rsp]
	call	free
.label_816:
	xor	r14d, r14d
.label_817:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_819:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088c0

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
	jae	.label_820
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_827:
	cmp	qword ptr [r15], 0
	je	.label_824
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_829
	nop	word ptr cs:[rax + rax]
.label_823:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_825
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_826
	nop	word ptr cs:[rax + rax]
.label_825:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_826:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_823
.label_829:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_824
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_828
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_821
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_822
.label_828:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_822:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_824:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_827
	mov	al, 1
.label_820:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_821:
	xor	eax, eax
	jmp	.label_820
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089e0

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
	je	.label_834
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_832
	test	rbx, rbx
	je	.label_833
	mov	qword ptr [rbx], rax
	jmp	.label_833
.label_832:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_838
	cvtsi2ss	xmm0, rcx
	jmp	.label_843
.label_838:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_843:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_831
	cvtsi2ss	xmm1, rax
	jmp	.label_837
.label_831:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_837:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_839
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_830
	cvtsi2ss	xmm2, rcx
	jmp	.label_835
.label_830:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_835:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_841
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_844
.label_841:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_844:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_839
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_840
	mulss	xmm0, xmm1
.label_840:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_796]]
	jae	.label_833
	movss	xmm1,  dword ptr [dword ptr [rip + label_795]]
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
	je	.label_833
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_834
.label_839:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_836
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_833
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_842
.label_836:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_842:
	mov	ebp, 1
.label_833:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_834:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bc0

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
	je	.label_846
	cmp	rsi, r13
	je	.label_849
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_851
.label_849:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_846
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_848
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_850
.label_851:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_846
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_847:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_845
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_845
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_847
	jmp	.label_846
.label_848:
	mov	qword ptr [rbx], 0
	jmp	.label_846
.label_845:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_846
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_850:
	mov	rdi, r14
	call	free_entry
.label_846:
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
	#Procedure 0x408c90

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_852
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_852:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cc0

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
	je	.label_853
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_853:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408cf0

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
	je	.label_856
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_861
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_864
	cvtsi2ss	xmm0, rax
	jmp	.label_854
.label_864:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_854:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_860
	cvtsi2ss	xmm1, rcx
	jmp	.label_865
.label_860:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_865:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_861
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_859
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_863
.label_859:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_863:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_855
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_858
.label_855:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_858:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_861
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_866
	mulss	xmm0, dword ptr [rcx + 8]
.label_866:
	movss	xmm1,  dword ptr [dword ptr [rip + label_795]]
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
	jne	.label_861
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_857
	nop	dword ptr [rax + rax]
.label_862:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_862
.label_857:
	mov	qword ptr [r15 + 0x48], 0
.label_861:
	mov	rax, r14
.label_856:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e80

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
	jmp	.label_867
	nop	
.label_868:
	add	rbx, 2
.label_867:
	cmp	rbx, -1
	je	.label_869
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_868
	mov	r14, rbx
.label_869:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_870
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_871:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_870
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_871
.label_870:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f20

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
	#Procedure 0x408f40

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_872:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_872
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f60

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f70

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
	jne	.label_873
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_873:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_874
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_875
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_875:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_874:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_35
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_876
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409020

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_877
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_877:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_878
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_879
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_880
.label_879:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_880:
	mov	ecx, dword ptr [rax]
.label_878:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4090e0

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
	js	.label_882
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_881
	mov	dword ptr [r14], ebp
	jmp	.label_882
.label_881:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_882:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409130

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
	ja	.label_883
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
	jmp	.label_884
.label_883:
	mov	eax, ebx
.label_884:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409180

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_886
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_885
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_886
.label_885:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_886
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_887
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_887:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_886:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409200

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_888
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_888:
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
	ja	.label_890
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_889
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_891
	test	esi, esi
	jne	.label_890
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_894
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_898
.label_890:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_896
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_891
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_893
.label_889:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_891:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_899
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_901
.label_899:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_901:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_893:
	cmp	eax, 6
	jne	.label_896
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_897
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_900
.label_896:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_895
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_892
.label_894:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_898:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_897:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_900:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_895:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_892:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093c0

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
	#Procedure 0x4093d0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_904
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_906
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_906
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_903
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_902
.label_906:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_902
.label_904:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_902:
	test	ebx, ebx
	js	.label_903
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_903
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_905
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_903
.label_905:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_903:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094a0

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
	#Procedure 0x4094c0
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
	#Procedure 0x4094d0
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
	#Procedure 0x4094e0
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
	#Procedure 0x4094f0
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
	#Procedure 0x409500
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
	#Procedure 0x409510

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
	#Procedure 0x409520
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
	#Procedure 0x409540
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
	#Procedure 0x409560
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
	#Procedure 0x409580
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
	#Procedure 0x4095a0

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
	#Procedure 0x409660

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x409670

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
	#Procedure 0x409680

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x409690

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
