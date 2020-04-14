	.section	.text
	.align	32
	#Procedure 0x4019a0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_8
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rdx, qword ptr [rip + program_name]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stdout]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_7
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_7:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbp, rbp
	mov	rbx, qword ptr [rip + stderr]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da0

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1b8
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1a0], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	call	atexit
	mov	rbp, rbp
	mov	edi, 0x104
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rip + signals],  rax
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 0x104
	mov	rdi, rax
	lea	rsi, [rsi]
	call	memset
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_22
.label_123:
	mov	r14, qword ptr [rip + optarg]
	nop	dword ptr [rax]
.label_22:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	r12, qword ptr [rsp + 0x1a0]
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	call	getopt_long
	mov	rbp, rbp
	mov	ebx, eax
	nop	
	cmp	ebx, 0x52
	jle	.label_104
	lea	eax, [rbx - 0x75]
	cmp	eax, 0xe
	ja	.label_106
	nop	
	jmp	qword ptr [(rax * 8) + label_107]
.label_491:
	mov	rbx, qword ptr [rip + optarg]
	mov	rsi, qword ptr [rip + usvars_used]
	cmp	rsi, qword ptr [rip + usvars_alloc]
	mov	rbp, rbp
	jne	.label_109
	mov	rsp, rsp
	mov	rdi, qword ptr [rip + usvars]
	test	rdi, rdi
	je	.label_110
	movabs	rax, 0xaaaaaaaaaaaaaaa
	lea	rdi, [rdi]
	cmp	rsi, rax
	lea	rsi, [rsi]
	jae	.label_112
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 1
	lea	rsi, [rsi]
	lea	rsi, [rsi + rax + 1]
	mov	rsp, rsp
	jmp	.label_116
	nop	dword ptr [rax + rax]
.label_104:
	cmp	ebx, 0x1f
	jle	.label_36
	mov	rsp, rsp
	cmp	ebx, 0x30
	je	.label_121
	mov	rsp, rsp
	cmp	ebx, 0x43
	mov	rsp, rsp
	je	.label_123
	lea	rsi, [rsi]
	jmp	.label_126
.label_121:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0xb0], rax
	jmp	.label_22
.label_106:
	lea	rsi, [rsi]
	cmp	ebx, 0x53
	je	.label_31
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	cmp	ebx, 0x69
	je	.label_22
	nop	
	jmp	.label_53
.label_492:
	lea	rsi, [rsi]
	mov	byte ptr [rip + dev_debug],  1
	mov	rbp, rbp
	jmp	.label_22
.label_493:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	mov	rsp, rsp
	call	parse_signal_action_params
	nop	
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_block_signal_params
	lea	rdi, [rdi]
	jmp	.label_22
.label_494:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_signal_action_params
	jmp	.label_22
.label_495:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_block_signal_params
	jmp	.label_22
.label_496:
	lea	rdi, [rdi]
	mov	byte ptr [rip + report_signal_handling],  1
	jmp	.label_22
.label_31:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rip + optarg]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	nop	
	dec	r13
	nop	word ptr cs:[rax + rax]
.label_20:
	mov	rsp, rsp
	movsx	rbp, byte ptr [r13 + 1]
	inc	r13
	movzx	ebx, word ptr [rcx + rbp*2]
	test	bh, 0x20
	nop	
	jne	.label_20
	nop	
	test	bpl, bpl
	je	.label_22
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	mov	qword ptr [rsp + 0x168], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x190], r15
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	je	.label_25
	nop	
	mov	eax, dword ptr [rip + optind]
	nop	
	mov	dword ptr [rsp + 0xb8], eax
	mov	rdi, r13
	call	strlen
	lea	rdi, [rdi]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	r12, r13
	xor	esi, esi
	xor	edi, edi
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0xc0]
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rsp, rsp
	movzx	eax, r15b
	inc	r12
	mov	rbp, rbp
	mov	rcx, qword ptr [r9]
	movzx	ebx, word ptr [rcx + rbp*2]
.label_131:
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	and	ebx, 0xe000
	lea	rdi, [rdi]
	shr	ebx, 0xd
	mov	cl, dil
	or	cl, sil
	mov	rbp, rbp
	and	cl, 1
	sete	r15b
	and	r15b, bl
	lea	rdi, [rdi]
	cmovne	eax, r8d
	mov	r14d, eax
	mov	rsp, rsp
	add	r14d, edx
	lea	rdi, [rdi]
	movsx	eax, bpl
	lea	rdi, [rdi]
	cmp	eax, 0x26
	jg	.label_45
	lea	rsi, [rsi]
	cmp	eax, 0x22
	mov	rsp, rsp
	je	.label_54
	cmp	eax, 0x24
	mov	rsp, rsp
	jne	.label_58
	test	sil, 1
	jne	.label_58
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc0], edi
	mov	rbp, rbp
	mov	ebp, esi
	mov	rbx, r9
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	extract_varname
	test	rax, rax
	je	.label_65
	lea	rsi, [rsi]
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_68
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x28], rax
.label_68:
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	r9, rbx
	nop	
	mov	esi, ebp
	mov	edi, dword ptr [rsp + 0xc0]
	mov	rbp, rbp
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_45:
	cmp	eax, 0x5c
	lea	rsi, [rsi]
	je	.label_75
	cmp	eax, 0x27
	nop	
	jne	.label_58
	and	sil, dil
	test	sil, 1
	mov	rsp, rsp
	jne	.label_77
	mov	rbp, rbp
	xor	cl, 1
	mov	rsp, rsp
	mov	sil, cl
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_54:
	and	dil, sil
	test	dil, 1
	lea	rsi, [rsi]
	jne	.label_81
	xor	cl, 1
	mov	rbp, rbp
	mov	dil, cl
	jmp	.label_58
	nop	
.label_75:
	lea	rdi, [rdi]
	movsx	ebx, byte ptr [r12 + 1]
	test	dil, 1
	lea	rdi, [rdi]
	je	.label_84
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 0x63
	mov	rsp, rsp
	je	.label_87
.label_84:
	mov	al, bl
	mov	rsp, rsp
	cmp	ebx, 0x5b
	jle	.label_91
	add	al, 0xa4
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x1a
	ja	.label_94
	mov	rsp, rsp
	mov	ecx, 0x5440489
	lea	rsi, [rsi]
	bt	rcx, rax
	lea	rdi, [rdi]
	jb	.label_71
	jmp	.label_94
.label_91:
	add	al, 0xde
	movzx	eax, al
	cmp	eax, 3
	mov	rsp, rsp
	jb	.label_71
	movzx	eax, bl
	cmp	eax, 0x27
	mov	rbp, rbp
	jne	.label_99
