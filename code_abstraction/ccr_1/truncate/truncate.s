	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	call	emit_size_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_13:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401750

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_30
	nop	
.label_28:
	mov	edi, OFFSET FLAT:label_21
	call	strcmp
	test	eax, eax
	je	.label_26
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_28
.label_26:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_21
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_21
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_34
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
	#Procedure 0x4018d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r13, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_40
	mov	esi, OFFSET FLAT:label_93
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_40
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	xor	r14d, r14d
	jmp	.label_37
.label_498:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ref_file]],  rax
	nop	dword ptr [rax + rax]
.label_37:
	mov	edx, OFFSET FLAT:label_47
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_51
	add	eax, -0x63
	cmp	eax, 0x10
	ja	.label_48
	jmp	qword ptr [word ptr [+ (rax * 8) + label_91]]
.label_496:
	mov	byte ptr [byte ptr [rip + no_create]],  1
	jmp	.label_37
.label_497:
	mov	byte ptr [byte ptr [rip + block_mode]],  1
	jmp	.label_37
.label_499:
	mov	dword ptr [rsp], r15d
	mov	r15, r13
	mov	r13, r12
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	bl, byte ptr [rbp]
	movsx	edi, bl
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	r14, rax
	mov	rax, qword ptr [r14]
	test	byte ptr [rax + r12*2 + 1], 0x20
	je	.label_69
	inc	rbp
	nop	dword ptr [rax]
.label_89:
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	movzx	ebx, byte ptr [rbp]
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r14]
	inc	rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_89
	dec	rbp
.label_69:
	mov	r12, r13
	movsx	eax, bl
	add	eax, -0x25
	cmp	eax, 0x19
	mov	r13, r15
	ja	.label_86
	mov	r15d, dword ptr [rsp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_90]]
.label_505:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 5
	jmp	.label_39
.label_506:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 4
	jmp	.label_39
.label_507:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 3
	jmp	.label_39
.label_508:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 2
	jmp	.label_39
.label_86:
	mov	r15d, dword ptr [rsp]
.label_39:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	bpl, byte ptr [rbx]
	movsx	edi, bpl
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r14]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	je	.label_54
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	qword ptr [word ptr [rip + optarg]],  rbx
	movzx	ebp, byte ptr [rbx]
	movsx	edi, bpl
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r14]
	inc	rbx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_63
.label_54:
	cmp	bpl, 0x2d
	je	.label_67
	cmp	bpl, 0x2b
	jne	.label_68
.label_67:
	test	r12d, r12d
	mov	r12d, 1
	movabs	rbp, 0x7fffffffffffffff
	je	.label_70
	jmp	.label_76
.label_68:
	movabs	rbp, 0x7fffffffffffffff
.label_70:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rbp + 1]
	mov	ecx, OFFSET FLAT:label_88
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, rbp
	mov	r8, rax
	call	xdectoimax
	mov	rbx, rax
	mov	eax, r12d
	or	eax, 1
	mov	r14b, 1
	cmp	eax, 5
	jne	.label_37
	test	rbx, rbx
	jne	.label_37
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_51:
	cmp	eax, -1
	jne	.label_49
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rax,  qword ptr [word ptr [rip + ref_file]]
	test	r14b, r14b
	jne	.label_50
	test	rax, rax
	je	.label_56
.label_50:
	test	r12d, r12d
	jne	.label_57
	test	r14b, r14b
	je	.label_57
	test	rax, rax
	jne	.label_58
.label_57:
	test	r14b, r14b
	jne	.label_59
	test	byte ptr [byte ptr [rip + block_mode]],  1
	jne	.label_60
.label_59:
	mov	qword ptr [rsp + 0x10], r12
	cmp	ebp, r15d
	jge	.label_92
	mov	r12, -1
	cmp	qword ptr [word ptr [rip + ref_file]],  0
	mov	qword ptr [rsp], rbx
	je	.label_74
	mov	rdi,  qword ptr [word ptr [rip + ref_file]]
	lea	rsi, [rsp + 0x18]
	call	stat
	test	eax, eax
	jne	.label_78
	lea	rdi, [rsp + 0x18]
	call	usable_st_size
	test	al, al
	je	.label_83
	mov	rbx, qword ptr [rsp + 0x48]
	test	rbx, rbx
	jns	.label_84
	jmp	.label_87
