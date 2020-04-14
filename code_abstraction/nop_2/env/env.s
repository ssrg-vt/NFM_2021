	.section	.text
	.align	32
	#Procedure 0x4019a0

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
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
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
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:.str.52
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	.align	32
	#Procedure 0x401ca0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1b8
	mov	r15, rsi
	mov	qword ptr [rsp + 0x78], rdi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.17_0
	mov	esi, OFFSET FLAT:.str.18_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.17_0
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [rip + signals],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_25
.label_82:
	mov	r14, qword ptr [rip + optarg]
	nop	word ptr [rax + rax]
.label_25:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	r12, qword ptr [rsp + 0x78]
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x52
	jle	.label_58
	lea	eax, [rbx - 0x75]
	cmp	eax, 0xe
	ja	.label_61
	jmp	qword ptr [(rax * 8) + label_65]
.label_515:
	mov	rbx, qword ptr [rip + optarg]
	mov	rsi, qword ptr [rip + usvars_used]
	cmp	rsi, qword ptr [rip + usvars_alloc]
	jne	.label_67
	mov	rdi, qword ptr [rip + usvars]
	test	rdi, rdi
	je	.label_70
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rsi, rax
	jae	.label_79
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_76
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	ebx, 0x1f
	jle	.label_110
	cmp	ebx, 0x30
	je	.label_27
	cmp	ebx, 0x43
	je	.label_82
	jmp	.label_84
.label_27:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_25
.label_61:
	cmp	ebx, 0x53
	je	.label_88
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	cmp	ebx, 0x69
	je	.label_25
	jmp	.label_86
.label_516:
	mov	byte ptr [rip + dev_debug],  1
	jmp	.label_25
.label_517:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_block_signal_params
	jmp	.label_25
.label_518:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_signal_action_params
	jmp	.label_25
.label_519:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_block_signal_params
	jmp	.label_25
.label_520:
	mov	byte ptr [rip + report_signal_handling],  1
	jmp	.label_25
.label_88:
	mov	r13, qword ptr [rip + optarg]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	dec	r13
	nop	dword ptr [rax]
.label_125:
	movsx	rbp, byte ptr [r13 + 1]
	inc	r13
	movzx	ebx, word ptr [rcx + rbp*2]
	test	bh, 0x20
	jne	.label_125
	test	bpl, bpl
	je	.label_25
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x58], r15
	test	r13, r13
	je	.label_147
	mov	eax, dword ptr [rip + optind]
	mov	dword ptr [rsp + 0x40], eax
	mov	rdi, r13
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	r14d, 1
	mov	r12, r13
	xor	esi, esi
	xor	edi, edi
	xor	r8d, r8d
	mov	r9, qword ptr [rsp + 0x50]
	jmp	.label_109
	nop	word ptr cs:[rax + rax]
.label_26:
	movzx	eax, r15b
	inc	r12
	mov	rcx, qword ptr [r9]
	movzx	ebx, word ptr [rcx + rbp*2]
.label_109:
	mov	edx, r14d
	and	ebx, 0xe000
	shr	ebx, 0xd
	mov	cl, dil
	or	cl, sil
	and	cl, 1
	sete	r15b
	and	r15b, bl
	cmovne	eax, r8d
	mov	r14d, eax
	add	r14d, edx
	movsx	eax, bpl
	cmp	eax, 0x26
	jg	.label_120
	cmp	eax, 0x22
	je	.label_121
	cmp	eax, 0x24
	jne	.label_123
	test	sil, 1
	jne	.label_123
	mov	dword ptr [rsp + 0x50], edi
	mov	ebp, esi
	mov	rbx, r9
	mov	rdi, r12
	call	extract_varname
	test	rax, rax
	je	.label_126
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_131
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x48], rax
.label_131:
	xor	r8d, r8d
	mov	r9, rbx
	mov	esi, ebp
	mov	edi, dword ptr [rsp + 0x50]
	jmp	.label_123
	nop	
.label_120:
	cmp	eax, 0x5c
	je	.label_135
	cmp	eax, 0x27
	jne	.label_123
	and	sil, dil
	test	sil, 1
	jne	.label_137
	xor	cl, 1
	mov	sil, cl
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_121:
	and	dil, sil
	test	dil, 1
	jne	.label_141
	xor	cl, 1
	mov	dil, cl
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_135:
	movsx	ebx, byte ptr [r12 + 1]
	test	dil, 1
	je	.label_144
	movzx	eax, bl
	cmp	eax, 0x63
	je	.label_146
.label_144:
	mov	al, bl
	cmp	ebx, 0x5b
	jle	.label_10
	add	al, 0xa4
	movzx	eax, al
	cmp	eax, 0x1a
	ja	.label_11
	mov	ecx, 0x5440489
	bt	rcx, rax
	jb	.label_15
	jmp	.label_11
.label_10:
	add	al, 0xde
	movzx	eax, al
	cmp	eax, 3
	jb	.label_15
	movzx	eax, bl
	cmp	eax, 0x27
	jne	.label_20
.label_15:
	inc	r12
	movzx	eax, bl
	cmp	eax, 0x5f
	sete	al
	movzx	eax, al
	add	r14d, eax
	nop	word ptr cs:[rax + rax]
