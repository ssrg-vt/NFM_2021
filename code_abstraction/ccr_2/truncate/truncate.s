	.section	.text
	.align	16
	#Procedure 0x401590

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_17:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f0

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
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_37
	call	setlocale
	mov	edi, OFFSET FLAT:label_43
	mov	esi, OFFSET FLAT:label_44
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_43
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r13d, r13d
	movabs	r12, 0x7fffffffffffffff
	xor	ebp, ebp
	jmp	.label_57
.label_552:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
.label_57:
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_73
	add	eax, -0x63
	cmp	eax, 0x10
	ja	.label_76
	jmp	qword ptr [(rax * 8) + label_78]
.label_550:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_57
.label_551:
	mov	byte ptr [rip + block_mode],  1
	jmp	.label_57
.label_553:
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_93
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ebp, byte ptr [rbx]
	mov	rcx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	jne	.label_98
	dec	rbx
.label_93:
	movsx	ecx, bpl
	add	ecx, -0x25
	cmp	ecx, 0x19
	ja	.label_45
	jmp	qword ptr [(rcx * 8) + label_110]
.label_546:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 5
	jmp	.label_45
.label_547:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 4
	jmp	.label_45
.label_548:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 3
	jmp	.label_45
.label_549:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 2
.label_45:
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_88
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	jne	.label_66
	dec	rbx
.label_88:
	cmp	cl, 0x2d
	je	.label_74
	cmp	cl, 0x2b
	jne	.label_90
.label_74:
	test	r13d, r13d
	mov	r13d, 1
	jne	.label_77
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r12 + 1]
	mov	ecx, OFFSET FLAT:label_100
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoimax
	mov	rbx, rax
	mov	eax, r13d
	or	eax, 1
	mov	bpl, 1
	cmp	eax, 5
	jne	.label_57
	test	rbx, rbx
	jne	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_73:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, -1
	jne	.label_32
	movsxd	r13, dword ptr [rip + optind]
	mov	rsi, qword ptr [rip + ref_file]
	test	bpl, bpl
	jne	.label_38
	test	rsi, rsi
	je	.label_46
.label_38:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_51
	test	bpl, bpl
	je	.label_51
	test	rsi, rsi
	jne	.label_55
.label_51:
	test	bpl, bpl
	jne	.label_89
	test	byte ptr [rip + block_mode],  1
	jne	.label_60
.label_89:
	cmp	r13d, r14d
	jge	.label_61
	test	rsi, rsi
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_65
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_96
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_75
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	jns	.label_80
	jmp	.label_81
.label_65:
	mov	rdx, -1
	jmp	.label_86
.label_75:
	mov	rdi, qword ptr [rip + ref_file]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r12d, eax
	test	r12d, r12d
	js	.label_81
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [rsp + 0xc], eax
	mov	edi, r12d
	call	close
	test	rbx, rbx
	js	.label_109
.label_80:
	cmp	bpl, 1
	sbb	rdx, rdx
	or	rdx, rbx
	test	bpl, bpl
	mov	rax, qword ptr [rsp + 0x20]
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x20], rax
.label_86:
	lea	r12, [r15 + r13*8]
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	setne	al
	mov	cl, byte ptr [rip + no_create]
	test	cl, cl
	mov	ecx, 0x801
	mov	r13d, 0x841
	cmovne	r13d, ecx
	mov	qword ptr [rsp + 0x28], rdx
	test	rdx, rdx
	sets	cl
	and	cl, al
	mov	byte ptr [rsp + 0xc], cl
	xor	r14d, r14d
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r14b, 1
.label_41:
	add	r12, 8
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	r12, rcx
	mov	r15, qword ptr [r12 - 8]
	test	r15, r15
	je	.label_82
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	mov	esi, r13d
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_95
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	cmp	bl, 1
	jne	.label_99
	lea	rcx, [r12 + 8]
	cmp	dword ptr [rax], 2
	je	.label_97