.label_83:
	mov	rdi,  qword ptr [word ptr [rip + ref_file]]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r15d, eax
	test	r15d, r15d
	js	.label_87
	xor	esi, esi
	mov	edx, 2
	mov	edi, r15d
	call	lseek
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [rsp + 0xc], eax
	mov	edi, r15d
	call	close
	test	rbx, rbx
	js	.label_45
.label_84:
	cmp	r14b, 1
	sbb	r12, r12
	or	r12, rbx
	test	r14b, r14b
	mov	rax, qword ptr [rsp]
	cmove	rax, rbx
	mov	qword ptr [rsp], rax
.label_74:
	lea	r14, [r13 + rbp*8]
	mov	al,  byte ptr [byte ptr [rip + no_create]]
	test	al, al
	mov	eax, 0x801
	mov	r13d, 0x841
	cmovne	r13d, eax
	xor	r15d, r15d
	jmp	.label_38
	nop	dword ptr [rax + rax]
.label_55:
	call	error
	mov	r15b, 1
.label_38:
	add	r14, 8
	mov	rcx, r14
	nop	
.label_77:
	mov	r14, rcx
	mov	rbp, qword ptr [r14 - 8]
	test	rbp, rbp
	je	.label_62
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, r13d
	call	open
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_71
	cmp	byte ptr [byte ptr [rip + no_create]],  1
	jne	.label_73
	call	__errno_location
	lea	rcx, [r14 + 8]
	cmp	dword ptr [rax], 2
	je	.label_77
.label_73:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	jmp	.label_55
	nop	dword ptr [rax]
.label_71:
	mov	edi, ebx
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp]
	mov	rcx, r12
	mov	r8, qword ptr [rsp + 0x10]
	call	do_ftruncate
	xor	al, 1
	or	r15b, al
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_38
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	jmp	.label_55
.label_62:
	movzx	eax, r15b
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	cmp	eax, 0xffffff7d
	je	.label_61
	cmp	eax, 0xffffff7e
	jne	.label_48
	xor	edi, edi
	call	usage
.label_61:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_21
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_66
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_48:
	mov	edi, 1
	call	usage
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_82
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_35
	jmp	.label_36
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_44
.label_36:
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	jmp	.label_53
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
.label_53:
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
.label_78:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	jmp	.label_65
.label_45:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [r12], eax
.label_87:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
.label_65:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + ref_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f00

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_94
	mov	al, 1
	ret	
.label_94:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl do_ftruncate
	.type do_ftruncate, @function
do_ftruncate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, r8d
	mov	rbp, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	al,  byte ptr [byte ptr [rip + block_mode]]
	test	al, al
	jne	.label_104
	test	rbp, rbp
	jns	.label_100
	test	ebx, ebx
	je	.label_100
.label_104:
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_100
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
.label_108:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_107
.label_100:
	movabs	r13, 0x7fffffffffffffff
	cmp	byte ptr [byte ptr [rip + block_mode]],  1
	jne	.label_106
	mov	qword ptr [rsp], r14
	mov	rax, qword ptr [rsp + 0x40]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	r14d, 0x200
	cmovb	r14, rax
	test	rax, rax
	cmovle	r14, rcx
	lea	rax, [r13 + 1]
	cqo	
	idiv	r14
	cmp	rax, r12
	jg	.label_112
	mov	rax, r13
	cqo	
	idiv	r14
	cmp	rax, r12
	jge	.label_97
.label_112:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, r14
	mov	r9, rbp
	call	error
	jmp	.label_107
.label_97:
	imul	r12, r14
	mov	r14, qword ptr [rsp]
.label_106:
	test	ebx, ebx
	je	.label_98
	test	rbp, rbp
	jns	.label_113
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_114
	mov	rbp, qword ptr [rsp + 0x38]
	test	rbp, rbp
	jns	.label_113
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	jmp	.label_96
.label_114:
	xor	esi, esi
	mov	edx, 2
	mov	edi, r15d
	call	lseek
	mov	rbp, rax
	test	rbp, rbp
	js	.label_103