.label_123:
	movsx	rbp, byte ptr [r12 + 1]
	test	rbp, rbp
	jne	.label_26
	or	sil, dil
	test	sil, 1
	jne	.label_28
	mov	rdi, qword ptr [rsp + 0x48]
	add	rdi, 7
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x78]
	lea	eax, [rax + 2]
	sub	eax, dword ptr [rsp + 0x40]
	add	eax, r14d
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	rsi, rbx
	mov	r9, rax
	mov	word ptr [rsi + 4], 0x59
	mov	dword ptr [rsi], 0x4d4d5544
	lea	r14, [r9 + 8]
	mov	qword ptr [r9], rsi
	add	rsi, 6
	mov	cl, byte ptr [r13]
	test	cl, cl
	je	.label_36
	mov	bpl, 1
	xor	r10d, r10d
	mov	r15, r13
	xor	r11d, r11d
	mov	rdi, r14
.label_9:
	mov	r8b, r11b
	and	r8b, 1
.label_142:
	mov	r12b, r10b
	or	r12b, r11b
	and	r12b, 1
	mov	al, r10b
	and	al, 1
	mov	byte ptr [rsp + 0x50], al
	mov	rax, r15
.label_136:
	mov	r15, rax
.label_77:
	movsx	eax, cl
	lea	edx, [rax - 0x20]
	cmp	edx, 7
	jbe	.label_43
	cmp	eax, 9
	je	.label_44
	cmp	eax, 0x5c
	jne	.label_45
	mov	bl, byte ptr [r15 + 1]
	test	r8b, r8b
	je	.label_47
	movzx	eax, bl
	cmp	eax, 0x5c
	je	.label_47
	cmp	eax, 0x27
	jne	.label_50
.label_47:
	lea	rax, [r15 + 1]
	movzx	ecx, bl
	cmp	ecx, 0x27
	je	.label_52
	cmp	ecx, 0x5c
	je	.label_54
	test	r8b, r8b
	je	.label_55
	cmp	ecx, 0x5f
	je	.label_56
	jmp	.label_57
	nop	dword ptr [rax + rax]
.label_43:
	mov	rax, r15
	jmp	qword ptr [(rdx * 8) + label_59]
.label_44:
	test	r12b, r12b
	jne	.label_62
	xor	eax, eax
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	cl, byte ptr [r15 + rax + 1]
	inc	rax
.label_64:
	movsx	edx, cl
	cmp	edx, 0x20
	je	.label_69
	cmp	edx, 9
	je	.label_69
	add	r15, rax
	jmp	.label_71
.label_55:
	cmp	ecx, 0x5f
	jne	.label_73
.label_56:
	mov	cl, 0x20
	cmp	byte ptr [rsp + 0x50], 0
	jne	.label_33
	mov	cl, byte ptr [r15 + 2]
	add	r15, 2
.label_71:
	mov	bpl, 1
	test	cl, cl
	jne	.label_77
	jmp	.label_12
.label_62:
	mov	rax, r15
	jmp	.label_33
.label_443:
	test	r8b, r8b
	je	.label_129
	mov	rax, r15
	jmp	.label_33
.label_444:
	test	bpl, 1
	mov	rax, r15
	je	.label_33
	jmp	.label_12
.label_445:
	test	r8b, r8b
	jne	.label_87
	mov	dword ptr [rsp + 0x34], r11d
	mov	dword ptr [rsp + 0x38], r10d
	mov	byte ptr [rsp + 0x3f], r8b
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x40], r9
	mov	rdi, r15
	call	extract_varname
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_91
	test	bpl, 1
	je	.label_93
	mov	byte ptr [rbx], 0
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	qword ptr [rdx], rbx
	add	rdx, 8
	mov	qword ptr [rsp + 0x48], rdx
	xor	ebp, ebp
.label_93:
	movzx	edx, byte ptr [rip + dev_debug]
	and	edx, 1
	cmp	edx, 1
	jne	.label_95
	mov	rdx, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdi, rax
	mov	qword ptr [rsp + 0x20], rax
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x20]
.label_95:
	mov	rdi, rbx
	mov	rsi, rax
	call	stpcpy
	mov	rbx, rax
	jmp	.label_49
.label_446:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_107
	mov	rax, r15
	jmp	.label_33
.label_45:
	mov	rax, r15
	jmp	.label_33
.label_50:
	mov	rax, r15
	jmp	.label_33
.label_52:
	mov	cl, bl
	jmp	.label_33
.label_54:
	mov	cl, bl
	jmp	.label_33
.label_73:
	mov	dl, bl
	add	dl, 0xde
	movzx	edx, dl
	cmp	edx, 3
	jae	.label_57
	mov	cl, bl
	jmp	.label_33
.label_57:
	cmp	ecx, 0x63
	je	.label_12
	movsx	edx, bl
	lea	ecx, [rdx - 0x6e]
	cmp	ecx, 8
	ja	.label_113
	jmp	qword ptr [(rcx * 8) + label_117]
.label_508:
	mov	cl, 0xa
	jmp	.label_33
.label_87:
	mov	rax, r15
	jmp	.label_33
.label_91:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_49
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.75
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x28]
	call	__fprintf_chk
.label_49:
	mov	esi, 0x7d
	mov	rdi, r15
	call	strchr
	mov	r9, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x3f]
	mov	r10d, dword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0x34]
	jmp	.label_46
.label_113:
	mov	cl, 0xc
	cmp	edx, 0x66
	je	.label_33
	jmp	.label_130
.label_509:
	mov	cl, 0xd
	jmp	.label_33
.label_510:
	mov	cl, 9
	jmp	.label_33
.label_511:
	mov	cl, 0xb
	nop	dword ptr [rax]