.label_99:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	al, byte ptr [rip + block_mode]
	or	al, byte ptr [rsp + 0xc]
	test	al, 1
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x30], r14
	je	.label_31
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0x38]
	call	__fxstat
	test	eax, eax
	je	.label_52
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
.label_58:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_40
.label_52:
	cmp	byte ptr [rip + block_mode],  1
	mov	rcx, rbx
	jne	.label_31
	mov	rax, qword ptr [rsp + 0x70]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	inc	rax
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jg	.label_68
	movabs	rax, 0x7fffffffffffffff
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jge	.label_87
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	mov	qword ptr [rsp + 0x18], rcx
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	r9, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
	call	error
	jmp	.label_40
.label_87:
	imul	rcx, rbx
.label_31:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_39
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	mov	rsi, rax
	jns	.label_50
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_54
	mov	rsi, qword ptr [rsp + 0x68]
	test	rsi, rsi
	jns	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_64
.label_54:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	mov	rbx, rcx
	call	lseek
	mov	rcx, rbx
	mov	rsi, rax
	test	rsi, rsi
	js	.label_72
.label_50:
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax - 2]
	cmp	eax, 3
	ja	.label_42
	jmp	qword ptr [(rax * 8) + label_69]
.label_517:
	cmp	rsi, rcx
	cmova	rcx, rsi
	jmp	.label_39
.label_42:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rsi
	cmp	rcx, rax
	jle	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	jmp	.label_64
.label_518:
	cmp	rsi, rcx
	cmovb	rcx, rsi
	jmp	.label_39
.label_519:
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jmp	.label_39
.label_520:
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jns	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
.label_64:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_40
.label_102:
	add	rcx, rsi
.label_39:
	xor	ebx, ebx
	test	rcx, rcx
	mov	r14d, 0
	cmovns	r14, rcx
	mov	edi, ebp
	mov	rsi, r14
	call	ftruncate
	cmp	eax, -1
	jne	.label_56
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x18]
	mov	rdx, rbx
	mov	r8, r14
	call	error
.label_40:
	mov	bl, 1
.label_56:
	mov	r14, qword ptr [rsp + 0x30]
	or	r14b, bl
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_41
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_85
.label_72:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	jmp	.label_58
.label_82:
	movzx	eax, r14b
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	cmp	eax, 0xffffff7d
	je	.label_101
	cmp	eax, 0xffffff7e
	jne	.label_76
	xor	edi, edi
	call	usage
.label_101:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_18
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_83
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_76:
	mov	edi, 1
	call	usage
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	jmp	.label_49
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_105
	jmp	.label_106
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_34
.label_106:
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
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	jmp	.label_92
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
.label_92:
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
.label_96:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	jmp	.label_108
.label_109:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [r14], eax
.label_81:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
.label_108:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	.section	.text
	.align	16
	#Procedure 0x402040
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_117
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_113
	cmp	dword ptr [rbp], 0x20
	jne	.label_113
.label_117:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_115
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_114
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_115:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_114:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_116
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
	#Procedure 0x402120

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_118
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_120
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_120
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_123
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_123:
	mov	rbx, r14
.label_120:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_118:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_119
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0
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
	#Procedure 0x402210
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
	#Procedure 0x402220
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
	#Procedure 0x402230
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
	#Procedure 0x402270
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
	#Procedure 0x402290
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_124
	test	rdx, rdx
	je	.label_124
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_124:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0
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
	#Procedure 0x402340

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_244:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_241
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_239]
.label_468:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_139
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_469:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_150
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_150
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_169:
	cmp	r14, r11
	jae	.label_140
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_140:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_169
.label_150:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_128
.label_461:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_128
.label_464:
	mov	al, 1
.label_462:
	mov	r12b, 1
.label_465:
	test	r12b, 1
	mov	cl, 1
	je	.label_185
	mov	ecx, eax
.label_185:
	mov	al, cl
.label_463:
	test	r12b, 1
	jne	.label_189
	test	r11, r11
	je	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_192:
	mov	r14d, 1
	jmp	.label_193