.label_113:
	add	ebx, -2
	cmp	ebx, 3
	ja	.label_102
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_105]]
.label_519:
	cmp	rbp, r12
	cmova	r12, rbp
	jmp	.label_98
.label_102:
	sub	r13, rbp
	cmp	r12, r13
	jle	.label_110
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	jmp	.label_96
.label_520:
	cmp	rbp, r12
	cmovb	r12, rbp
	jmp	.label_98
.label_521:
	xor	edx, edx
	mov	rax, rbp
	div	r12
	sub	rbp, rdx
	mov	r12, rbp
	jmp	.label_98
.label_522:
	lea	rcx, [r12 + rbp - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r12
	sub	rcx, rdx
	mov	r12, rcx
	jns	.label_98
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
.label_96:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_107
.label_110:
	add	r12, rbp
.label_98:
	xor	ebx, ebx
	test	r12, r12
	cmovns	rbx, r12
	mov	edi, r15d
	mov	rsi, rbx
	call	ftruncate
	mov	r15b, 1
	cmp	eax, -1
	jne	.label_107
	call	__errno_location
	mov	r12, r14
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	r8, rbx
	call	error
.label_107:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_103:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	jmp	.label_108
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_116
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_118
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_118
.label_116:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_117
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_119
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_121
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_117:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_119:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_122
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
	#Procedure 0x4022b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_126
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_128
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_128
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_124
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_124:
	mov	rbx, r14
.label_128:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_126:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_127
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402360
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
	#Procedure 0x4023a0
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
	#Procedure 0x4023b0
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
	#Procedure 0x4023c0

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
	#Procedure 0x402400
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
	#Procedure 0x402420

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_129
	test	rdx, rdx
	je	.label_129
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_129:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402450
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
	#Procedure 0x4024d0

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
.label_214:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_187
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_221]]
.label_466:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_226
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_170
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_467:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_240
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_240
	xor	r14d, r14d
.label_135:
	cmp	r14, r11
	jae	.label_130
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_130:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_135
.label_240:
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
	jmp	.label_142
.label_459:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_142
.label_462:
	mov	al, 1
.label_460:
	mov	r12b, 1
.label_463:
	test	r12b, 1
	mov	cl, 1
	je	.label_157
	mov	ecx, eax
.label_157:
	mov	al, cl
.label_461:
	test	r12b, 1
	jne	.label_160
	test	r11, r11
	je	.label_228
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_228:
	mov	r14d, 1
	jmp	.label_166
.label_160:
	xor	r14d, r14d
.label_166:
	mov	ecx, OFFSET FLAT:label_170
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_142
.label_464:
	test	r12b, 1
	jne	.label_179
	test	r11, r11
	je	.label_153
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_153:
	mov	r14d, 1
	jmp	.label_176
.label_465:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_188
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_142
.label_179:
	xor	r14d, r14d
.label_176:
	mov	eax, OFFSET FLAT:label_188
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_142:
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
	jmp	.label_199
	nop	dword ptr [rax]
.label_139:
	inc	rsi
.label_199:
	cmp	rbp, -1
	je	.label_232
	cmp	rsi, rbp
	jne	.label_150
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_232:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_190
.label_150:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_241
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_227
	cmp	rbp, -1
	jne	.label_227
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
.label_227:
	cmp	rbx, rbp
	jbe	.label_141
.label_241:
	xor	r8d, r8d
.label_167:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_143
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_146]]
.label_415:
	test	rsi, rsi
	jne	.label_137
	jmp	.label_151
	nop	
.label_141:
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
	jne	.label_164
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_167
	jmp	.label_180
.label_164:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_167
.label_419:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_189
	test	rsi, rsi
	jne	.label_192
	cmp	rbp, 1
	je	.label_151
	xor	r13d, r13d
	jmp	.label_147
.label_408:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_198
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
	cmp	r12d, 2
	jne	.label_182
	mov	eax, r9d
	and	al, 1
	jne	.label_182
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_204
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_209:
	add	r14, 3
	mov	r9b, 1
.label_182:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_213:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_215
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_215
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_215
	cmp	r14, r11
	jae	.label_236
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_236:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_237
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_237:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_147
.label_409:
	mov	bl, 0x62
	jmp	.label_239