.label_71:
	lea	rsi, [rsi]
	inc	r12
	movzx	eax, bl
	lea	rsi, [rsi]
	cmp	eax, 0x5f
	nop	
	sete	al
	movzx	eax, al
	add	r14d, eax
.label_58:
	movsx	rbp, byte ptr [r12 + 1]
	test	rbp, rbp
	jne	.label_105
	or	sil, dil
	mov	rbp, rbp
	test	sil, 1
	jne	.label_108
	mov	rdi, qword ptr [rsp + 0x28]
	add	rdi, 7
	mov	rbp, rbp
	call	xmalloc
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1a0]
	lea	eax, [rax + 2]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rsp + 0xb8]
	add	eax, r14d
	mov	rbp, rbp
	movsxd	rdi, eax
	shl	rdi, 3
	nop	
	call	xmalloc
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	r9, rax
	nop	
	mov	word ptr [rsi + 4], 0x59
	mov	rsp, rsp
	mov	dword ptr [rsi], 0x4d4d5544
	lea	r14, [r9 + 8]
	mov	qword ptr [r9], rsi
	lea	rsi, [rsi]
	add	rsi, 6
	lea	rdi, [rdi]
	mov	cl, byte ptr [r13]
	mov	rsp, rsp
	test	cl, cl
	je	.label_115
	mov	bpl, 1
	lea	rsi, [rsi]
	xor	r10d, r10d
	mov	r15, r13
	xor	r11d, r11d
	mov	rdi, r14
.label_144:
	mov	r8b, r11b
	lea	rdi, [rdi]
	and	r8b, 1
.label_136:
	mov	r12b, r10b
	or	r12b, r11b
	and	r12b, 1
	lea	rdi, [rdi]
	mov	al, r10b
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xc0], al
	mov	rax, r15
.label_128:
	lea	rdi, [rdi]
	mov	r15, rax
	nop	dword ptr [rax + rax]
.label_34:
	movsx	eax, cl
	nop	
	lea	edx, [rax - 0x20]
	mov	rbp, rbp
	cmp	edx, 7
	mov	rsp, rsp
	jbe	.label_135
	mov	rsp, rsp
	cmp	eax, 9
	je	.label_137
	mov	rsp, rsp
	cmp	eax, 0x5c
	nop	
	jne	.label_138
	mov	rsp, rsp
	mov	bl, byte ptr [r15 + 1]
	test	r8b, r8b
	mov	rsp, rsp
	je	.label_140
	nop	
	movzx	eax, bl
	cmp	eax, 0x5c
	je	.label_140
	mov	rsp, rsp
	cmp	eax, 0x27
	jne	.label_143
.label_140:
	mov	rsp, rsp
	lea	rax, [r15 + 1]
	movzx	ecx, bl
	mov	rsp, rsp
	cmp	ecx, 0x27
	je	.label_122
	mov	rsp, rsp
	cmp	ecx, 0x5c
	nop	
	je	.label_146
	lea	rdi, [rdi]
	test	r8b, r8b
	lea	rsi, [rsi]
	je	.label_10
	cmp	ecx, 0x5f
	mov	rsp, rsp
	je	.label_13
	jmp	.label_14
	nop	word ptr [rax + rax]
.label_135:
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	qword ptr [(rdx * 8) + label_46]
.label_137:
	test	r12b, r12b
	jne	.label_19
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_21
	nop	dword ptr [rax]
.label_24:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r15 + rax + 1]
	inc	rax
.label_21:
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0x20
	je	.label_24
	lea	rsi, [rsi]
	cmp	edx, 9
	je	.label_24
	nop	
	add	r15, rax
	mov	rbp, rbp
	jmp	.label_27
.label_10:
	nop	
	cmp	ecx, 0x5f
	lea	rsi, [rsi]
	jne	.label_95
.label_13:
	mov	rsp, rsp
	mov	cl, 0x20
	cmp	byte ptr [rsp + 0xc0], 0
	nop	
	jne	.label_23
	mov	cl, byte ptr [r15 + 2]
	mov	rsp, rsp
	add	r15, 2
.label_27:
	lea	rdi, [rdi]
	mov	bpl, 1
	nop	
	test	cl, cl
	jne	.label_34
	jmp	.label_37
.label_19:
	mov	rax, r15
	jmp	.label_23
.label_486:
	lea	rdi, [rdi]
	test	r8b, r8b
	je	.label_38
	mov	rsp, rsp
	mov	rax, r15
	jmp	.label_23
.label_487:
	lea	rsi, [rsi]
	test	bpl, 1
	mov	rsp, rsp
	mov	rax, r15
	je	.label_23
	lea	rsi, [rsi]
	jmp	.label_37
.label_488:
	mov	rsp, rsp
	test	r8b, r8b
	mov	rbp, rbp
	jne	.label_44
	mov	dword ptr [rsp + 0x1ac], r11d
	mov	dword ptr [rsp + 0x164], r10d
	mov	byte ptr [rsp + 0x19f], r8b
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdi
	mov	rbp, rbp
	mov	rbx, rsi
	mov	qword ptr [rsp + 0xb8], r9
	mov	rdi, r15
	lea	rsi, [rsi]
	call	extract_varname
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	lea	rdi, [rdi]
	call	getenv
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_57
	mov	rbp, rbp
	test	bpl, 1
	je	.label_60
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
	lea	rdi, [rdi]
	inc	rbx
	nop	
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [rdx], rbx
	add	rdx, 8
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	xor	ebp, ebp
.label_60:
	movzx	edx, byte ptr [rip + dev_debug]
	lea	rdi, [rdi]
	and	edx, 1
	cmp	edx, 1
	jne	.label_35
	mov	rsp, rsp
	mov	rdx, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 0x1b0], rdx
	mov	rdi, rax
	mov	qword ptr [rsp + 0x18], rax
	nop	
	call	quote
	mov	rsp, rsp
	mov	r8, rax
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.74
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
.label_35:
	mov	rdi, rbx
	mov	rsi, rax
	lea	rdi, [rdi]
	call	stpcpy
	lea	rsi, [rsi]
	mov	rbx, rax
	jmp	.label_102
.label_489:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc0], 0
	lea	rdi, [rdi]
	je	.label_79
	mov	rax, r15
	mov	rbp, rbp
	jmp	.label_23
.label_138:
	mov	rax, r15
	jmp	.label_23
.label_143:
	mov	rax, r15
	jmp	.label_23
.label_122:
	mov	cl, bl
	jmp	.label_23
.label_146:
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rbp, rbp
	jmp	.label_23