.label_189:
	xor	r14d, r14d
.label_193:
	mov	ecx, OFFSET FLAT:label_139
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_128
.label_466:
	test	r12b, 1
	jne	.label_207
	test	r11, r11
	je	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_209:
	mov	r14d, 1
	jmp	.label_210
.label_467:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_212
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_128
.label_207:
	xor	r14d, r14d
.label_210:
	mov	eax, OFFSET FLAT:label_212
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_225
	nop	dword ptr [rax]
.label_170:
	inc	rsi
.label_225:
	cmp	rbp, -1
	je	.label_143
	cmp	rsi, rbp
	jne	.label_144
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_152
.label_144:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_148
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_161
	cmp	rbp, -1
	jne	.label_161
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_161:
	cmp	rbx, rbp
	jbe	.label_174
.label_148:
	xor	r8d, r8d
.label_201:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_146
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_177]
.label_442:
	test	rsi, rsi
	jne	.label_171
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_198
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_201
	jmp	.label_138
.label_198:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_201
.label_446:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_219
	test	rsi, rsi
	jne	.label_180
	cmp	rbp, 1
	je	.label_183
	xor	r13d, r13d
	jmp	.label_153
.label_435:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_224
	cmp	byte ptr [rsp + 6], 0
	jne	.label_188
	cmp	r12d, 2
	jne	.label_228
	mov	eax, r9d
	and	al, 1
	jne	.label_228
	cmp	r14, r11
	jae	.label_231
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_196
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_196:
	add	r14, 3
	mov	r9b, 1
.label_228:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_245
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_245:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_127
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_127
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_127
	cmp	r14, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_204:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_178
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_178:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_153
.label_436:
	mov	bl, 0x62
	jmp	.label_157
.label_437:
	mov	cl, 0x74
	jmp	.label_165
.label_438:
	mov	bl, 0x76
	jmp	.label_157
.label_439:
	mov	bl, 0x66
	jmp	.label_157
.label_440:
	mov	cl, 0x72
	jmp	.label_165
.label_443:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_168
	cmp	byte ptr [rsp + 6], 0
	jne	.label_129
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_173
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_173:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_181
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_187
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_187:
	add	r14, 3
	xor	r9d, r9d
.label_168:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_153
.label_444:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_195
	cmp	r12d, 2
	jne	.label_171
	cmp	byte ptr [rsp + 6], 0
	je	.label_171
	jmp	.label_129
.label_445:
	cmp	r12d, 2
	jne	.label_208
	cmp	byte ptr [rsp + 6], 0
	jne	.label_129
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_159
.label_146:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_216
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
.label_166:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_227
	test	r8b, r8b
	je	.label_227
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_153
.label_219:
	test	rsi, rsi
	jne	.label_243
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_243
.label_183:
	mov	dl, 1
.label_441:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_129
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_153:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_137
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_242
	jmp	.label_142
	nop	word ptr cs:[rax + rax]
.label_137:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_142
.label_242:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_229
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_159
	jmp	.label_164
	nop	dword ptr [rax]
.label_142:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_164
	jmp	.label_159
.label_229:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_164
.label_224:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_170
	xor	r15d, r15d
	jmp	.label_171
.label_208:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_165
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_159
.label_165:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_129
.label_157:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_153
	nop	word ptr cs:[rax + rax]
.label_164:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_188
	cmp	r12d, 2
	jne	.label_191
	mov	eax, r9d
	and	al, 1
	jne	.label_191
	cmp	r14, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_151:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_199
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_199:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	add	r14, 3
	mov	r9b, 1
.label_191:
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_222:
	inc	r14
	jmp	.label_213
.label_216:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_217
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_217:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_154:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_233
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_236
	cmp	rbp, -2
	je	.label_206
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_155
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_125:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_240
	bt	rsi, rdx
	jb	.label_141
.label_240:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_125
.label_155:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_135
	xor	r13d, r13d
.label_135:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_154
	jmp	.label_166