.label_410:
	mov	cl, 0x74
	jmp	.label_174
.label_411:
	mov	bl, 0x76
	jmp	.label_239
.label_412:
	mov	bl, 0x66
	jmp	.label_239
.label_413:
	mov	cl, 0x72
	jmp	.label_174
.label_416:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_244
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
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
	jae	.label_136
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_136:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_149
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_149:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	add	r14, 3
	xor	r9d, r9d
.label_244:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_147
.label_417:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_163
	cmp	r12d, 2
	jne	.label_137
	cmp	byte ptr [rsp + 7], 0
	je	.label_137
	jmp	.label_132
.label_418:
	cmp	r12d, 2
	jne	.label_175
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_140
.label_143:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_184
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
.label_185:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_169
	test	r8b, r8b
	je	.label_169
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_147
.label_189:
	test	rsi, rsi
	jne	.label_148
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_148
.label_151:
	mov	dl, 1
.label_414:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_132
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_147:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_222
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_224
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_222:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_131
.label_224:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_233
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_140
	jmp	.label_243
	nop	dword ptr [rax]
.label_131:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_243
	jmp	.label_140
.label_233:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_243
.label_198:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_139
	xor	r15d, r15d
	jmp	.label_137
.label_175:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_174
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_140
.label_174:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_132
.label_239:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_147
	nop	word ptr cs:[rax + rax]
.label_243:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
	cmp	r12d, 2
	jne	.label_158
	mov	eax, r9d
	and	al, 1
	jne	.label_158
	cmp	r14, r11
	jae	.label_161
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_161:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_207:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_172
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_172:
	add	r14, 3
	mov	r9b, 1
.label_158:
	cmp	r14, r11
	jae	.label_178
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_178:
	inc	r14
	jmp	.label_171
.label_184:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_186
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_186:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_195:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_203
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_206
	cmp	rbp, -2
	je	.label_238
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_211
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_168:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_230
	bt	rsi, rdx
	jb	.label_180
.label_230:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_168
.label_211:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_235
	xor	r13d, r13d
.label_235:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_195
	jmp	.label_185
.label_215:
	xor	r13d, r13d
	jmp	.label_147
.label_148:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_147
.label_163:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_137
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_137
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_137
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_144
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_217
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_154
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_154:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_165:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_223
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_223:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_147
.label_137:
	xor	eax, eax
.label_192:
	xor	r13d, r13d
	jmp	.label_147
.label_169:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_133:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_183:
	test	r8b, r8b
	je	.label_219
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_194
	cmp	r14, r11
	jae	.label_196
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_196:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_194
	nop	dword ptr [rax]
.label_219:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_180
	cmp	r12d, 2
	jne	.label_202
	mov	eax, r9d
	and	al, 1
	jne	.label_202
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_208:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_212
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_212:
	add	r14, 3
	mov	r9b, 1
.label_202:
	cmp	r14, r11
	jae	.label_177
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_177:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_218
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_218:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_225
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_225:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_194:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_140
	test	r9b, 1
	je	.label_191
	mov	ebx, eax
	and	bl, 1
	jne	.label_191
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_242
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_242:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_229:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_191:
	cmp	r14, r11
	jae	.label_133
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_140:
	test	r9b, 1
	je	.label_200
	and	al, 1
	jne	.label_200
	cmp	r14, r11
	jae	.label_145
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_145:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_138
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_138:
	add	r14, 2
	xor	r9d, r9d
.label_200:
	mov	ebx, r15d
.label_171:
	cmp	r14, r11
	jae	.label_156
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_156:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_139
.label_206:
	xor	r13d, r13d
.label_203:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_185
.label_238:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_173
	mov	rsi, qword ptr [rsp + 0x50]
.label_155:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_134
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_155
	xor	r13d, r13d
	jmp	.label_185
.label_173:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_185
.label_134:
	xor	r13d, r13d
	jmp	.label_185
.label_144:
	xor	r13d, r13d
	jmp	.label_147
.label_217:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_147
	nop	dword ptr [rax + rax]
.label_190:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_197
	or	dl, al
	je	.label_180