.label_95:
	mov	dl, bl
	nop	
	add	dl, 0xde
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 3
	jae	.label_14
	lea	rsi, [rsi]
	mov	cl, bl
	jmp	.label_23
.label_14:
	mov	rsp, rsp
	cmp	ecx, 0x63
	nop	
	je	.label_37
	movsx	edx, bl
	lea	ecx, [rdx - 0x6e]
	cmp	ecx, 8
	lea	rdi, [rdi]
	ja	.label_43
	jmp	qword ptr [(rcx * 8) + label_96]
.label_500:
	lea	rdi, [rdi]
	mov	cl, 0xa
	lea	rdi, [rdi]
	jmp	.label_23
.label_44:
	mov	rsp, rsp
	mov	rax, r15
	lea	rsi, [rsi]
	jmp	.label_23
.label_57:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_102
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.75
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	call	__fprintf_chk
.label_102:
	mov	esi, 0x7d
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	strchr
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0xb8]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x19f]
	mov	r10d, dword ptr [rsp + 0x164]
	mov	r11d, dword ptr [rsp + 0x1ac]
	jmp	.label_52
.label_43:
	mov	cl, 0xc
	cmp	edx, 0x66
	je	.label_23
	nop	
	jmp	.label_117
.label_501:
	mov	cl, 0xd
	mov	rbp, rbp
	jmp	.label_23
.label_502:
	lea	rdi, [rdi]
	mov	cl, 9
	jmp	.label_23
.label_503:
	mov	cl, 0xb
	nop	word ptr [rax + rax]
.label_23:
	mov	rbp, rbp
	test	bpl, 1
	je	.label_120
	nop	
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	inc	rsi
	mov	qword ptr [rdi], rsi
	mov	rbp, rbp
	add	rdi, 8
	xor	ebp, ebp
.label_120:
	mov	rbp, rbp
	mov	byte ptr [rsi], cl
	mov	rbp, rbp
	inc	rsi
.label_52:
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 1]
	mov	rsp, rsp
	inc	rax
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_128
	mov	rbp, rbp
	jmp	.label_37
.label_38:
	test	bpl, 1
	mov	rbp, rbp
	je	.label_133
	mov	byte ptr [rsi], 0
	mov	rbp, rbp
	inc	rsi
	mov	rbp, rbp
	mov	qword ptr [rdi], rsi
	mov	rbp, rbp
	add	rdi, 8
	xor	ebp, ebp
.label_133:
	mov	al, byte ptr [rsp + 0xc0]
	xor	al, 1
	mov	cl, byte ptr [r15 + 1]
	mov	rsp, rsp
	inc	r15
	nop	
	test	cl, cl
	nop	
	mov	r10b, al
	jne	.label_136
	jmp	.label_37
.label_79:
	mov	rsp, rsp
	test	bpl, 1
	je	.label_141
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [rdi], rsi
	add	rdi, 8
	mov	rbp, rbp
	xor	ebp, ebp
.label_141:
	xor	r8b, 1
	mov	cl, byte ptr [r15 + 1]
	nop	
	inc	r15
	mov	rbp, rbp
	test	cl, cl
	mov	r11b, r8b
	mov	rsp, rsp
	jne	.label_144
	mov	rbp, rbp
	jmp	.label_37
.label_109:
	mov	rsp, rsp
	mov	rax, qword ptr [rip + usvars]
	mov	rsp, rsp
	jmp	.label_147
.label_110:
	test	rsi, rsi
	mov	rbp, rbp
	mov	eax, 0x10
	mov	rsp, rsp
	cmove	rsi, rax
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 0x3c
	nop	
	jne	.label_11
.label_116:
	mov	qword ptr [rip + usvars_alloc],  rsi
	lea	rsi, [rsi]
	shl	rsi, 3
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rip + usvars],  rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + usvars_used]
.label_147:
	lea	rcx, [rsi + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rip + usvars_used],  rcx
	mov	rbp, rbp
	mov	qword ptr [rax + rsi*8], rbx
	jmp	.label_22
.label_115:
	mov	rdi, r14
.label_37:
	mov	byte ptr [rsi], 0
	mov	qword ptr [rdi], 0
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x190]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	qword ptr [r9], rax
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	mov	rax, r9
	jne	.label_29
	mov	rbp, rbp
	cmp	qword ptr [r14], 0
	nop	
	mov	rax, r9
	lea	rdi, [rdi]
	je	.label_29
	nop	
	mov	r12, r9
	mov	r15, qword ptr [rip + stderr]
	nop	
	mov	rdi, r13
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	ebx, ebx
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.67
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	call	__fprintf_chk
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rip + dev_debug]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_48
	nop	
	mov	rbx, qword ptr [rip + stderr]
	mov	r14, r12
	add	r14, 0x10
	nop	
	mov	rdi, qword ptr [r12 + 8]
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.68
	mov	rbp, rbp
	jmp	.label_55
	nop	dword ptr [rax + rax]