.label_127:
	xor	r13d, r13d
	jmp	.label_153
.label_243:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_153
.label_195:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_171
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_171
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_171
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_176
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_182
	cmp	byte ptr [rsp + 6], 0
	jne	.label_218
	cmp	r14, r11
	jae	.label_158
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_158:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_126
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_126:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_197
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_197:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_131
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_131:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_153
.label_171:
	xor	eax, eax
.label_180:
	xor	r13d, r13d
	jmp	.label_153
.label_227:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_214
	nop	word ptr cs:[rax + rax]
.label_172:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_214:
	test	r8b, r8b
	je	.label_184
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_221
	cmp	r14, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_246:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_221
	nop	dword ptr [rax]
.label_184:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_138
	cmp	r12d, 2
	jne	.label_232
	mov	eax, r9d
	and	al, 1
	jne	.label_232
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_237
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_237:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_220
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_220:
	add	r14, 3
	mov	r9b, 1
.label_232:
	cmp	r14, r11
	jae	.label_132
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_132:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_134
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_134:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_215
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_215:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_221:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_159
	test	r9b, 1
	je	.label_160
	mov	ebx, eax
	and	bl, 1
	jne	.label_160
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_162
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_162:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_163
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_163:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_160:
	cmp	r14, r11
	jae	.label_172
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_159:
	test	r9b, 1
	je	.label_167
	and	al, 1
	jne	.label_167
	cmp	r14, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	add	r14, 2
	xor	r9d, r9d
.label_167:
	mov	ebx, r15d
.label_213:
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_234:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_170
.label_236:
	xor	r13d, r13d
.label_233:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_166
.label_206:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_205
	mov	rsi, qword ptr [rsp + 0x58]
.label_211:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_175
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_211
	xor	r13d, r13d
	jmp	.label_166
.label_205:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_166
.label_175:
	xor	r13d, r13d
	jmp	.label_166
.label_176:
	xor	r13d, r13d
	jmp	.label_153
.label_182:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_153
	nop	dword ptr [rax + rax]
.label_145:
	mov	rcx, rsi
.label_152:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_223
	or	al, dl
	je	.label_226
.label_223:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_230
	or	al, dl
	jne	.label_230
	test	r10b, 1
	jne	.label_238
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_230
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_244
.label_230:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_130
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_136
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_136
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_149:
	cmp	r14, r11
	jae	.label_147
	mov	byte ptr [rcx + r14], al
.label_147:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_149
	jmp	.label_136
.label_188:
	mov	qword ptr [rsp + 0x20], rbp
.label_138:
	mov	rdx, rdi
	jmp	.label_156
.label_129:
	mov	qword ptr [rsp + 0x20], rbp
.label_141:
	mov	rdx, rdi
	mov	eax, 2
.label_202:
	mov	qword ptr [rsp + 0x38], rax
.label_156:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_200:
	mov	r14, rax
.label_203:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_226:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_156
.label_238:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_200
.label_130:
	mov	rcx, qword ptr [rsp + 8]
.label_136:
	cmp	r14, r11
	jae	.label_203
	mov	byte ptr [rcx + r14], 0
	jmp	.label_203
.label_218:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_202
.label_241:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150
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
	#Procedure 0x403220
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
	je	.label_247
	mov	qword ptr [rax], rbx
.label_247:
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
	#Procedure 0x403310
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_248
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_251:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_251
.label_248:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_252
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_250], OFFSET FLAT:slot0
.label_252:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_249
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_249:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033c0

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
	js	.label_253
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_256
	cmp	r12d, 0x7fffffff
	je	.label_258
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
	jne	.label_254
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_254:
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
.label_256:
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
	jbe	.label_259
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_255
.label_259:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_257
	mov	rdi, r14
	call	free
.label_257:
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
.label_255:
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
.label_253:
	call	abort