.label_197:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_201
	or	dl, al
	jne	.label_201
	test	r10b, 1
	jne	.label_210
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_201
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_214
.label_201:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_216
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_220
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_220
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_234:
	cmp	r14, r11
	jae	.label_231
	mov	byte ptr [rcx + r14], al
.label_231:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_234
	jmp	.label_220
.label_132:
	mov	qword ptr [rsp + 0x20], rbp
.label_180:
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
.label_159:
	mov	r14, rax
.label_162:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_210:
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
	jmp	.label_159
.label_216:
	mov	rcx, qword ptr [rsp + 8]
.label_220:
	cmp	r14, r11
	jae	.label_162
	mov	byte ptr [rcx + r14], 0
	jmp	.label_162
.label_187:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403290
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
	#Procedure 0x4032a0

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
	je	.label_245
	mov	qword ptr [rax], rbx
.label_245:
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
	#Procedure 0x403390
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_246
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_248:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_248
.label_246:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_250
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_249]], OFFSET FLAT:slot0
.label_250:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_247
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_247:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403440

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
	js	.label_251
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_254
	cmp	r12d, 0x7fffffff
	je	.label_256
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
	jne	.label_252
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_252:
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
.label_254:
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
	jbe	.label_257
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_253
.label_257:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_255
	mov	rdi, r14
	call	free
.label_255:
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
.label_253:
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
.label_251:
	call	abort
.label_256:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403600

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610
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
	#Procedure 0x403620
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
	#Procedure 0x403630

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
	#Procedure 0x403670

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
	je	.label_258
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
.label_258:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

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
	#Procedure 0x403710

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
	#Procedure 0x403730
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
	#Procedure 0x403750

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
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	#Procedure 0x4037c0

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
	#Procedure 0x4037d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0
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
	#Procedure 0x403840

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403850

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
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	#Procedure 0x4038c0
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
	#Procedure 0x4038e0
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
	#Procedure 0x403900

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403910
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
	#Procedure 0x403920

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403930

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
	#Procedure 0x403940

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
	jne	.label_269
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
	je	.label_266
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_262
	mov	eax, OFFSET FLAT:label_263
	jmp	.label_264
.label_266:
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
	je	.label_265
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_267
	mov	eax, OFFSET FLAT:label_268
	jmp	.label_264
.label_265:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_188
	mov	eax, OFFSET FLAT:label_170
.label_264:
	cmove	rax, rcx
.label_269:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a00

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
	je	.label_271
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_272
	jmp	.label_270
.label_271:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_270
.label_272:
	mov	eax, 1
	test	bpl, bpl
	je	.label_270
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
.label_270:
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
	#Procedure 0x403a80

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_274
.label_275:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_274
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_274
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
.label_274:
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
	#Procedure 0x403b10

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
	je	.label_276
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_276:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_277
.label_278:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
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
.label_277:
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
	#Procedure 0x403b90

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
	je	.label_281
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_281:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
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
.label_279:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c00

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
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_282
	jmp	.label_283
.label_284:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_283
.label_282:
	mov	eax, 1
	test	bpl, bpl
	je	.label_283
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_283:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403c60

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
	je	.label_285
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_285:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_286
.label_287:
	mov	eax, 1
	test	bpl, bpl
	je	.label_286
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_286:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

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
	je	.label_290
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_289
	jmp	.label_288
.label_290:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_288
.label_289:
	mov	eax, 1
	test	bpl, bpl
	je	.label_288
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_288:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_293
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_292
	jmp	.label_291
.label_293:
	mov	eax, 1
	test	cl, cl
	je	.label_291
.label_292:
	xor	eax, eax
.label_291:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403d30

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
	je	.label_305
	mov	edx, OFFSET FLAT:label_300
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_307
.label_305:
	mov	edx, OFFSET FLAT:label_308
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_295
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_296]]
.label_434:
	add	rsp, 8
	jmp	.label_294
.label_295:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	jmp	.label_294
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
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
	jmp	.label_294
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	jmp	.label_294
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
	jmp	.label_294
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	jmp	.label_294
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	jmp	.label_294
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
.label_294:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_313:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_313
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_315:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_314
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_316
	nop	dword ptr [rax]
.label_314:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_316:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_317
	inc	r9
	cmp	r9, 0xa
	jb	.label_315