.label_29:
	mov	rsp, rsp
	lea	r14, [rax + 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, r14
	mov	rbp, rbp
	jne	.label_29
	jmp	.label_63
.label_55:
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	bl, byte ptr [rip + dev_debug]
.label_48:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	je	.label_67
	mov	rsp, rsp
	test	bl, 1
	je	.label_70
	mov	rbp, rbp
	mov	rbx, qword ptr [rip + stderr]
	nop	
	add	r14, 8
	call	quote
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	jmp	.label_55
.label_67:
	mov	rbp, rbp
	mov	r9, r12
.label_63:
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rip + optind]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x1a0]
	mov	rbp, rbp
	cmp	esi, edx
	jge	.label_76
	movsxd	rax, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	rbp, rbp
	sub	ecx, esi
	lea	r8, [rax - 1]
	lea	rdi, [rdi]
	sub	r8, rsi
	test	cl, 7
	mov	rbp, rbp
	je	.label_118
	mov	rsp, rsp
	sub	dl, sil
	nop	
	movzx	edi, dl
	and	edi, 7
	lea	rdi, [rdi]
	neg	rdi
	mov	rdx, rsi
	nop	
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rbx, qword ptr [rbp + rdx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 8
	mov	rbp, rbp
	inc	rdx
	inc	rdi
	mov	rsp, rsp
	jne	.label_86
	lea	rdi, [rdi]
	jmp	.label_93
.label_118:
	mov	rbp, rbp
	mov	rdx, rsi
	nop	
	mov	rcx, r14
.label_93:
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	r8, 7
	jb	.label_16
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	rbp, rbp
	lea	rdx, [rbp + rdx*8 + 0x38]
	nop	
.label_114:
	mov	rsi, qword ptr [rdx - 0x38]
	nop	
	mov	qword ptr [rcx], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx - 0x30]
	mov	qword ptr [rcx + 8], rsi
	mov	rsi, qword ptr [rdx - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rsi
	mov	rsi, qword ptr [rdx - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rsi
	nop	
	mov	rsi, qword ptr [rdx - 0x18]
	mov	qword ptr [rcx + 0x20], rsi
	mov	rsi, qword ptr [rdx - 0x10]
	mov	qword ptr [rcx + 0x28], rsi
	mov	rsi, qword ptr [rdx - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx + 0x38], rsi
	add	rdx, 0x40
	add	rcx, 0x40
	add	rax, -8
	mov	rbp, rbp
	jne	.label_114
.label_16:
	lea	r14, [r14 + rdi*8]
.label_76:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	qword ptr [r9], 0
	mov	rsp, rsp
	je	.label_111
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_82:
	lea	rcx, [rax + 1]
	cmp	qword ptr [r9 + rax*8 + 8], 0
	nop	
	mov	rax, rcx
	jne	.label_82
.label_111:
	mov	qword ptr [rsp + 0x1a0], rcx
	mov	dword ptr [rip + optind],  0
	mov	r15, r9
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x168]
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_70:
	jmp	.label_70
.label_36:
	cmp	ebx, -2
	jle	.label_124
	cmp	ebx, -1
	lea	rsi, [rsi]
	jne	.label_125
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	lea	rdi, [rdi]
	jge	.label_127
	mov	rcx, qword ptr [r15 + rax*8]
	movzx	edx, byte ptr [rcx]
	mov	rbp, rbp
	cmp	edx, 0x2d
	mov	rsp, rsp
	jne	.label_127
	cmp	byte ptr [rcx + 1], 0
	je	.label_132
.label_127:
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_50
	lea	rdi, [rdi]
	mov	r13, r14
	xor	ebx, ebx
	cmp	qword ptr [rip + usvars_used],  0
	je	.label_15
	nop	word ptr cs:[rax + rax]
.label_12:
	nop	
	movzx	eax, byte ptr [rip + dev_debug]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_139
	mov	rdi, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	rax, qword ptr [rip + usvars]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.84
	xor	eax, eax
	nop	
	call	__fprintf_chk
.label_139:
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	unsetenv
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_9
	nop	
	inc	rbx
	cmp	rbx, qword ptr [rip + usvars_used]
	nop	
	jb	.label_12
	lea	rsi, [rsi]
	jmp	.label_15
.label_132:
	inc	eax
	nop	
	mov	dword ptr [rip + optind],  eax
.label_50:
	movzx	eax, byte ptr [rip + dev_debug]
	mov	rbp, rbp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_18
	mov	rdi, qword ptr [rip + stderr]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.26
	xor	eax, eax
	call	__fprintf_chk
.label_18:
	lea	rdi, [rdi]
	mov	r13, r14
	mov	rsp, rsp
	mov	qword ptr [rip + __environ], OFFSET FLAT:main.dummy_environ
.label_15:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rip + optind]
	nop	
	jmp	.label_28
	nop	dword ptr [rax + rax]
.label_51:
	mov	ebx, dword ptr [rip + optind]
	inc	ebx
	lea	rdi, [rdi]
	mov	dword ptr [rip + optind],  ebx
.label_28:
	cmp	ebx, r12d
	jge	.label_33
	movsxd	rax, ebx
	mov	rbp, qword ptr [r15 + rax*8]
	mov	esi, 0x3d
	mov	rsp, rsp
	mov	rdi, rbp
	call	strchr
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	je	.label_33
	mov	rsp, rsp
	movzx	eax, byte ptr [rip + dev_debug]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_41
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.27
	xor	eax, eax
	nop	
	mov	rcx, rbp
	nop	
	call	__fprintf_chk
	movsxd	rax, dword ptr [rip + optind]
	mov	rsp, rsp
	mov	rbp, qword ptr [r15 + rax*8]
.label_41:
	mov	rbp, rbp
	mov	rdi, rbp
	call	putenv
	test	eax, eax
	je	.label_51
	lea	rdi, [rdi]
	mov	byte ptr [r14], 0
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	nop	
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_33:
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_64
	cmp	ebx, r12d
	mov	rsp, rsp
	jl	.label_47
.label_64:
	lea	rdi, [rdi]
	test	r13, r13
	sete	al
	cmp	ebx, r12d
	mov	rsp, rsp
	jl	.label_69
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_72
.label_69:
	lea	rdi, [rdi]
	cmp	ebx, r12d
	mov	rbp, rbp
	jge	.label_74
	mov	qword ptr [rsp + 0x168], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	rbp, rbp
	mov	ebx, 1
	mov	rbp, rbp
	lea	r13, [rsp + 0xc8]
	nop	
	lea	r15, [rsp + 0x170]
.label_119:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rip + signals]
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax + rbx*4]
	nop	
	test	r14d, r14d
	je	.label_78
	mov	r12b, 1
	lea	rsi, [rsi]
	cmp	r14d, 2
	nop	
	je	.label_80
	lea	rsi, [rsi]
	cmp	r14d, 4
	je	.label_80
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_80:
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, ebx
	mov	rdx, r13
	call	sigaction
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	sete	al
	test	r12b, r12b
	jne	.label_85
	test	al, al
	mov	rbp, rbp
	je	.label_90
.label_85:
	dec	r14d
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_92
	nop	
	cmp	r14d, 1
	seta	al
	movzx	eax, al
	nop	
	mov	qword ptr [rsp + 0xc8], rax
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r13
	call	sigaction
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r12b, al
	nop	
	je	.label_97
.label_92:
	mov	rbp, rbp
	movzx	eax, byte ptr [rip + dev_debug]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_78
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsi, r15
	lea	rdi, [rdi]
	call	sig2str
	mov	rsp, rsp
	movzx	eax, byte ptr [rip + dev_debug]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_78
	cmp	r14d, 2
	mov	rdi, qword ptr [rip + stderr]
	mov	r9d, OFFSET FLAT:.str.90
	mov	eax, OFFSET FLAT:.str.89
	cmovb	r9, rax
	mov	rbp, rbp
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.91
	cmovne	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.88
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8d, ebx
	mov	rsp, rsp
	call	__fprintf_chk
	nop	dword ptr [rax]
.label_78:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_119
	movzx	eax, byte ptr [rip + sig_mask_changed]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x190]
	nop	
	mov	r13, qword ptr [rsp + 0x1a0]
	mov	rbp, qword ptr [rsp + 0x168]
	jne	.label_134
	mov	r12, r15
	nop	
	lea	rbx, [rsp + 0xc8]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_49
	mov	ebx, 1
	lea	rdi, [rdi]
	lea	r14, [rsp + 0xc8]
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x170]
	nop	dword ptr [rax + rax]