.label_33:
	test	bpl, 1
	je	.label_133
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [rdi], rsi
	add	rdi, 8
	xor	ebp, ebp
.label_133:
	mov	byte ptr [rsi], cl
	inc	rsi
.label_46:
	mov	cl, byte ptr [rax + 1]
	inc	rax
	test	cl, cl
	jne	.label_136
	jmp	.label_12
.label_129:
	test	bpl, 1
	je	.label_140
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [rdi], rsi
	add	rdi, 8
	xor	ebp, ebp
.label_140:
	mov	al, byte ptr [rsp + 0x50]
	xor	al, 1
	mov	cl, byte ptr [r15 + 1]
	inc	r15
	test	cl, cl
	mov	r10b, al
	jne	.label_142
	jmp	.label_12
.label_107:
	test	bpl, 1
	je	.label_143
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [rdi], rsi
	add	rdi, 8
	xor	ebp, ebp
.label_143:
	xor	r8b, 1
	mov	cl, byte ptr [r15 + 1]
	inc	r15
	test	cl, cl
	mov	r11b, r8b
	jne	.label_9
	jmp	.label_12
.label_67:
	mov	rax, qword ptr [rip + usvars]
	jmp	.label_14
.label_70:
	test	rsi, rsi
	mov	eax, 0x10
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_17
.label_76:
	mov	qword ptr [rip + usvars_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + usvars],  rax
	mov	rsi, qword ptr [rip + usvars_used]
.label_14:
	lea	rcx, [rsi + 1]
	mov	qword ptr [rip + usvars_used],  rcx
	mov	qword ptr [rax + rsi*8], rbx
	jmp	.label_25
.label_36:
	mov	rdi, r14
.label_12:
	mov	byte ptr [rsi], 0
	mov	qword ptr [rdi], 0
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rbp]
	mov	qword ptr [r9], rax
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	mov	rax, r9
	jne	.label_30
	cmp	qword ptr [r14], 0
	mov	rax, r9
	je	.label_30
	mov	r12, r9
	mov	r15, qword ptr [rip + stderr]
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.67
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_39
	mov	rbx, qword ptr [rip + stderr]
	mov	r14, r12
	add	r14, 0x10
	mov	rdi, qword ptr [r12 + 8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.68
	jmp	.label_42
	nop	word ptr cs:[rax + rax]
.label_30:
	lea	r14, [rax + 8]
	cmp	qword ptr [rax + 8], 0
	mov	rax, r14
	jne	.label_30
	jmp	.label_48
.label_42:
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	bl, byte ptr [rip + dev_debug]
.label_39:
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_51
	test	bl, 1
	je	.label_53
	mov	rbx, qword ptr [rip + stderr]
	add	r14, 8
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.69
	jmp	.label_42
.label_51:
	mov	r9, r12
.label_48:
	movsxd	rsi, dword ptr [rip + optind]
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	esi, edx
	jge	.label_60
	movsxd	rax, edx
	mov	ecx, edx
	sub	ecx, esi
	lea	r8, [rax - 1]
	sub	r8, rsi
	test	cl, 7
	je	.label_38
	sub	dl, sil
	movzx	edi, dl
	and	edi, 7
	neg	rdi
	mov	rdx, rsi
	mov	rcx, r14
	nop	dword ptr [rax]
.label_74:
	mov	rbx, qword ptr [rbp + rdx*8]
	mov	qword ptr [rcx], rbx
	add	rcx, 8
	inc	rdx
	inc	rdi
	jne	.label_74
	jmp	.label_75
.label_38:
	mov	rdx, rsi
	mov	rcx, r14
.label_75:
	mov	rdi, rax
	sub	rdi, rsi
	cmp	r8, 7
	jb	.label_78
	sub	rax, rdx
	lea	rdx, [rbp + rdx*8 + 0x38]
.label_80:
	mov	rsi, qword ptr [rdx - 0x38]
	mov	qword ptr [rcx], rsi
	mov	rsi, qword ptr [rdx - 0x30]
	mov	qword ptr [rcx + 8], rsi
	mov	rsi, qword ptr [rdx - 0x28]
	mov	qword ptr [rcx + 0x10], rsi
	mov	rsi, qword ptr [rdx - 0x20]
	mov	qword ptr [rcx + 0x18], rsi
	mov	rsi, qword ptr [rdx - 0x18]
	mov	qword ptr [rcx + 0x20], rsi
	mov	rsi, qword ptr [rdx - 0x10]
	mov	qword ptr [rcx + 0x28], rsi
	mov	rsi, qword ptr [rdx - 8]
	mov	qword ptr [rcx + 0x30], rsi
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx + 0x38], rsi
	add	rdx, 0x40
	add	rcx, 0x40
	add	rax, -8
	jne	.label_80
.label_78:
	lea	r14, [r14 + rdi*8]
.label_60:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	cmp	qword ptr [r9], 0
	je	.label_90
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_94:
	lea	rcx, [rax + 1]
	cmp	qword ptr [r9 + rax*8 + 8], 0
	mov	rax, rcx
	jne	.label_94
.label_90:
	mov	qword ptr [rsp + 0x78], rcx
	mov	dword ptr [rip + optind],  0
	mov	r15, r9
	mov	r14, qword ptr [rsp + 0x60]
	jmp	.label_25
	nop	dword ptr [rax + rax]
.label_53:
	jmp	.label_53