.label_317:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_318
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_318:
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
	#Procedure 0x4041b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_320
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_323
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_323:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404260

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_324
	test	rax, rax
	je	.label_325
.label_324:
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_326
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_326:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_327
	test	rbx, rbx
	jne	.label_327
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_327:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	je	.label_328
.label_329:
	pop	rbx
	ret	
.label_328:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_330
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_333
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_331
.label_330:
	test	rcx, rcx
	jne	.label_334
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_334:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_332
.label_331:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_333:
	call	xalloc_die
.label_332:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380
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
	#Procedure 0x4043b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_335
	call	rpl_calloc
	test	rax, rax
	je	.label_335
	pop	rcx
	ret	
.label_335:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0

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
	#Procedure 0x404410
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
	#Procedure 0x404430

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_121
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	cmp	eax, 3
	je	.label_339
	cmp	eax, 1
	je	.label_342
	test	eax, eax
	jne	.label_337
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_341
	cmp	rbx, r15
	jle	.label_340
.label_341:
	cmp	rbx, 0x40000000
	jl	.label_338
.label_342:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_337
.label_339:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_337:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_340:
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_338:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_343
	mov	dword ptr [rax], 0x4b
	jmp	.label_337
.label_343:
	mov	dword ptr [rax], 0x22
	jmp	.label_337
	nop	
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14, rcx
	mov	ebx, edx
	mov	r12, rdi
	cmp	ebx, 0x25
	jae	.label_359
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_349
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_351
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_353
	mov	r12d, 1
.label_351:
	test	r13, r13
	jne	.label_357
	jmp	.label_346
.label_349:
	mov	r12d, 4
	test	r13, r13
	je	.label_353
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_353
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_353
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_357:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_346
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_350
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_347
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_347
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_358
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_344
	cmp	ecx, 0x44
	je	.label_344
	cmp	ecx, 0x69
	jne	.label_347
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_347
.label_358:
	mov	esi, 0x400
	jmp	.label_347
.label_344:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_347:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_350
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_352]]
.label_448:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_345
.label_350:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_353
.label_449:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_345
.label_450:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_345
.label_452:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_345
.label_446:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_348
.label_447:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_345
.label_451:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_345
.label_453:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_345
.label_454:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_345
.label_455:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_348
.label_456:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_348:
	call	bkm_scale
.label_345:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_346:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_353:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_359:
	mov	edi, OFFSET FLAT:label_354
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_356
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_360
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_360:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_361
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_361:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

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
	je	.label_362
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_363:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_363
.label_362:
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
	#Procedure 0x404870

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
	.align	32
	#Procedure 0x4048c0

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
	je	.label_366
	cmp	r15, -2
	jb	.label_366
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_366
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_366:
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
	#Procedure 0x404920
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_367
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_367
.label_368:
	ret	
.label_367:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_368
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_369
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_369:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
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
	#Procedure 0x404990
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_370
.label_371:
	ret	
.label_370:
	cmp	edi, 0x7f
	je	.label_371
	xor	eax, eax
	jmp	.label_371
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0
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
	#Procedure 0x4049c0
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
	#Procedure 0x4049d0
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
	#Procedure 0x4049e0
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
	#Procedure 0x4049f0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_372
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_373]]
.label_374:
	ret	
.label_372:
	xor	eax, eax
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_375
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_375:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

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
	#Procedure 0x404a40
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_376
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_376:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a60
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
	#Procedure 0x404a70
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
	#Procedure 0x404a80

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
	je	.label_377
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_378
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_378
.label_377:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_378
	test	cl, cl
	jne	.label_378
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_378:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_380
	cmp	byte ptr [rax], 0x43
	jne	.label_382
	cmp	byte ptr [rax + 1], 0
	je	.label_379
.label_382:
	mov	esi, OFFSET FLAT:label_381
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_380
.label_379:
	xor	ebx, ebx
.label_380:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b30

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_34
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_383
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_384
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_385
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_384
.label_385:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_384
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_386
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_386:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_384:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_387
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_387
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_387:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_388
	ret	
.label_388:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

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
	jne	.label_389
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_389
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_390
.label_389:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_390:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_391
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_391:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ca0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d70

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	32
	#Procedure 0x404d80

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