.label_32:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:block_signals
	lea	rdi, [rdi]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	rsp, rsp
	je	.label_142
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rsi, [rsi]
	call	sigaddset
	lea	rdi, [rdi]
	mov	ebp, OFFSET FLAT:.str.93
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	mov	rbp, rbp
	call	sigismember
	mov	rbp, rbp
	test	eax, eax
	je	.label_26
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, ebx
	call	sigdelset
	mov	ebp, OFFSET FLAT:.str.94
.label_145:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rip + dev_debug]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_26
	mov	rbp, rbp
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	sig2str
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_26
	nop	
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.95
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, rbp
	call	__fprintf_chk
.label_26:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_32
	lea	rsi, [rsp + 0xc8]
	lea	rdi, [rdi]
	mov	edi, 2
	lea	rsi, [rsi]
	xor	edx, edx
	call	sigprocmask
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	mov	r15, r12
	mov	rbp, qword ptr [rsp + 0x168]
	jne	.label_40
.label_134:
	movzx	eax, byte ptr [rip + report_signal_handling]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_42
	mov	rbp, rbp
	lea	rbx, [rsp + 0x30]
	mov	rdi, rbx
	nop	
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	sigprocmask
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_49
	mov	ebx, 1
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0xc8]
	lea	r13, [rsp + 0x170]
	nop	
.label_83:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rdx, rbp
	mov	rsp, rsp
	call	sigaction
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_59
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xc8], 1
	lea	rsi, [rsi]
	mov	r12d, OFFSET FLAT:.str.90
	mov	rbp, rbp
	je	.label_61
	mov	r12d, OFFSET FLAT:.str_0
.label_61:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	esi, ebx
	lea	rsi, [rsi]
	call	sigismember
	mov	rbp, rbp
	test	eax, eax
	nop	
	mov	r14d, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.93
	cmovne	r14, rax
	cmp	byte ptr [r12], 0
	mov	al, byte ptr [r14]
	nop	
	je	.label_66
	test	al, al
	mov	r15d, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.65
	cmovne	r15, rax
	jmp	.label_73
.label_66:
	test	al, al
	mov	r15d, OFFSET FLAT:.str_0
	mov	rsp, rsp
	je	.label_59
.label_73:
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	rsi, r13
	call	sig2str
	nop	
	mov	rdi, qword ptr [rip + stderr]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.97
	xor	eax, eax
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	r8d, ebx
	mov	r9, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
.label_59:
	mov	rbp, rbp
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_83
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x190]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x1a0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x168]
.label_42:
	test	rbp, rbp
	je	.label_88
	mov	rbp, rbp
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_89
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rip + stderr]
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.32
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
.label_89:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	chdir
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_101
.label_88:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_62
	mov	rdi, qword ptr [rip + stderr]
	movsxd	rax, dword ptr [rip + optind]
	nop	
	mov	rcx, qword ptr [r15 + rax*8]
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.34
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rsp, rsp
	mov	ebp, dword ptr [rip + optind]
	cmp	ebp, r13d
	lea	rsi, [rsi]
	jge	.label_62
	movsxd	rax, ebp
	lea	rbx, [r15 + rax*8]
	nop	dword ptr [rax]
.label_130:
	mov	rbp, rbp
	movzx	eax, byte ptr [rip + dev_debug]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_113
	lea	rdi, [rdi]
	mov	r14, qword ptr [rip + stderr]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	r12, r15
	mov	r15d, ebp
	mov	rsp, rsp
	sub	r15d, dword ptr [rip + optind]
	call	quote
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.35
	xor	eax, eax
	mov	rdi, r14
	mov	ecx, r15d
	mov	r15, r12
	call	__fprintf_chk
.label_113:
	inc	ebp
	lea	rdi, [rdi]
	add	rbx, 8
	nop	
	cmp	r13d, ebp
	jne	.label_130
.label_62:
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [r15 + rax*8]
	mov	rdi, qword ptr [r15 + rax*8]
	call	execvp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	nop	
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	lea	rdi, [rdi]
	cmp	ebp, 2
	jne	.label_17
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rdi, [rdi]
	mov	esi, 0x20
	nop	
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	mov	rsp, rsp
	je	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	jmp	.label_17
.label_74:
	mov	rbx, qword ptr [rip + __environ]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_17
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	mov	ebp, 0xa
	nop	
	cmovne	ebp, r14d
	mov	rbp, rbp
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.31
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, ebp
	call	__printf_chk
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx]
	lea	rdi, [rdi]
	add	rbx, 8
	mov	rbp, rbp
	test	rdx, rdx
	nop	
	jne	.label_30
.label_17:
	mov	eax, r14d
	add	rsp, 0x1b8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_90:
	call	__errno_location
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.86
	jmp	.label_39
.label_9:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 0x7d
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_124:
	cmp	ebx, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_100
	lea	rsi, [rsi]
	cmp	ebx, 0xffffff7e
	lea	rsi, [rsi]
	jne	.label_53
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_97:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
.label_39:
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 0x7d
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	ecx, ebx
	call	error
.label_126:
	nop	
	cmp	ebx, 0x20
	je	.label_56
	lea	rsi, [rsi]
	jmp	.label_53
.label_125:
	cmp	ebx, 9
	jne	.label_53
.label_56:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	rbp, rbp
	call	error
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	jmp	.label_103
.label_100:
	mov	rdi, qword ptr [rip + stdout]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp], OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:.str.23
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_53:
	nop	
	mov	edi, 0x7d
	call	usage
.label_77:
	mov	edi, OFFSET FLAT:.str.76
	nop	
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_81:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	jmp	.label_98
.label_99:
	test	bl, bl
	mov	rsp, rsp
	jne	.label_94
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.78
	jmp	.label_98
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	nop	
	jmp	.label_103
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
.label_103:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_65:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	lea	rsi, [rsi]
	call	error
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	ecx, ebx
	mov	rsp, rsp
	call	error
.label_49:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.92
	jmp	.label_129
.label_101:
	mov	rbp, rbp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 0x7d
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_40:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.96
.label_129:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 0x7d
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_25:
	mov	edi, OFFSET FLAT:.str.70
	nop	
	mov	esi, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	mov	edx, 0x18b
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.build_argv
	call	__assert_fail
.label_108:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.81
.label_98:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 0x7d
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_112:
	call	xalloc_die
.label_11:
	mov	rbp, rbp
	call	xalloc_die