.label_110:
	cmp	ebx, -2
	jle	.label_98
	cmp	ebx, -1
	jne	.label_99
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_100
	mov	rcx, qword ptr [r15 + rax*8]
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	jne	.label_100
	cmp	byte ptr [rcx + 1], 0
	je	.label_104
.label_100:
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	jne	.label_105
	mov	r13, r14
	xor	ebx, ebx
	cmp	qword ptr [rip + usvars_used],  0
	je	.label_106
	nop	
.label_116:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_108
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rip + usvars]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.84
	xor	eax, eax
	call	__fprintf_chk
.label_108:
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	unsetenv
	test	eax, eax
	jne	.label_114
	inc	rbx
	cmp	rbx, qword ptr [rip + usvars_used]
	jb	.label_116
	jmp	.label_106
.label_104:
	inc	eax
	mov	dword ptr [rip + optind],  eax
.label_105:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_118
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.26
	xor	eax, eax
	call	__fprintf_chk
.label_118:
	mov	r13, r14
	mov	qword ptr [rip + __environ], OFFSET FLAT:main.dummy_environ
.label_106:
	mov	ebx, dword ptr [rip + optind]
	jmp	.label_124
	nop	dword ptr [rax]
.label_128:
	mov	ebx, dword ptr [rip + optind]
	inc	ebx
	mov	dword ptr [rip + optind],  ebx
.label_124:
	cmp	ebx, r12d
	jge	.label_127
	movsxd	rax, ebx
	mov	rbp, qword ptr [r15 + rax*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	r14, rax
	test	r14, r14
	je	.label_127
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_134
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.27
	xor	eax, eax
	mov	rcx, rbp
	call	__fprintf_chk
	movsxd	rax, dword ptr [rip + optind]
	mov	rbp, qword ptr [r15 + rax*8]
.label_134:
	mov	rdi, rbp
	call	putenv
	test	eax, eax
	je	.label_128
	mov	byte ptr [r14], 0
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_127:
	mov	rcx, qword ptr [rsp + 0x70]
	test	cl, cl
	je	.label_13
	cmp	ebx, r12d
	jl	.label_16
.label_13:
	test	r13, r13
	sete	al
	cmp	ebx, r12d
	jl	.label_18
	test	al, al
	je	.label_21
.label_18:
	cmp	ebx, r12d
	jge	.label_22
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x58], r15
	mov	ebx, 1
	lea	r13, [rsp + 0x120]
	lea	r15, [rsp + 0x80]
	nop	dword ptr [rax + rax]
.label_102:
	mov	rax, qword ptr [rip + signals]
	mov	r14d, dword ptr [rax + rbx*4]
	test	r14d, r14d
	je	.label_29
	mov	r12b, 1
	cmp	r14d, 2
	je	.label_31
	cmp	r14d, 4
	je	.label_31
	xor	r12d, r12d
.label_31:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r13
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	test	r12b, r12b
	jne	.label_34
	test	al, al
	je	.label_37
.label_34:
	dec	r14d
	test	ebp, ebp
	jne	.label_23
	cmp	r14d, 1
	seta	al
	movzx	eax, al
	mov	qword ptr [rsp + 0x120], rax
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r13
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r12b, al
	je	.label_40
.label_23:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	cmp	r14d, 2
	mov	rdi, qword ptr [rip + stderr]
	mov	r9d, OFFSET FLAT:.str.90
	mov	eax, OFFSET FLAT:.str.89
	cmovb	r9, rax
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:.str.91
	cmovne	rax, rcx
	mov	qword ptr [rsp], rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.88
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	call	__fprintf_chk
	nop	dword ptr [rax + rax]
.label_29:
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_102
	movzx	eax, byte ptr [rip + sig_mask_changed]
	and	eax, 1
	cmp	eax, 1
	mov	r15, qword ptr [rsp + 0x58]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x60]
	jne	.label_63
	mov	r12, r15
	lea	rbx, [rsp + 0x120]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_35
	mov	ebx, 1
	lea	r14, [rsp + 0x120]
	lea	r15, [rsp + 0x80]
	nop	dword ptr [rax + rax]
.label_97:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_81
	mov	rdi, r14
	mov	esi, ebx
	call	sigaddset
	mov	ebp, OFFSET FLAT:.str.93
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_81:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_89
	mov	rdi, r14
	mov	esi, ebx
	call	sigdelset
	mov	ebp, OFFSET FLAT:.str.94
.label_85:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_89
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_89
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.95
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, rbp
	call	__fprintf_chk
.label_89:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_97
	lea	rsi, [rsp + 0x120]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	test	eax, eax
	mov	r15, r12
	mov	rbp, qword ptr [rsp + 0x60]
	jne	.label_101
.label_63:
	movzx	eax, byte ptr [rip + report_signal_handling]
	and	eax, 1
	cmp	eax, 1
	jne	.label_103
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_35
	mov	ebx, 1
	lea	rbp, [rsp + 0x120]
	lea	r13, [rsp + 0x80]
	nop	word ptr cs:[rax + rax]
.label_68:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, rbp
	call	sigaction
	test	eax, eax
	jne	.label_112
	cmp	qword ptr [rsp + 0x120], 1
	mov	r12d, OFFSET FLAT:.str.90
	je	.label_115
	mov	r12d, OFFSET FLAT:.str_0
.label_115:
	lea	rdi, [rsp + 0xa0]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r14d, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.93
	cmovne	r14, rax
	cmp	byte ptr [r12], 0
	mov	al, byte ptr [r14]
	je	.label_119
	test	al, al
	mov	r15d, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.65
	cmovne	r15, rax
	jmp	.label_122