.label_258:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403580
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590
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
	#Procedure 0x4035b0
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
	#Procedure 0x4035d0
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
	je	.label_260
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
.label_260:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403640
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
	je	.label_261
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
.label_261:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

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
	je	.label_262
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
.label_262:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403720
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
	je	.label_263
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
.label_263:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403790
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
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
	#Procedure 0x403800
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
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
	#Procedure 0x403870

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
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
	#Procedure 0x4038d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
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
	#Procedure 0x403930
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
	je	.label_267
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
.label_267:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_268
	test	rdx, rdx
	je	.label_268
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_268:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a40
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_269
	test	rdx, rdx
	je	.label_269
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_269:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_270
	test	rsi, rsi
	je	.label_270
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_270:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b20
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_264]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_265]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_266]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_271
	test	rsi, rsi
	je	.label_271
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
.label_271:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b90
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0
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
	#Procedure 0x403bc0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

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
	#Procedure 0x403c00

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
	jne	.label_273
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_278
	cmp	ecx, 0x55
	jne	.label_272
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_272
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_272
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_272
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_272
	cmp	byte ptr [rax + 5], 0
	jne	.label_272
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_275
	mov	eax, OFFSET FLAT:label_276
	jmp	.label_277
.label_278:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_272
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_272
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_272
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_272
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_272
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_272
	cmp	byte ptr [rax + 7], 0
	je	.label_274
.label_272:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_212
	mov	eax, OFFSET FLAT:label_139
.label_277:
	cmove	rax, rcx
.label_273:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_274:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_279
	mov	eax, OFFSET FLAT:label_280
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0

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
	je	.label_291
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_283
.label_291:
	mov	edx, OFFSET FLAT:label_285
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_283:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
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
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_292
	jmp	qword ptr [(r12 * 8) + label_293]
.label_554:
	add	rsp, 8
	jmp	.label_284
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
	jmp	.label_284
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
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
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
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
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
	jmp	.label_284
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
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
	jmp	.label_284
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	jmp	.label_284
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
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
	jmp	.label_284
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
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
	jmp	.label_284
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
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
.label_284:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_300:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_300
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_311
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_313
.label_311:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_313:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_302
	cmp	r10d, 0x29
	jae	.label_310
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_312
.label_310:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_312:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_302
	cmp	r10d, 0x29
	jae	.label_308
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_309
.label_308:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_309:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_302
	cmp	r10d, 0x29
	jae	.label_306
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_307
.label_306:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_307:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_302
	cmp	r10d, 0x29
	jae	.label_304
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_305
.label_304:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_305:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_302
	cmp	r10d, 0x29
	jae	.label_301
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_303
.label_301:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_303:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_302
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_302
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_302
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_302
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_302:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404250

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_314
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_314:
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
	#Procedure 0x4042e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_316
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404360
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_319
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_319
.label_320:
	pop	rbx
	ret	
.label_319:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_321
	test	rax, rax
	je	.label_322
.label_321:
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_323
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_324
	test	rbx, rbx
	jne	.label_324
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_324:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	je	.label_323
.label_325:
	pop	rbx
	ret	
.label_323:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404410

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_326
	test	rbx, rbx
	jne	.label_326
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_326:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_328
	test	rax, rax
	je	.label_327
.label_328:
	pop	rbx
	ret	
.label_327:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404440
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_329
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_332
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_330
.label_329:
	test	rcx, rcx
	jne	.label_335
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_335:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_331
.label_330:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_334
	test	rbx, rbx
	jne	.label_334
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_334:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_333
	test	rax, rax
	je	.label_332
.label_333:
	pop	rbx
	ret	
.label_332:
	call	xalloc_die
.label_331:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_336
	test	rax, rax
	je	.label_337
.label_336:
	pop	rbx
	ret	
.label_337:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_338
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_341
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_342
	call	free
	xor	eax, eax
	jmp	.label_339
.label_338:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_340
	mov	qword ptr [rsi], rbx
.label_342:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_339
	test	rax, rax
	je	.label_340
.label_339:
	pop	rbx
	ret	
.label_340:
	call	xalloc_die
.label_341:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570
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
	je	.label_344
	test	r14, r14
	je	.label_343