.label_117:
	mov	edi, OFFSET FLAT:.str.82
	mov	esi, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.escape_char
	lea	rsi, [rsi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_151
	call	xstrdup
	mov	r14, rax
	nop	
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_149
	mov	rbp, rbp
	test	bpl, bpl
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	nop	
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	dword ptr [rax]
.label_154:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	call	operand2sig
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_148
	mov	rbp, rbp
	jle	.label_152
	cdqe	
	mov	rcx, qword ptr [rip + signals]
	mov	rbp, rbp
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_154
.label_149:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	jmp	.label_150
.label_151:
	mov	rbp, rbp
	test	bpl, bpl
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	lea	r14d, [rax + rax + 2]
	mov	rbp, rbp
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	
.label_153:
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsi, rbp
	nop	
	call	sig2str
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_155
	mov	rax, qword ptr [rip + signals]
	nop	
	mov	dword ptr [rax + rbx*4], r14d
.label_155:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 0x41
	mov	rbp, rbp
	jne	.label_153
.label_150:
	lea	rdi, [rdi]
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_148:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_152:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_159
	mov	al, byte ptr [rip + sig_mask_changed]
	mov	rsp, rsp
	and	al, 1
	jne	.label_156
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_156:
	mov	rsp, rsp
	mov	byte ptr [rip + sig_mask_changed],  1
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	strtok
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_161
	lea	rsi, [rsi]
	mov	r12d, OFFSET FLAT:block_signals
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:unblock_signals
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	lea	rsi, [rsi]
	cmovne	r13, r12
	lea	rsi, [rsi]
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_158
	nop	
	jle	.label_157
	mov	rdi, r13
	nop	
	mov	esi, ebx
	lea	rsi, [rsi]
	call	sigaddset
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, ebx
	nop	
	call	sigdelset
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	call	strtok
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_160
.label_161:
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	jmp	.label_162
.label_159:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rbp, rbp
	mov	rdi, rbx
	call	sigemptyset
	mov	rsp, rsp
	mov	byte ptr [rip + sig_mask_changed],  1
.label_162:
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_158:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, rbp
	nop	
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_157:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_165
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x24
	mov	rsp, rsp
	jne	.label_165
	lea	rsi, [rsi]
	xor	r12d, r12d
	nop	
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x7b
	jne	.label_164
	movsx	eax, byte ptr [rdi + 2]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, -0x41
	mov	rbp, rbp
	cmp	ecx, 0x39
	nop	
	ja	.label_166
	movabs	rdx, 0x3ffffff03ffffff
	shr	rdx, cl
	mov	rbp, rbp
	and	edx, 1
	movzx	eax, al
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	cmp	eax, 0x5f
	je	.label_168
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_164
	mov	rsp, rsp
	jmp	.label_168
.label_166:
	lea	rsi, [rsi]
	xor	r12d, r12d
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x5f
	jne	.label_164
.label_168:
	lea	rdi, [rdi]
	lea	r14, [rdi + 2]
	lea	rsi, [rsi]
	lea	rsi, [rdi + 3]
	xor	r12d, r12d
	lea	rsi, [rsi]
	movabs	rax, 0x3ffffff03ffffff
	nop	
	jmp	.label_167
	nop	word ptr [rax + rax]
.label_163:
	nop	
	inc	rsi
.label_167:
	mov	cl, byte ptr [rsi]
	movsx	edx, cl
	lea	ebx, [rdx - 0x41]
	lea	rsi, [rsi]
	cmp	ebx, 0x39
	nop	
	ja	.label_170
	lea	rdi, [rdi]
	bt	rax, rbx
	mov	rbp, rbp
	jb	.label_163
.label_170:
	nop	
	add	edx, -0x30
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_163
	movzx	ecx, cl
	cmp	ecx, 0x5f
	lea	rsi, [rsi]
	je	.label_163
	cmp	ecx, 0x7d
	jne	.label_164
	mov	rbp, rbp
	sub	rsi, rdi
	lea	r15, [rsi - 2]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [rip + vnlen]
	mov	rbp, rbp
	jb	.label_169
	dec	rsi
	mov	qword ptr [rip + vnlen],  rsi
	mov	rdi, qword ptr [rip + varname]
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [rip + varname],  rax
.label_169:
	mov	r12, qword ptr [rip + varname]
	mov	rsp, rsp
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_164:
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
.label_165:
	mov	edi, OFFSET FLAT:.str.83
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.scan_varname
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_171
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strtol
	mov	rcx, qword ptr [rsp]
	mov	edi, 0xffffffff
	nop	
	cmp	rcx, r15
	nop	
	je	.label_177
	mov	rsp, rsp
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_177
	lea	rsi, [rsi]
	cmp	dword ptr [rbx], 0
	nop	
	jne	.label_177
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_177
	movsxd	rcx, eax
	cmp	rcx, rax
	nop	
	jne	.label_177
	cmp	eax, 0xfe
	mov	rbp, rbp
	mov	ecx, 0xff
	mov	rbp, rbp
	mov	edi, 0x7f
	cmovg	edi, ecx
	lea	rsi, [rsi]
	and	edi, eax
.label_177:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], edi
	mov	rbp, rbp
	jmp	.label_174
.label_171:
	mov	rsp, rsp
	mov	rdi, r15
	call	xstrdup
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	mov	bpl, byte ptr [r12]
	lea	rsi, [rsi]
	test	bpl, bpl
	lea	rsi, [rsi]
	je	.label_172
	lea	rbx, [r12 + 1]
	nop	word ptr cs:[rax + rax]
.label_175:
	lea	rsi, [rsi]
	movsx	esi, bpl
	nop	
	mov	edi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_181
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_181:
	mov	rsp, rsp
	mov	bpl, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	test	bpl, bpl
	jne	.label_175
.label_172:
	lea	rsi, [rsp + 0xc]
	mov	rdi, r12
	nop	
	call	str2sig
	test	eax, eax
	je	.label_178
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x53
	jne	.label_173
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x49
	mov	rbp, rbp
	jne	.label_173
	movzx	eax, byte ptr [r12 + 2]
	nop	
	cmp	eax, 0x47
	lea	rdi, [rdi]
	jne	.label_173
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	add	rdi, 3
	lea	rsi, [rsp + 0xc]
	nop	
	call	str2sig
	test	eax, eax
	nop	
	je	.label_178
.label_173:
	mov	dword ptr [rsp + 0xc], 0xffffffff
.label_178:
	mov	rsp, rsp
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 0xc]
.label_174:
	test	edi, edi
	js	.label_176
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_179
.label_176:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_180
.label_179:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
.label_180:
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [rip + file_name],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403fa0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_184
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_183
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_183
.label_184:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_185
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_183:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_182
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	mov	rsp, rsp
	call	_exit