.label_119:
	test	al, al
	mov	r15d, OFFSET FLAT:.str_0
	je	.label_112
.label_122:
	mov	edi, ebx
	mov	rsi, r13
	call	sig2str
	mov	rdi, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.97
	xor	eax, eax
	mov	rcx, r13
	mov	r8d, ebx
	mov	r9, r14
	call	__fprintf_chk
.label_112:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_68
	mov	r15, qword ptr [rsp + 0x58]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x60]
.label_103:
	test	rbp, rbp
	je	.label_138
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_139
	mov	rbx, qword ptr [rip + stderr]
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.32
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_139:
	mov	rdi, rbp
	call	chdir
	test	eax, eax
	jne	.label_145
.label_138:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_19
	mov	rdi, qword ptr [rip + stderr]
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [r15 + rax*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__fprintf_chk
	mov	ebp, dword ptr [rip + optind]
	cmp	ebp, r13d
	jge	.label_19
	movsxd	rax, ebp
	lea	rbx, [r15 + rax*8]
	nop	word ptr [rax + rax]
.label_32:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_24
	mov	r14, qword ptr [rip + stderr]
	mov	rdi, qword ptr [rbx]
	mov	r12, r15
	mov	r15d, ebp
	sub	r15d, dword ptr [rip + optind]
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.35
	xor	eax, eax
	mov	rdi, r14
	mov	ecx, r15d
	mov	r15, r12
	call	__fprintf_chk
.label_24:
	inc	ebp
	add	rbx, 8
	cmp	r13d, ebp
	jne	.label_32
.label_19:
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [r15 + rax*8]
	mov	rdi, qword ptr [r15 + rax*8]
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	cmp	ebp, 2
	jne	.label_41
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	je	.label_41
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_41
.label_22:
	mov	rbx, qword ptr [rip + __environ]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	test	rdx, rdx
	je	.label_41
	xor	r14d, r14d
	test	cl, cl
	mov	ebp, 0xa
	cmovne	ebp, r14d
	add	rbx, 8
	nop	dword ptr [rax + rax]
.label_66:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.31
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	mov	rdx, qword ptr [rbx]
	add	rbx, 8
	test	rdx, rdx
	jne	.label_66
.label_41:
	mov	eax, r14d
	add	rsp, 0x1b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_37:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	jmp	.label_72
.label_114:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_98:
	cmp	ebx, 0xffffff7d
	je	.label_83
	cmp	ebx, 0xffffff7e
	jne	.label_86
	xor	edi, edi
	call	usage
.label_40:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
.label_72:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_84:
	cmp	ebx, 0x20
	je	.label_92
	jmp	.label_86
.label_99:
	cmp	ebx, 9
	jne	.label_86
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_96
.label_83:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.22
	mov	r9d, OFFSET FLAT:.str.23
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_86:
	mov	edi, 0x7d
	call	usage
.label_137:
	mov	edi, OFFSET FLAT:.str.76
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_141:
	mov	edi, OFFSET FLAT:.str.76
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	jmp	.label_111
.label_20:
	test	bl, bl
	jne	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	jmp	.label_111
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	jmp	.label_96
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
.label_96:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	call	error
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_35:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	jmp	.label_132
.label_145:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_101:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
.label_132:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_147:
	mov	edi, OFFSET FLAT:.str.70
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x18b
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.build_argv
	call	__assert_fail
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_79:
	call	xalloc_die
.label_17:
	call	xalloc_die
.label_130:
	mov	edi, OFFSET FLAT:.str.82
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.escape_char
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403070

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_151
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_148
	test	bpl, bpl
	sete	al
	movzx	eax, al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_150:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_154
	jle	.label_155
	cdqe	
	mov	rcx, qword ptr [rip + signals]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_150
.label_148:
	mov	rdi, r14
	call	free
	jmp	.label_153
.label_151:
	test	bpl, bpl
	sete	al
	movzx	eax, al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_149
	mov	rax, qword ptr [rip + signals]
	mov	dword ptr [rax + rbx*4], r14d
.label_149:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_152
.label_153:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_155:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_156
	mov	al, byte ptr [rip + sig_mask_changed]
	and	al, 1
	jne	.label_160
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_160:
	mov	byte ptr [rip + sig_mask_changed],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_158
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_159
	jle	.label_161
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_162
.label_158:
	mov	rdi, r14
	call	free
	jmp	.label_157
.label_156:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [rip + sig_mask_changed],  1
.label_157:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_161:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	test	rdi, rdi
	je	.label_167
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x24
	jne	.label_167
	xor	r12d, r12d
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x7b
	jne	.label_165
	movsx	eax, byte ptr [rdi + 2]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_170
	movabs	rdx, 0x3ffffff03ffffff
	shr	rdx, cl
	and	edx, 1
	movzx	eax, al
	xor	r12d, r12d
	cmp	eax, 0x5f
	je	.label_164
	test	rdx, rdx
	je	.label_165
	jmp	.label_164
.label_170:
	xor	r12d, r12d
	movzx	eax, al
	cmp	eax, 0x5f
	jne	.label_165
.label_164:
	lea	r14, [rdi + 2]
	lea	rsi, [rdi + 3]
	xor	r12d, r12d
	movabs	rax, 0x3ffffff03ffffff
	jmp	.label_163
	nop	word ptr [rax + rax]
.label_169:
	inc	rsi
.label_163:
	mov	cl, byte ptr [rsi]
	movsx	edx, cl
	lea	ebx, [rdx - 0x41]
	cmp	ebx, 0x39
	ja	.label_168
	bt	rax, rbx
	jb	.label_169
.label_168:
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_169
	movzx	ecx, cl
	cmp	ecx, 0x5f
	je	.label_169
	cmp	ecx, 0x7d
	jne	.label_165
	sub	rsi, rdi
	lea	r15, [rsi - 2]
	cmp	r15, qword ptr [rip + vnlen]
	jb	.label_166
	dec	rsi
	mov	qword ptr [rip + vnlen],  rsi
	mov	rdi, qword ptr [rip + varname]
	call	xrealloc
	mov	qword ptr [rip + varname],  rax
.label_166:
	mov	r12, qword ptr [rip + varname]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_165:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_167:
	mov	edi, OFFSET FLAT:.str.83
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.scan_varname
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403400

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_171
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_173
	cmp	byte ptr [rcx], 0
	jne	.label_173
	cmp	dword ptr [rbx], 0
	jne	.label_173
	cmp	eax, -1
	je	.label_173
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_173
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_173:
	mov	dword ptr [rsp + 0xc], edi
	jmp	.label_181
.label_171:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_174
	lea	rbx, [r12 + 1]
	nop	dword ptr [rax + rax]
.label_172:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_180
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_180:
	mov	bpl, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_172
.label_174:
	lea	rsi, [rsp + 0xc]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_175
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x53
	jne	.label_176
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x49
	jne	.label_176
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x47
	jne	.label_176
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 0xc]
	call	str2sig
	test	eax, eax
	je	.label_175