.label_344:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_343:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_345
	call	rpl_calloc
	test	rax, rax
	je	.label_345
	pop	rcx
	ret	
.label_345:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0

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
	je	.label_346
	test	r15, r15
	je	.label_347
.label_346:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_347:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404620
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
	je	.label_349
	test	r15, r15
	je	.label_348
.label_349:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_348:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046a0

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
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_353
	cmp	eax, 1
	je	.label_355
	cmp	eax, 3
	jne	.label_358
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_356
.label_353:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_351
	cmp	rbx, r12
	jle	.label_354
.label_351:
	cmp	rbx, 0x40000000
	jl	.label_357
.label_355:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_356
.label_358:
	call	__errno_location
.label_356:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_354:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_352
	mov	dword ptr [rax], 0x4b
	jmp	.label_356
.label_352:
	mov	dword ptr [rax], 0x22
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780

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
	.align	16
	#Procedure 0x4047b0

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
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_408
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_359
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_365
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_362
	mov	r13d, 1
.label_365:
	test	r14, r14
	je	.label_371
	mov	r15d, r13d
	jmp	.label_375
.label_359:
	mov	r13d, 4
	test	r14, r14
	je	.label_362
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_362
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_362
.label_375:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_383
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_368
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_392
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_392
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_392
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_404
	cmp	eax, 0x44
	je	.label_404
	cmp	eax, 0x69
	jne	.label_392
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_392
.label_371:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_362
.label_404:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_392:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_368
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_372]
.label_487:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_378
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_378:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_387
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_387:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_396
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_396:
	or	ecx, r14d
	jmp	.label_360
.label_368:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_363
.label_488:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_360
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_360
.label_489:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_369
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_369:
	cmp	rsi, rdi
	jl	.label_381
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_381:
	or	ecx, r11d
	jmp	.label_360
.label_491:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_388
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_388:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_401
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_401:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_410
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_410:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_367
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_367:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_360
.label_485:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_366
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_370
.label_486:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_412
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_412:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_386
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_386:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_405
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_405:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_361
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_361:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_409
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_409:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_380
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_380:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_360
.label_490:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_390
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_390:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_403
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_403:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_411
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_411:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_373
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_373:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_379
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_379:
	or	ecx, r14d
	jmp	.label_360
.label_492:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_385
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_385:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_400
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_400:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_407
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_407:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_364
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_364:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_374
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_374:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_382
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_382:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_389
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_389:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_391
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_395
.label_493:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_406
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_406:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_394
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_394:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_377
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_377:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_384
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_384:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_393
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_393:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_402
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_402:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_391
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_395:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_391:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_360
.label_494:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_366
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_370
.label_495:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_376
.label_366:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_360
.label_376:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_370:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_360:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_383:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_363:
	mov	r13d, r15d
.label_362:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_408:
	mov	edi, OFFSET FLAT:label_397
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_399
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_413
	test	rsi, rsi
	mov	ecx, 1
	je	.label_414
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_414
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_413:
	mov	ecx, 1
.label_414:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120

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
	je	.label_415
	cmp	r15, -2
	jb	.label_415
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_415
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_415:
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
	#Procedure 0x405180

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
	jne	.label_417
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_416
	test	cl, cl
	jne	.label_416
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_416
.label_417:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_416
	call	__errno_location
	mov	dword ptr [rax], 0
.label_416:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_419
	cmp	byte ptr [rax], 0x43
	jne	.label_421
	cmp	byte ptr [rax + 1], 0
	je	.label_418
.label_421:
	mov	esi, OFFSET FLAT:label_420
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_419
.label_418:
	xor	ebx, ebx
.label_419:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_37
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_422
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_423
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_425
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_423
.label_425:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_423
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_424
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_424:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_423:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_426
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_426
	test	byte ptr [rbx + 1], 1
	je	.label_426
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_426:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310

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
	jne	.label_427
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_427
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_428
.label_427:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_428:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_429
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_429:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405380

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