.label_185:
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
.label_182:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_186
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_188
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_188
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_187
	nop	
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_187:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_188:
	mov	rsp, rsp
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_186:
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404210
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_189
	test	rdx, rdx
	nop	
	je	.label_189
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_189:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404300
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_190:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_243
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_253]
.label_457:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_458:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_273
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_273
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_289:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_285
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_285:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_289
.label_273:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_245
.label_450:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_245
.label_453:
	lea	rsi, [rsi]
	mov	al, 1
.label_451:
	mov	rbp, rbp
	mov	r12b, 1
.label_454:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_197
	lea	rsi, [rsi]
	mov	cl, al
.label_197:
	mov	rsp, rsp
	mov	al, cl
.label_452:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_205
	test	r10, r10
	je	.label_213
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_215
.label_205:
	xor	ecx, ecx
	jmp	.label_215
.label_455:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_226
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_230
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_237
.label_456:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_245
.label_213:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_215:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_245
.label_226:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_237
.label_230:
	lea	rdi, [rdi]
	mov	eax, 1
.label_237:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_245:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_282
	nop	word ptr cs:[rax + rax]
.label_247:
	nop	
	inc	rdi
.label_282:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_200
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_202
	jmp	.label_207
	nop	dword ptr [rax + rax]
.label_200:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_212
.label_202:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_220
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_224
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_224
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_224:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_264
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_266
	nop	dword ptr [rax + rax]
.label_220:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_266
	nop	word ptr cs:[rax + rax]
.label_264:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_227
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_266
	jmp	.label_209
.label_227:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_266:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_241
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_312]
.label_471:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_191
	mov	rbp, rbp
	jmp	.label_195
.label_475:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_196
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_201
	nop	
	cmp	rbp, 1
	je	.label_195
	xor	r13d, r13d
	jmp	.label_214
.label_464:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_216
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_209
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_233
	mov	al, r14b
	and	al, 1
	jne	.label_229
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_236
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_236:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_248
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_248:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_256
.label_465:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_211
.label_466:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_198
.label_467:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_211
.label_468:
	mov	bl, 0x66
	jmp	.label_211
.label_469:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_198
.label_472:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_278
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_280
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_301
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_301:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_298
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_298:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_305
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_305:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_278:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_214
.label_473:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_194
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_191
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_191
	mov	rbp, rbp
	jmp	.label_206
.label_474:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_208
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_217
	lea	rdi, [rdi]
	jmp	.label_222
.label_241:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_223
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_204:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_255
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_255
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_214
.label_196:
	test	rdi, rdi
	jne	.label_246
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_246
.label_195:
	mov	dl, 1
.label_470:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_276
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_214
.label_216:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_247
	jmp	.label_191
.label_208:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_198
.label_217:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_269
.label_198:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_287
.label_211:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_214
	lea	rsi, [rsi]
	jmp	.label_270
.label_223:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_297
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_297:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_310:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_210
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_219
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_228
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_235
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_263:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_254
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_262
.label_254:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_263
.label_235:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_308
	xor	r13d, r13d
.label_308:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_310
	mov	rsp, rsp
	jmp	.label_204
.label_246:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_214
.label_194:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_191
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_191
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_191
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_295
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_275
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_303
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_307
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_307:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_314
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_314:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_249:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_292
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_292:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_214
.label_191:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_214:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_231
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_240
	lea	rsi, [rsi]
	jmp	.label_244
.label_231:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_244
.label_240:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_250
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_258
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_258:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_269
	mov	rsp, rsp
	jmp	.label_270
.label_250:
	mov	bl, r15b
.label_270:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_209
	nop	
	cmp	r9d, 2
	jne	.label_257
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_257
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_283:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_284
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_284:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_257:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_293
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_293:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_279
.label_201:
	xor	r13d, r13d
	nop	
	jmp	.label_214
.label_255:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_302
	nop	dword ptr [rax + rax]
.label_192:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_302:
	test	cl, cl
	je	.label_311
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_265
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_193
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_193:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_265
	nop	dword ptr [rax]
.label_311:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_209
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_218
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_218
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_221
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_221:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_232:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_306
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_306:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_218:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_268:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_267
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_267:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_272
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_272:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_265:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_269
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_290
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_290
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_294
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_294:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_300
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_300:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_290:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_192
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_192
	nop	word ptr cs:[rax + rax]
.label_269:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_203
	mov	rsp, rsp
	and	al, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_260
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_260:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_203:
	mov	rsp, rsp
	mov	bl, r15b
.label_279:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_239:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_247
.label_233:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_256
.label_229:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_256:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_261
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_261:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_296
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_271
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_299
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_277
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_277:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_281
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_281:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_214
.label_296:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_214
.label_271:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_214
.label_299:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_214
.label_219:
	xor	r13d, r13d
.label_210:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_204
.label_228:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_304
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_259:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_313
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_259
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_204
.label_304:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_204
.label_313:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_204
.label_295:
	xor	r13d, r13d
	jmp	.label_214
.label_275:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_214
.label_207:
	nop	
	mov	r13, rdi
.label_212:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_225
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_238
.label_225:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_242
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_242
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_286
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_242
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_190
.label_242:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_274
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_274
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_274
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_288:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_309
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_309:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_288
.label_274:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_291
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_291
.label_276:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_209
.label_262:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_209
.label_238:
	nop	
	mov	rbp, r13
	jmp	.label_209
.label_287:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_209:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_234:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_291:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_286:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_234
.label_280:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_209
.label_222:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_209
.label_206:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_209
.label_303:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_209
.label_243:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405930
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_315
	mov	qword ptr [rax], rbx
.label_315:
	mov	rax, r14
	mov	rsp, rsp
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
	#Procedure 0x405bc0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_316
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_320:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rip + nslots]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_320
.label_316:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_319
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rip + slotvec0],  0x100
	mov	rsp, rsp
	mov	qword ptr [rip + label_317], OFFSET FLAT:slot0
.label_319:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_318
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_318:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c90

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_327
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_322
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_323
.label_322:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_325
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_326
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_326:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_323:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_324
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_321
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_321:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_324:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_327:
	lea	rdi, [rdi]
	call	abort