.label_176:
	mov	dword ptr [rsp + 0xc], 0xffffffff
.label_175:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 0xc]
.label_181:
	test	edi, edi
	js	.label_177
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_178
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_179
.label_178:
	mov	eax, dword ptr [rsp + 0xc]
.label_179:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403580
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_185
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_182
	cmp	dword ptr [rbp], 0x20
	jne	.label_182
.label_185:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_184
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_183
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_184:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_183:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403660

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_186
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_187
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_187
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_188
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_188:
	mov	rbx, r14
.label_187:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_186:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403710
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
	#Procedure 0x403750
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
	#Procedure 0x403760
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
	#Procedure 0x403770
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
	.align	32
	#Procedure 0x4037b0
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
	#Procedure 0x4037d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_189
	test	rdx, rdx
	je	.label_189
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_189:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800
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
	.align	32
	#Procedure 0x403880

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
.label_213:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_277
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_280]
.label_473:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_474:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_300
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_300
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_299
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_299:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_194
.label_300:
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
	jmp	.label_207
.label_466:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_207
.label_469:
	mov	al, 1
.label_467:
	mov	r12b, 1
.label_470:
	test	r12b, 1
	mov	cl, 1
	je	.label_233
	mov	cl, al
.label_233:
	mov	al, cl
.label_468:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_237
	test	r10, r10
	je	.label_240
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_212
.label_237:
	xor	ecx, ecx
	jmp	.label_212
.label_471:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_223
	test	r10, r10
	je	.label_254
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_256
.label_472:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_207
.label_240:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_212:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_207
.label_223:
	xor	eax, eax
	jmp	.label_256
.label_254:
	mov	eax, 1
.label_256:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_207:
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
	jmp	.label_290
.label_229:
	inc	rdi
.label_290:
	cmp	rbp, -1
	je	.label_200
	cmp	rdi, rbp
	jne	.label_202
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_210
.label_202:
	test	r12b, r12b
	je	.label_216
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_219
	cmp	rbp, -1
	jne	.label_219
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
.label_219:
	cmp	rbx, rbp
	jbe	.label_245
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_216:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_247
.label_245:
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
	jne	.label_273
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_247
	jmp	.label_222
.label_273:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_247:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_263
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_295]
.label_489:
	test	rdi, rdi
	jne	.label_282
	jmp	.label_302
.label_493:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_303
	test	rdi, rdi
	jne	.label_305
	cmp	rbp, 1
	je	.label_302
	xor	r13d, r13d
	jmp	.label_193
.label_482:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_308
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_222
	cmp	r9d, 2
	jne	.label_312
	mov	al, r14b
	and	al, 1
	jne	.label_313
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_227:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_294
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_294:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_221
.label_483:
	mov	bl, 0x62
	jmp	.label_230
.label_484:
	mov	cl, 0x74
	jmp	.label_215
.label_485:
	mov	bl, 0x76
	jmp	.label_230
.label_486:
	mov	bl, 0x66
	jmp	.label_230
.label_487:
	mov	cl, 0x72
	jmp	.label_215
.label_490:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_238
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_242
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
	jae	.label_248
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_269
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_269:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_238:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_193
.label_491:
	cmp	r9d, 5
	je	.label_281
	cmp	r9d, 2
	jne	.label_282
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_282
	jmp	.label_286
.label_492:
	cmp	r9d, 2
	jne	.label_288
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_291
	jmp	.label_296
.label_263:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_297
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
.label_278:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_191
	test	cl, cl
	je	.label_191
	xor	eax, eax
	jmp	.label_193
.label_303:
	test	rdi, rdi
	jne	.label_197
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_197
.label_302:
	mov	dl, 1
.label_488:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_262
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_193
.label_308:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_229
	jmp	.label_282
.label_288:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_215
.label_291:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_220
.label_215:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_224
.label_230:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_193
	jmp	.label_234
.label_297:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_235
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_235:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_301:
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
	je	.label_268
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_271
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_276
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_232
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_287:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_284
	bt	rsi, rdx
	jb	.label_285
.label_284:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_287
.label_232:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_209
	xor	r13d, r13d
.label_209:
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
	je	.label_301
	jmp	.label_278
.label_197:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_193
.label_281:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_282
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_282
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_282
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_314
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_195
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_204
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_275
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_275:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_214
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_214:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_241
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_211
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_211:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_193
.label_282:
	xor	eax, eax
	xor	r13d, r13d
.label_193:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_251
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_249
	jmp	.label_257
	nop	word ptr [rax + rax]
.label_251:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_257
.label_249:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_261
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_270:
	mov	bl, r15b
	je	.label_220
	jmp	.label_234
.label_261:
	mov	bl, r15b
.label_234:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_222
	cmp	r9d, 2
	jne	.label_279
	mov	al, r14b
	and	al, 1
	jne	.label_279
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_310
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_310:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_218
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_218:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_279:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_304
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_304:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_264
.label_305:
	xor	r13d, r13d
	jmp	.label_193
.label_191:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_309
	nop	word ptr [rax + rax]
.label_306:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_309:
	test	cl, cl
	je	.label_196
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_198
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_201:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_198
	nop	word ptr [rax + rax]
.label_196:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_222
	cmp	r9d, 2
	jne	.label_228
	mov	al, r14b
	and	al, 1
	jne	.label_228
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_231
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_231:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_246
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_246:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_228:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_259
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_259:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_267
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_267:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_311
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_311:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_198:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_220
	test	r14b, 1
	je	.label_265
	mov	bl, al
	and	bl, 1
	jne	.label_265
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_272
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_272:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_298
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_298:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_265:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_306
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_306
	nop	dword ptr [rax]
.label_220:
	test	r14b, 1
	je	.label_190
	and	al, 1
	jne	.label_190
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_208
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_190:
	mov	bl, r15b
.label_264:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_217
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_217:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_229
.label_312:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_221
.label_313:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_221:
	cmp	rcx, r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_239:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_244
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_253
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_255
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_258
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_258:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_266
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_266:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_193
.label_244:
	xor	r13d, r13d
	jmp	.label_193
.label_253:
	xor	r13d, r13d
	jmp	.label_193
.label_255:
	xor	r13d, r13d
	jmp	.label_193
.label_271:
	xor	r13d, r13d
.label_268:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_278
.label_276:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_283
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_274:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_289
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_274
	xor	r13d, r13d
	jmp	.label_278
.label_283:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_278
.label_289:
	xor	r13d, r13d
	jmp	.label_278
.label_314:
	xor	r13d, r13d
	jmp	.label_193
.label_195:
	xor	r13d, r13d
	jmp	.label_193
	nop	dword ptr [rax]
.label_203:
	mov	r13, rdi
.label_210:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_307
	or	al, dl
	je	.label_225
.label_307:
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
	je	.label_205
	or	al, dl
	jne	.label_205
	test	r8b, 1
	jne	.label_206
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_205
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_213
.label_205:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_226
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_226
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_226
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_243:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_236:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_243
.label_226:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_250
.label_262:
	mov	r9d, 2
	jmp	.label_222
.label_285:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_222
.label_225:
	mov	rbp, r13
	jmp	.label_222
.label_224:
	mov	r9d, 2
.label_222:
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
.label_292:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_250:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_206:
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
	jmp	.label_292
.label_242:
	mov	r9d, 2
	jmp	.label_222
.label_296:
	mov	r9d, 2
	jmp	.label_222
.label_286:
	mov	r9d, 2
	jmp	.label_222
.label_204:
	mov	r9d, 5
	jmp	.label_222
.label_277:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a10
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
	.align	32
	#Procedure 0x404ae0
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
	je	.label_315
	mov	qword ptr [rax], rbx
.label_315:
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
	.align	32
	#Procedure 0x404be0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_316
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_318:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_318
.label_316:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_319
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_320], OFFSET FLAT:slot0
.label_319:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_317
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_317:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c90

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
	js	.label_321
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_326
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_322
.label_326:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_325
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_324
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_324:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_322:
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
	ja	.label_327
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_323
	mov	rdi, rbx
	call	free
.label_323:
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
.label_327:
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
.label_321:
	call	abort
.label_325:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70
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
	.align	32
	#Procedure 0x404e90
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
	.align	32
	#Procedure 0x404eb0
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
	je	.label_328
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
.label_328:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f20
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
	je	.label_329
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
.label_329:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

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
	je	.label_330
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
.label_330:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405000
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
	je	.label_331
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
.label_331:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405070
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x4050e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x405150

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
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
	.align	32
	#Procedure 0x4051b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
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
	.align	32
	#Procedure 0x405210
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
	je	.label_335
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
.label_335:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4052c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_336
	test	rdx, rdx
	je	.label_336
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_336:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405330
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_337
	test	rdx, rdx
	je	.label_337
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_337:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_338
	test	rsi, rsi
	je	.label_338
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_338:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_339
	test	rsi, rsi
	je	.label_339
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
.label_339:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405480
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490
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
	.align	32
	#Procedure 0x4054b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

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
	.align	32
	#Procedure 0x4054f0

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
	jne	.label_341
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_342
	cmp	ecx, 0x55
	jne	.label_340
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_340
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_340
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_340
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_340
	cmp	byte ptr [rax + 5], 0
	jne	.label_340
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_341
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_341
.label_342:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_340
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_340
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_340
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_340
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_340
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_340
	cmp	byte ptr [rax + 7], 0
	je	.label_343