.label_325:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f00
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f10
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f40
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f70
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_328
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_328:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406000
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_329
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_329:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060a0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_330
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_330:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406130
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_331:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4061a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_332]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406240
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + label_332]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406350
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063c0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_335
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_335:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4064a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax, qword ptr [rip + label_332]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_336
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_336
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_336:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406530
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_334]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_337
	test	rdx, rdx
	je	.label_337
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_337:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_332]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_334]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_338
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_338
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_338:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_333]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_334]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_339
	test	rsi, rsi
	je	.label_339
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_339:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406700
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406710
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406730
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406750

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406780

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_341
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_343
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_340
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_340
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_340
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_340
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_340
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_340
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_341
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_341
.label_343:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_340
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_340
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_340
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_340
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_340
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_340
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_342
.label_340:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_341:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_342:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_341
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_341
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_350
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_353
.label_350:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_353:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_349
	lea	rsi, [rsi]
	jmp	qword ptr [(r12 * 8) + label_346]
.label_526:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_349:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_345
.label_527:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_528:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_529:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_351
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_348
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_347
.label_532:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_347:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_348:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_351:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_344
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_345:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_352
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_352:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_344:
	mov	rbp, rbp
	call	__fprintf_chk
.label_525:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ce0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_354:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_354
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_358:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_355
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_357
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_356
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_358
.label_356:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406da0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_359
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_359:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_361:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_360
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_362
	nop	dword ptr [rax + rax]
.label_360:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_362:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_363
	inc	r9
	cmp	r9, 0xa
	jb	.label_361
.label_363:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_364
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	nop	
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_366
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_367
.label_366:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_369
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_368
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_368
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_368:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_370
	test	rax, rax
	je	.label_369
.label_370:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_369:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407070

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_371
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_371
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_371:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	nop	
	je	.label_373
.label_372:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_373:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_374
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_378
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_377
.label_374:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_380
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_380:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_375
.label_377:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_376
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_376
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_376:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_379
	test	rax, rax
	mov	rbp, rbp
	je	.label_378
.label_379:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_378:
	call	xalloc_die
.label_375:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_382
	test	rax, rax
	mov	rbp, rbp
	je	.label_381
.label_382:
	pop	rbx
	ret	
.label_381:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4071c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_383
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_386
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_387
	call	free
	xor	eax, eax
	jmp	.label_384
.label_383:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_385
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_387:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_384
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_385
.label_384:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_385:
	mov	rbp, rbp
	call	xalloc_die
.label_386:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407250
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_388
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_389
.label_388:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_389:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_390
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_390
	pop	rcx
	ret	
.label_390:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_392
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_391
.label_392:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_391:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407340

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_393
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_394
.label_393:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_394:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4073a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4073f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_395
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_396
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_396
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_395:
	mov	ecx, 1
.label_396:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407460

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_397
	nop	
	cmp	r15, -2
	jb	.label_397
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_397
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_397:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074f0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	mov	ebp, OFFSET FLAT:label_405
	cmp	eax, 9
	ja	.label_401
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rsp, rsp
	cmp	rax, 0x40
	mov	rbp, rbp
	jg	.label_398
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	nop	
	je	.label_399
	mov	rbp, rbp
	jmp	.label_398
	nop	dword ptr [rax]
.label_401:
	mov	rdi, rbp
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_404
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_401
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	nop	
	mov	r15d, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jle	.label_400
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	mov	rdi, r12
	nop	
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_406
.label_400:
	test	r15d, r15d
	lea	rdi, [rdi]
	jle	.label_398
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_398
	add	r12, 5
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_398
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	nop	
	jg	.label_398
	test	rax, rax
	mov	rbp, rbp
	jg	.label_398
	mov	ecx, r15d
	jmp	.label_402
.label_404:
	lea	rax, [rbx + rbx*2]
	mov	eax, dword ptr [(rax * 4) + numname_table]
	mov	rbp, rbp
	jmp	.label_399
.label_406:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	rdi, r12
	call	strtol
	lea	rsi, [rsi]
	test	rax, rax
	js	.label_398
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	nop	
	test	cl, cl
	jne	.label_398
	sub	r15d, ebp
	movsxd	rcx, r15d
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_403
.label_398:
	mov	eax, 0xffffffff
.label_399:
	lea	rdi, [rdi]
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_403:
	mov	ecx, ebp
.label_402:
	add	rax, rcx
	mov	rbp, rbp
	jmp	.label_399
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	ebp, edi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_411:
	lea	rsi, [rsi]
	mov	eax, eax
	lea	rdi, [rdi]
	lea	rcx, [rax + rax*2]
	lea	rsi, [rsi]
	cmp	dword ptr [(rcx * 4) + numname_table],  ebp
	je	.label_407
	nop	
	lea	ecx, [rax + 1]
	lea	rsi, [rsi]
	lea	rdx, [rcx + rcx*2]
	mov	rbp, rbp
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	mov	rsp, rsp
	je	.label_410
	lea	rdi, [rdi]
	lea	ecx, [rax + 2]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_410
	nop	
	lea	ecx, [rax + 3]
	mov	rsp, rsp
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	lea	rsi, [rsi]
	je	.label_410
	lea	ecx, [rax + 4]
	lea	rdx, [rcx + rcx*2]
	lea	rsi, [rsi]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_410
	mov	rbp, rbp
	add	eax, 5
	cmp	eax, 0x23
	jb	.label_411
	call	__libc_current_sigrtmin
	mov	rbp, rbp
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	lea	rsi, [rsi]
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	jg	.label_409
	lea	rsi, [rsi]
	cmp	eax, ebp
	jl	.label_409
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, r14d
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_408
	mov	word ptr [r15 + 4], 0x58
	mov	rbp, rbp
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_412
.label_407:
	mov	rbp, rbp
	mov	rcx, rax
.label_410:
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	lea	rsi, qword ptr [(rax * 4) + label_405]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strcpy
	nop	
	xor	ebx, ebx
.label_409:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_408:
	lea	rsi, [rsi]
	mov	word ptr [r15 + 4], 0x4e
	lea	rdi, [rdi]
	mov	dword ptr [r15], 0x494d5452
.label_412:
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	cmp	r14d, ebp
	mov	rsp, rsp
	je	.label_409
	nop	
	sub	ebp, r14d
	mov	rsp, rsp
	add	r15, 5
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	esi, 1
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
	jmp	.label_409
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407860

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_413
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_414
	test	cl, cl
	mov	rsp, rsp
	jne	.label_414
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_414
.label_413:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_414
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_414:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_416
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_415
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_417
.label_415:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_416
.label_417:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_416:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407940

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_418
	nop	
	mov	rax, rcx
.label_418:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_419
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_421
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_419
.label_421:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_419
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_420
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_420:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_419:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x407a30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_422
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_422
	test	byte ptr [rbx + 1], 1
	je	.label_422
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_422:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a70

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_423
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_424
.label_423:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_424:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_425
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_425:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407b20

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]