.label_340:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_341:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_343:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_341
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_341
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

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
	je	.label_350
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_348
.label_350:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_348:
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
	ja	.label_349
	jmp	qword ptr [(r12 * 8) + label_344]
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
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_353
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
	jmp	.label_352
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
	jmp	.label_351
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
	jmp	.label_347
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
.label_347:
	mov	qword ptr [rsp + 0x10], rdi
.label_351:
	mov	qword ptr [rsp + 8], rsi
.label_352:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_345
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_353:
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
	jmp	.label_346
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
.label_346:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_345:
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
	.align	32
	#Procedure 0x4058d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_354:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_354
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405900
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_357:
	cmp	r10d, 0x28
	ja	.label_355
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_358
	inc	r9
	cmp	r9, 0xa
	jb	.label_357
.label_358:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_359
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_359:
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
.label_363:
	cmp	r8d, 0x28
	ja	.label_360
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_362
	nop	
.label_360:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_362:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_361
	inc	r9
	cmp	r9, 0xa
	jb	.label_363
.label_361:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a60
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
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ae0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_364
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_366
	test	rax, rax
	je	.label_367
.label_366:
	pop	rbx
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_368
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_369
	test	rbx, rbx
	jne	.label_369
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_369:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	je	.label_368
.label_370:
	pop	rbx
	ret	
.label_368:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_371
	test	rbx, rbx
	jne	.label_371
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_371:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_373
	test	rax, rax
	je	.label_372
.label_373:
	pop	rbx
	ret	
.label_372:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405bc0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_374
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_376
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_375
.label_374:
	test	rcx, rcx
	jne	.label_379
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_379:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_378
.label_375:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_377
	test	rbx, rbx
	jne	.label_377
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_377:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_380
	test	rax, rax
	je	.label_376
.label_380:
	pop	rbx
	ret	
.label_376:
	call	xalloc_die
.label_378:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_381
	test	rax, rax
	je	.label_382
.label_381:
	pop	rbx
	ret	
.label_382:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_383
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_386
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_387
	call	free
	xor	eax, eax
	jmp	.label_384
.label_383:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_385
	mov	qword ptr [rsi], rbx
.label_387:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_384
	test	rax, rax
	je	.label_385
.label_384:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
.label_386:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0
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
	je	.label_389
	test	r14, r14
	je	.label_388
.label_389:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_388:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_390
	call	rpl_calloc
	test	rax, rax
	je	.label_390
	pop	rcx
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60

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
	je	.label_391
	test	r15, r15
	je	.label_392
.label_391:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_392:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405da0

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
	je	.label_394
	test	r15, r15
	je	.label_393
.label_394:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_393:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405df0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
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
	.align	32
	#Procedure 0x405e20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_395
	test	rsi, rsi
	mov	ecx, 1
	je	.label_396
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_396
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_395:
	mov	ecx, 1
.label_396:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70

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
	je	.label_397
	cmp	r15, -2
	jb	.label_397
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_397
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_397:
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
	#Procedure 0x405ed0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_402
	cmp	eax, 9
	ja	.label_399
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_400
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_401
	jmp	.label_400
	nop	word ptr cs:[rax + rax]
.label_399:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_406
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_399
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_403
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_405
.label_403:
	test	r15d, r15d
	jle	.label_400
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_400
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_400
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_400
	test	rax, rax
	jg	.label_400
	mov	ecx, r15d
	jmp	.label_404
.label_406:
	lea	rax, [rbx + rbx*2]
	mov	eax, dword ptr [(rax * 4) + numname_table]
	jmp	.label_401
.label_405:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_400
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_400
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_398
.label_400:
	mov	eax, 0xffffffff
.label_401:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_398:
	mov	ecx, ebp
.label_404:
	add	rax, rcx
	jmp	.label_401
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	xor	eax, eax
	nop	
.label_409:
	mov	eax, eax
	lea	rcx, [rax + rax*2]
	cmp	dword ptr [(rcx * 4) + numname_table],  ebp
	je	.label_407
	lea	ecx, [rax + 1]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_408
	lea	ecx, [rax + 2]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_408
	lea	ecx, [rax + 3]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_408
	lea	ecx, [rax + 4]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_408
	add	eax, 5
	cmp	eax, 0x23
	jb	.label_409
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_411
	cmp	eax, ebp
	jl	.label_411
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_412
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_410
.label_407:
	mov	rcx, rax
.label_408:
	lea	rax, [rcx + rcx*2]
	lea	rsi, qword ptr [(rax * 4) + label_402]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_411:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_412:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_410:
	xor	ebx, ebx
	cmp	r14d, ebp
	je	.label_411
	sub	ebp, r14d
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_2
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406150

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
	jne	.label_414
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_413
	test	cl, cl
	jne	.label_413
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_413
.label_414:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_413
	call	__errno_location
	mov	dword ptr [rax], 0
.label_413:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_416
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_417
	cmp	byte ptr [rax + 1], 0
	je	.label_415
.label_417:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_416
.label_415:
	xor	ebx, ebx
.label_416:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_418
	mov	rax, rcx
.label_418:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_419
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_420
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_419
.label_420:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_419
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_421
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_421:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_419:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4062a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_422
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_422
	test	byte ptr [rbx + 1], 1
	je	.label_422
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_422:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062e0

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
	jne	.label_423
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_423
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_424
.label_423:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_424:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_425
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_425:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x406350

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